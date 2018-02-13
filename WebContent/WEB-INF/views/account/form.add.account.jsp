<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Conta</title>
    </head>
    <body>
        <h3>Adicionar Contas</h3>
        <form action="add.account" method="post">

            Descrição: <br/>
            <textarea name="descricao" rows="5" cols="100"></textarea>
            <form:errors path="conta.descricao" />
            <br/>

            Valor: <br/>
            <input type="text" name="valor" /><br/>            

            Tipo: <br/>
            <select name="tipo">
                <option value="ENTRADA">Entrada</option>
                <option value="SAIDA">Saída</option>
            </select>
            <br/><br/>

            <input type="submit" value="Adicionar"/>
        </form>
    </body>
</html>
