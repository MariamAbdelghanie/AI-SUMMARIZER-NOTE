<?php
// Start session
session_start();

// Include database connection
include 'db.php';

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    die("You must be logged in to upload a file.");
}

// Get user ID from session
$userId = $_SESSION['user_id'];

// Validate and process the uploaded file
if (isset($_FILES["file"]) && $_FILES["file"]["error"] === UPLOAD_ERR_OK) {
    $fileName = basename($_FILES["file"]["name"]);
    $fileType = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));
    $uploadDir = "../Uploads/" . $fileName;

    // Allowed file types
    $allowedTypes = ['pdf', 'docx', 'mp3'];
    if (!in_array($fileType, $allowedTypes)) {
        echo "<script>alert('Only PDF, DOCX, and MP3 files are allowed.'); window.location.href='../summarize.html?' + new Date().getTime();</script>";
        exit;
    }

    // Validate file size (max 10MB)
    $maxFileSize = 10 * 1024 * 1024; // 10MB
    if ($_FILES["file"]["size"] > $maxFileSize) {
        echo "<script>alert('File size exceeds 10MB limit.'); window.location.href='../summarize.html?' + new Date().getTime();</script>";
        exit;
    }

    // Validate MIME type for security
    $finfo = finfo_open(FILEINFO_MIME_TYPE);
    $mime = finfo_file($finfo, $_FILES["file"]["tmp_name"]);
    $allowedMimes = [
        'pdf' => 'application/pdf',
        'docx' => 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
        'mp3' => 'audio/mpeg'
    ];
    if (!in_array($mime, $allowedMimes)) {
        echo "<script>alert('Invalid file type detected.'); window.location.href='../Summarize.html?' + new Date().getTime();</script>";
        exit;
    }
    finfo_close($finfo);

    // Upload file to the server
    if (move_uploaded_file($_FILES["file"]["tmp_name"], $uploadDir)) {
        $summary = '';

        // Process summarization for non-MP3 files
        if ($fileType !== 'mp3') {
            $pythonScript = escapeshellarg(dirname(__DIR__) . '/summarize_file.py');
            $filePath = escapeshellarg($uploadDir);
            // Use the correct Python path
            $pythonPath = "C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\python.exe";
            $command = "\"$pythonPath\" $pythonScript $filePath 2>&1";
            $summary = shell_exec($command);

            // Log the command and output for debugging
            file_put_contents('debug.log', "Command: $command\nOutput: $summary\n", FILE_APPEND);

            // Check if summary generation failed
            if (empty($summary) || $summary === "Failed to generate summary." || strpos($summary, "Error") !== false) {
                $summary = "Failed to generate summary. The file may not contain readable text.";
            }
        } else {
            $summary = "Audio summarization is not yet supported. Please upload a PDF or DOCX file.";
        }

        // Insert file details into the database with created_at
        $stmt = $conn->prepare("INSERT INTO files (user_id, file_name, file_type, summary, created_at) VALUES (?, ?, ?, ?, NOW())");
        if ($stmt) {
            $stmt->bind_param("isss", $userId, $fileName, $fileType, $summary);
            if (!$stmt->execute()) {
                file_put_contents('debug.log', "Database error: " . $stmt->error . "\n", FILE_APPEND);
                echo "<script>alert('Failed to save summary to database.'); window.location.href='../summarize.html?' + new Date().getTime();</script>";
                exit;
            }
            $stmt->close();
        } else {
            file_put_contents('debug.log', "Prepare statement failed: " . $conn->error . "\n", FILE_APPEND);
            echo "<script>alert('Database query failed.'); window.location.href='../summarize.html?' + new Date().getTime();</script>";
            exit;
        }

        // Success message and redirect
        echo "<script>alert('File uploaded successfully'); window.location.href='../summarize.html?' + new Date().getTime();</script>";
    } else {
        // Log the upload error for debugging
        $uploadError = $_FILES["file"]["error"];
        file_put_contents('debug.log', "Upload error: $uploadError\n", FILE_APPEND);
        echo "<script>alert('Failed to upload file. Error code: $uploadError'); window.location.href='../summarize.html?' + new Date().getTime();</script>";
    }
} else {
    // Handle cases where no file was uploaded or an error occurred
    $errorMessage = isset($_FILES["file"]) ? $_FILES["file"]["error"] : "No file selected.";
    file_put_contents('debug.log', "File upload error: $errorMessage\n", FILE_APPEND);
    echo "<script>alert('No file uploaded or an error occurred.'); window.location.href='../summarize.html?' + new Date().getTime();</script>";
}

// Close database connection
$conn->close();
?>

