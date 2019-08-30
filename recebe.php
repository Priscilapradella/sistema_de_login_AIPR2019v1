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
        $nomeUsuario = verificar_entrada($_POST['nomeUsuário']);
        $emailUsuario = verificar_entrada($_POST['emailUsuário']);
        $senhaUsuario = verificar_entrada($_POST['senhaUsuário']);
        $senhaConfirma = verificar_entrada($_POST['senhaConfirma']);
        $concordar = $_POST['concordar'];
        $dataCriacao = date("Y-m-d H:i:s");

        $senha = sha1($senhaUsuario);
        $senhaC = sha1($senhaConfirma);

        if($senha != $senhaC){
            echo "<h1>As senhas não conferem</h1>";
            exit();
        }else{
            $sql = $conecta->prepare("SELECT nomeUsuario, senha FROM
            usuario WHERE nomeUsuario = ? OR email = ?");
            $sql->bind_param("ss",$nomeUsuario, $emailUsuario);
            $sql->execute();
            $resultado = $sql->get_result();
            $linha = $resultado->fetch_array(MYSQLI_ASSOC);
            if($linha['nomeUsuario'] == $nomeUsuario){
                echo "<p>Nome de usuário indisponível, tente outro.</p>";
            }elseif($linha['email'] == $nomeUsuario){
                echo "<p>E-mail já em uso, tente outro</p>";
            }else{
                $sql = $conecta->prepare("INSERT into usuario
                (nome, nomeUsuario, email, senha, dataCriacao) values(?,?,?,?,?)");
                $sql->bind_param("sssss",$nomeCompleto, $nomeUsuario,
                $emailUsuario, $senha, $dataCriacao);
                if($sql->execute()){
                    echo "<p>Registro com sucesso</p>";
                }else{
                    echo"<p>Algo deu errado. Tente outra vez.</p>";
                }
            } 
        }
    }else{
    echo "<h1 style='color:red'>
    Esta página não pode ser acessada diretamente</h1>";

}