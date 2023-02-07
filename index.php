<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>studentPortal</title>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.php">STUDENT RECORDS</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.php">Upload Excel</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="container my-5">
    <h1 class="text-center">Welcome to the Upload portal</h1>
    <p class="lead text-center mt-5">Attach your file (* Only Excel files).</p>
    <?php

// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Check if a file was uploaded
  if (isset($_FILES["excel_file"])) {
    $file = $_FILES["excel_file"];

    // Ensure the uploaded file is an Excel document
    $allowed_types = ["application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"];
    if (in_array($file["type"], $allowed_types)) {
      // Move the uploaded file to a desired location
      move_uploaded_file($file["tmp_name"], "uploads/" . $file["name"]);

      // Connect to the database
      $db = mysqli_connect("localhost", "root", "", "excelupload");

      // Read the data from the Excel document
      require 'Classes/PHPExcel/IOFactory.php';
      $objPHPExcel = PHPExcel_IOFactory::load("uploads/" . $file["name"]);
      $sheet = $objPHPExcel->getSheet(0);
      $highestRow = $sheet->getHighestRow();
      $highestColumn = $sheet->getHighestColumn();
      for ($row = 1; $row <= $highestRow; $row++) {
        $rowData = $sheet->rangeToArray('A' . $row . ':' . $highestColumn . $row, NULL, TRUE, FALSE);
        $sql = "INSERT INTO student (name, mark, grade) VALUES ('" . $rowData[0][0] . "', '" . $rowData[0][1] . "', '" . $rowData[0][2] . "')";
        if (mysqli_query($db, $sql)) {
          //echo "Row " . $row . " inserted successfully.<br>";
        } 
        else {
          echo "Error inserting row " . $row . ": " . mysqli_error($db) . "<br>";
          break;
        }
      }
      ?><div class="alert alert-success"><?php echo "Upload successfull";?></div>
      <?php
      mysqli_close($db);
    
    }
      // Send an email after inserting the data into the database
      $to = 'misvan24@gmail.com';
//
            // *** Subject Email ***
            $subject = 'student records test';
            //
            // *** Content Email ***
            $content = 'new records have been uploaded';
            //
            //*** Head Email ***
            $headers = "From:misvan24@gmail.com \r\n";
            //
            //*** Show the result... ***
            if (mail($to, $subject, $content, $headers))
            {
                echo "Check your email for an update !!!";
            } 
            else 
            {
                echo "ERROR !! couldnt send mail";
            }
  }


}

?>

 <div class="text-center mt-5">
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
        <input type="file" name="excel_file">
        <input type="submit" value="Upload">
      </form>
</div>

  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>