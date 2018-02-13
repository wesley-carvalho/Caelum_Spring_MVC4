<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Página inicial da Lista de Contas</h2>
        <p>Bem vindo, ${usuarioLogado.login}</p>
        <p><a href="add.account">Clique aqui</a> para adicionar conta.</p>
        <p><a href="list.account">Clique aqui</a> para acessar a lista de contas.</p>
        <p><a href="#">Clique aqui</a> para adicionar usuário.</p>
        <p><a href="#">Clique aqui</a> para acessar a lista de usuários.</p>
        <p><a href="logout">Logout</a></p>
    </body>
</body>
</html>
