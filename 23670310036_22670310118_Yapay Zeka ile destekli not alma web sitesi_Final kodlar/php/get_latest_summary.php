<?php
session_start();
include 'db.php';

// Initialize session variable to track if a file was uploaded in this session
if (!isset($_SESSION['file_uploaded'])) {
    $_SESSION['file_uploaded'] = false;
}

if (isset($_SESSION['user_id']) && isset($_GET['user_id'])) {
    $userId = $_SESSION['user_id'];

    // Check if a file was uploaded in this session
    if ($_SESSION['file_uploaded']) {
        // Retrieve the latest summary based on created_at only if uploaded in this session
        $stmt = $conn->prepare("SELECT file_name, summary FROM files WHERE user_id = ? ORDER BY created_at DESC LIMIT 1");
        if ($stmt) {
            $stmt->bind_param("i", $userId);
            $stmt->execute();
            $stmt->bind_result($fileName, $summary);
            if ($stmt->fetch()) {
                echo "<h4 class='text-lg font-medium mb-2 text-gray-900'>File: " . htmlspecialchars($fileName) . "</h4>";
                echo "<p class='text-gray-700'>" . htmlspecialchars($summary) . "</p>";
            } else {
                echo ""; // Empty if no summary exists
            }
            $stmt->close();
        } else {
            echo "<p class='text-gray-600'>Database query failed.</p>";
        }
    } else {
        echo ""; // Empty if no file was uploaded in this session
    }

    // Reset the session variable if the user logs out or session ends
    if (isset($_GET['logout'])) {
        $_SESSION['file_uploaded'] = false;
        session_destroy();
        echo ""; // Ensure the summary area is cleared
    }
    $conn->close();
} else {
    echo "<p class='text-gray-600'>Please log in to view your summaries.</p>";
}
?>
