<?php
include_once("code.php");
$link = mysqli_connect("localhost","root","","demodb");

if($link === false){
die("ERROR: Could not connect. " . mysqli_connect_error());
}



$title = isset($_POST['title']) ? $_POST['title'] : '';
$docname = isset($_POST['docname']) ? $_POST['docname'] : '';
$content = isset($_POST['content']) ? $_POST['content'] : '';

$sql = mysqli_query($link,"INSERT INTO visits (Title, DocName, Issue) VALUES ('$title','$docname', '$content')");

if(!$sql)
    {
        echo mysqli_error();
    }
    else
    {
        echo "Records added successfully.";
    }

mysqli_close($link);
?>