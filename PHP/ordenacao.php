<?php 

echo '<h1>Ordenacao</h1>';

$array = [ 
    'z',
    'world',        
    'hello'
];

echo '<h2>Sort</h2>';
echo '<pre>'; print_r($array); echo '</pre>';
sort($array);
echo '<pre>'; print_r($array); echo '</pre>';

?>
