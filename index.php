<?php   

$local = "localhost";
$login = "root";
$senha = "";
$banco = "projeto";

$abrir_porta = mysqli_connect($local, $login, $senha, $banco);

// Check connection
if (!$abrir_porta) {
    die("Connection failed: " . mysqli_connect_error());
}

$query = "SELECT * FROM Alunos";
$resposta = mysqli_query($abrir_porta, $query);

// Check if the query was successful
if ($resposta) {
    while ($info_do_banco = mysqli_fetch_array($resposta)) {
        echo "NOME: " . $info_do_banco["nome_aluno"] . "<br>";
    }
} else {
    echo "Error: " . mysqli_error($abrir_porta);
}

// Close the connection
mysqli_close($abrir_porta);

?>
