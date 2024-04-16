<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $text = $_POST["text"];

    $targetDirectory = "uploads/";
    $targetFile = $targetDirectory . basename($_FILES["file"]["name"]);
    
    if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
        $conn = new mysqli("localhost", "root", "", "etmsh");

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
      

        $text = $conn->real_escape_string($text);
        $targetFile = $conn->real_escape_string($targetFile);

        $sql = "INSERT INTO file (text_column, file_path_column) VALUES ('$text', '$targetFile')";

        if ($conn->query($sql) === TRUE) {
            echo "Data saved successfully.";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();
    } else {
        echo "Error uploading file.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Example</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="file.php" method="post" enctype="multipart/form-data">
        <label for="text">Text:</label>
        <input type="text" name="text" id="text" required>

        <label for="file">File:</label>
        <input type="file" name="file" id="file" accept=".txt">

        <input type="submit" value="Submit">
    </form>
</body>
</html>

