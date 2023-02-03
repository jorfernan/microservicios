<h1>Hello Cloud Master!</h1>
<h4>Attempting MySQL connection from php...</h4>
<?php 
$host = 'db';
$user = 'prueba';
$pass = '1234';
$db = 'microservicios';

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected to MySQL database (".$db.") successfully!";
?>

