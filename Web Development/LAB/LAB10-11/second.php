<!DOCTYPE html>
<?php
    setcookie('username', 'Arjun Vankani', time() - 3600);
    $theme = $_COOKIE['preferred_theme'];

?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PHP Cookies</title>
</head>

<body style="background-color: <?php echo $theme; ?> ; color: white; text-align: center;">
    <?php
        echo "<h3>username: " . $_COOKIE['username'] . "<br/></h3>";
        echo "<h3>Preferred theme is " . $theme . "</h3>";
    ?>

</body>

</html>
