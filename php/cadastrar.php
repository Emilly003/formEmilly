<?php
include('conexao.php');

$Nome = $_POST["NomeCompleto"];
$Email = $_POST["Email"];
$Senha = $_POST["Senha"];
$Usuario = $_POST["Usuario"];
$CPF = $_POST['CPF'];
$DataDNascimento = $_POST["DataDeNascimento"];
$Genero = $_POST["Genero"];
$NumeroDeTelefone = $_POST["NumeroDeTelefone"];
$UF = $_POST["UF"];
$Cidade = $_POST["Cidade"];
$Logradouro = $_POST["Logradouro"];
$Numero = $_POST["Numero"];
$Complemento = $_POST["Complemento"];

$cadastrar ="INSERT INTO usuario (Nome, Email, Senha, Usuario, Genero, DataDeNascimento, CPF, Cidade, NumeroDeTelefone, UF, Logradouro, Numero, Complemento)
 VALUES ('$Nome','$Email', '$Senha', '$Usuario', '$Genero', '$DataDNascimento', '$CPF ', ' $Cidade',  '$NumeroDeTelefone', '$UF', '$Logradouro', '$Numero', '$Complemento')";
 
if(mysqli_query($conn, $cadastrar)){
    echo "<h1>Novo cadastro realizado</h1><br>";
}else{
    echo "ERROR: " . $cadastrar . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

?>