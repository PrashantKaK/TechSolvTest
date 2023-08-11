<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fullName = $_POST["fullName"];
    $phoneNumber = $_POST["phoneNumber"];
    $email = $_POST["email"];
    $subject = $_POST["subject"];
    $message = $_POST["message"];

    // Validating Form Input
    $errors = array();
    if (empty($fullName)) {
        $errors[] = "Full Name is required.";
    }
    if (empty($phoneNumber)) {
        $errors[] = "Phone Number is required.";
    }
    if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "Valid Email is required.";
    }
    if (empty($subject)) {
        $errors[] = "Subject is required.";
    }
    if (empty($message)) {
        $errors[] = "Message is required.";
    }

    if (count($errors) === 0) {
        // Connecting to Database
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "techsolvdatabase";

        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Insert data into database
        $ipAddress = $_SERVER['REMOTE_ADDR'];
        $timestamp = date('Y-m-d H:i:s');

        $sql = "INSERT INTO contact_form (Name, PhoneNo, Email, Subject, Message, UserIp, TimeStamp) VALUES ('$fullName', '$phoneNumber', '$email', '$subject', '$message', '$ipAddress', '$timestamp')";

        // Configure SMTP settings for secure connection (TLS)
        ini_set("SMTP", "smtp.gmail.com");
        ini_set("smtp_port", "587");
        ini_set("sendmail_from", "kakprashant@gmail.com");
        ini_set("smtp_ssl", "tls");


        if ($conn->query($sql) === TRUE) {
            // Send email notification
            $to = "test@techsolvitservice.com";
            $subject = "New Contact Form Submission";
            $emailMessage = "You have received a new contact form submission:\n\nFull Name: $fullName\nPhone Number: $phoneNumber\nEmail: $email\nSubject: $subject\nMessage: $message";
            $headers = "From: $email";

            mail($to, $subject, $emailMessage, $headers);

            echo "Form submitted successfully.";
            


        } else {
            // echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();
    } else {
        // Display validation errors
        foreach ($errors as $error) {
            echo $error . "<br>";
        }
    }
}
