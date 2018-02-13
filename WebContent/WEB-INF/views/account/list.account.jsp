<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Contas</title>        
    </head>
    <body>
        <table style="height: 10px; width: 775px;" border="1">
            <tr>
                <th>Código</th>
                <th>Descrição</th>
                <th>Valor</th>
                <th>Tipo</th>
                <th>Paga?</th>
                <th>Data de pagamento</th>
                <th>Ações</th>
            </tr>

            <c:forEach items="${contas}" var="conta">
                <tr>
                    <td>${conta.value.id}</td>
                    <td>${conta.value.descricao}</td>
                    <td>${conta.value.valor}</td>
                    <td>${conta.value.tipo}</td>
                    <td id="conta_${conta.value.id}">
                        <c:if test="${conta.value.paga eq false}">
                            Não paga
                        </c:if>
                        <c:if test="${conta.value.paga eq true }">
                            Paga!
                        </c:if>
                    </td>
                    <td><fmt:formatDate value="${conta.value.dataPagamento.time}" pattern="dd/MM/yyyy"/></td>
                    <td>
                        <a href="remove.account?id=${conta.value.id}">Deletar</a> | 
                        <c:if test="${conta.value.paga eq false}">
                            <a href="pay.account?id=${conta.value.id}">
                                Pagar agora!
                            </a>
                        </c:if>
                        <c:if test="${conta.value.paga eq true }">
                            Paga!
                        </c:if>
                    </td>                    
                </tr>        
            </c:forEach>
        </table>

    </body>
</html>
