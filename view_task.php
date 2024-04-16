<?php
$conn = new mysqli("localhost", "root", "", "etmsh");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM file";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<style>
            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
            }

            th, td {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            th {
                background-color: #f2f2f2;
            }

            a {
                text-decoration: none;
                color: #007bff;
                font-weight: bold;
            }

            a:hover {
                text-decoration: underline;
            }
          </style>";

    echo "<table>";
    echo "<tr><th>ID</th><th>Text</th><th>File Path</th><th>Action</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>{$row['id']}</td>";
        echo "<td>{$row['text_column']}</td>";
        echo "<td>{$row['file_path_column']}</td>";
        echo "<td><a href='{$row['file_path_column']}' target='_blank'>Open File</a></td>";
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "No data found.";
}


$conn->close();
?>
