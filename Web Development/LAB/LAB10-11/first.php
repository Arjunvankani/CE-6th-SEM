<!DOCTYPE html>
<?php 
    setcookie('preferred_theme', 'black', time() + (86400 * 20));
    setcookie('username', 'Arjun Vankani', time() + (86400 * 20));
?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PHP Cookies</title>
</head>

<body style="text-align: center;">
    <form action="second.php">
        <input type="submit" name="submit">
    </form>
    <?php
        if(isset($_COOKIE['preferred_theme']) && isset($_COOKIE['username'])) {
           echo "<script>alert('Cookies have been set successfully...')</script>";
           echo "<h3>Username: " . $_COOKIE['username'] . "<br/></h3>";
           echo "<h3>Preferred theme: " . $_COOKIE['preferred_theme'] . "<br/></h3>";
           
        }
    ?>
</body>

</html>
