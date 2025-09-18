<?php
session_start();
include 'db.php';

$email = $_POST['email'];
$password = $_POST['password'];

$stmt = $conn->prepare("SELECT id, password FROM users WHERE email = ?");
$stmt->bind_param("s", $email);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($id, $hashed_password);

if ($stmt->fetch() && password_verify($password, $hashed_password)) {
  $_SESSION['user_id'] = $id;
  echo "<script>window.location.href='../summarize.html';</script>";
} else {
  echo "<script>alert('Invalid email or password'); window.location.href='../login.html';</script>";
}

$stmt->close();
$conn->close();
?>

