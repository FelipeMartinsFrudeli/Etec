<?php 

$array = ["hello", "world"];

$array_associativo = [
    "hello" => "world"
];

echo "<h2>In Array</h2>";
echo "<pre>"; print_r(in_array("world", $array_associativo)); echo "</pre>";

echo "<hr><h2>Array search</h2>";
echo "<pre>"; print_r(array_search("world", $array_associativo)); echo "</pre>";

echo "<hr><h2>Isset</h2>";
echo "<pre>"; var_dump(isset($array[0])); echo "</pre>";

echo "<hr><h2>Array Key Exists</h2>";
echo "<pre>"; var_dump(array_key_exists("hello", $array_associativo)); echo "</pre>";

echo "<hr><h2>Array Key First</h2>";
echo "<pre>"; echo(array_key_first($array_associativo)); echo "</pre>";

echo "<hr><h2>Array Key Last</h2>";
echo "<pre>"; echo(array_key_last($array_associativo)); echo "</pre>";

echo "<hr><h2>Flip array</h2>";
echo "<pre>"; var_dump(array_flip($array)); echo "</pre>";

echo "<hr><h2>Implode</h2>";
echo "<pre>"; var_dump(implode(",", $array)); echo "</pre>";

echo "<hr><h2>Explode</h2>";
echo "<pre>"; var_dump(explode(",", "var1,var2,var3")); echo "</pre>";
?>
