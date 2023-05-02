<!DOCTYPE html>
<html>
<head>
	<title>search</title>
</head>
<link rel="stylesheet" type="text/css" href="css/search.css">
<body>
	<center>
		<h1>search</h1>
 		<table border="1">
 			
 			<tr>
 				<td>From</td>
 				<td>To</td>
 				<td>Date</td>
 				<td>Time</td>
 				<td>Meridiem</td>
 			</tr> <br>
 		


<?php
$connection = mysqli_connect("localhost","root","","bus booking");
$db = mysqli_select_db($connection, 'admin');
if(isset($_POST['search']))
{
	$From = $_POST['From'];
	$To = $_POST['To'];

	$query = "select * from admin where From='$From' and To='$To'";
	$query_run = mysqli_query($connection, $query);

	while ($row = mysqli_fetch_array($query_run))
	 {
	 	?>
	 	<tr>
	 		<td> <?php echo $row['From']; ?></td>
	 		<td> <?php echo $row['To']; ?></td>
	 		<td> <?php echo $row['Date']; ?></td>
	 		<td> <?php echo $row['Time']; ?></td>
	 		<td> <?php echo $row['Meridiem']; ?></td>
	 	</tr>
	 	<?php
	}
}
?>
</table>
</center>
</body>
</html>