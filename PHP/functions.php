<?php

function soma($a, $b) {
    echo $a + $b;
}

// Pascal Case
function SubtrairNumeros($a, $b) {
    echo $a - $b;
}

// Snake Case
function multiplicar_numeros($a, $b) {
    echo $a * $b;
}

// Camel Case
function dividirNumero($a, $b) {
    echo $a / $b;
}

function recepicionarUsuario($nome = "User") {
    echo "Ola $nome <br>";
}

function saudarPessoa($nome = null) {
    echo "Oi $nome <br>";
}

echo soma(1, 2)."<br>";
echo SubtrairNumeros(1, 2)."<br>";
echo multiplicar_numeros(1, 2)."<br>";
echo dividirNumero(1, 2)."<br>";

recepicionarUsuario();
saudarPessoa();
saudarPessoa('user2');
?>


