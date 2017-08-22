<?php 

$text = 'PHP Tutorial';
$text = preg_replace('/(\b[a-z])/i','<span style="color:purple;">\1</span>',$text);
echo $text . "<br>";

?>