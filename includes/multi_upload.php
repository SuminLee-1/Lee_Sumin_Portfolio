<?php
echo $_FILES['uploaded']['tmp_name'][0];
echo $_FILES['uploaded']['tmp_name'][1];
$numings = count($_FILES['uploaded']['name']);


$count = 1;
for ($i=0;$i < $numings; $i++) {
   move_uploaded_file($_FILES['uploaded']['tmp_name'][$i], "destination_path/".$_FILES['uploaded']['name'][$i]);
   $count++;
}
?>
