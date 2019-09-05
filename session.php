<?php 
session_start();
require_once 'configDB.php';

if(isset($_SESSION['nomeUsuario'])){
    echo "usuário logado";
    $usuario = $SESSION['nomeUsuario'];
    $sql = $conecta->prepare("SELECT * FROM usuario WHERE
    nome usuario = ?")
    $slq->bind_parem("s", $usuario);
    $sql->execute();
    $resultado = $sql->get_result();
    $linha = resultado->fetch_array(MYSQLI_ASSOC);

    $nome = $linha['nome'];
    $email = $linha['email'];
    $dataCriacao = $linha['dataCriacao'];
}else{
    //kick
    header("location: index.php");
}