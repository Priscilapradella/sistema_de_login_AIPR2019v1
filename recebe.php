<?php
require_once "configDB.php";

function verificar_entrada($entrada){
    $saida = trim($entrada);
    $saida = stripslashes($saida);
    $saida = htmlspecialchars($saida);
    return $saida;
}


if(isset($_POST['action']) && $_POST['action'] == 'cadastro'){
        $nomeCompleto = verificar_entrada($_POST['nomeCompleto']);
        $nomeUsuário = verificar_entrada($_POST['nomeUsuário']);
        $emailUsuário = verificar_entrada($_POST['emailUsuário']);
        $senhaUsuário = verificar_entrada($_POST['senhaUsuário']);
        $senhaConfirma = verificar_entrada($_POST['senhaConfirma']);
        $concordar = $_POST['concordar'];
        $dataCriacao = date("Y-m-d H:i:s");

        $senha = sha1($senhaUsuário);
        $senhaC = sha1($senhaConfirma);


        echo "<h5>Nome completo: $nomeCompleto</h5>";
        echo "<h5>Nome Usuário: $nomeUsuário</h5>";
        echo "<h5>E-mail Usuário: $emailUsuário </h5>";
        echo "<h5>Senha Usuário: $senhaUsuário</h5>";
        echo "<h5>Senha Confirma: $senhaConfirma</h5>";
        echo "<h5>Concorda: $concordar</h5>";
        echo "<h5>Data de Criação: $dataCriacao</h5>";

        if($senha != $senhaC){
            echo "<h1>As senhas não conferem</h1>";
            exit();
        }else{
            echo "<h5> senha codificada: $senha</h5>";
            
        }
}else{
    echo "<h1 style='color:red'>
    Esta página não pode ser acessada diretamente</h1>";

}