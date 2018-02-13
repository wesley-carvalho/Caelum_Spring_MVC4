<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Página de Login das Contas</h2>
        <form action="log.into" method="post">
            Login: <input type="text" name="login" /> <br />
            Senha: <input type="password" name="senha" /> <br />
            <input type="submit" value="Entrar nas contas" />
        </form>
    </body>
</html>
