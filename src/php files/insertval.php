<?php
$link=mysqli_connect("localhost","root","","demodb");

if($link === false){
die("ERROR: Could not connect. " . mysqli_connect_error());
}



$title = mysqli_real_escape_string($link, $_REQUEST['title']);
$docname = mysqli_real_escape_string($link, $_REQUEST['docname']);
$content = mysqli_real_escape_string($link, $_REQUEST['content']);

$sql = "INSERT INTO 'visits'('Title', 'DocName', 'Issue') VALUES ('$title','$docname', '$content')";

mysqli_close($link);
?>