<?php 
$url=parse_url('http://www.lotusbetaanalytics.com/php-exercises/php-basic-exercises.php');
echo 'Scheme : '.$url['scheme']."<br>";
echo 'Host : '.$url['host']."<br>";
echo 'Path : '.$url['path']."<br>";
?>