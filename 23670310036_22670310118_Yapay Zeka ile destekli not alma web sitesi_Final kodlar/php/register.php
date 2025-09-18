<?php
include 'db.php';

$name = $_POST['name'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);

// التحقق من البريد الإلكتروني
$stmt_check = $conn->prepare("SELECT id FROM users WHERE email = ?");
$stmt_check->bind_param("s", $email);
$stmt_check->execute();
$stmt_check->store_result();

if ($stmt_check->num_rows > 0) {
  echo "<script>alert('Email already exists'); window.location.href='../register.html';</script>";
  exit;
}

// إدخال المستخدم في قاعدة البيانات
$stmt = $conn->prepare("INSERT INTO users (name, email, password) VALUES (?, ?, ?)");
$stmt->bind_param("sss", $name, $email, $password);

if ($stmt->execute()) {
  echo "<script>alert('Registration successful!'); window.location.href='../login.html';</script>";
} else {
  echo "<script>alert('Error during registration'); window.location.href='../register.html';</script>";
}

$stmt->close();
$conn->close();
?>

