<%-- 
    Document   : listar
    Created on : 15/09/2020, 09:01:54 PM
    Author     : Admin
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Persona"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina de Listar</title>
    </head>
    <body>
        <h1>Personas</h1>
        <a href="Controlador?accion=add">Agregar Nuevo</a>
        <br><br>
        <table>
            <thead>
                <tr>
                    <td>CODIGO PERSONA</td>
                    <td>DPI</td>
                    <td>NOMBRES</td>
                    <td>ACCIONES</td>
                </tr>
            </thead>
            <%
                PersonaDAO dao = new PersonaDAO();
                List<Persona> listaPersona = dao.listar();
                Iterator<Persona> iterator = listaPersona.iterator();
                Persona per = null;
                while (iterator.hasNext()){
                    per = iterator.next();
                }
            %>
            <tbody>
                <tr>
                    <td><%=per.getCodigoPersona()%></td>
                    <td><%=per.getDPI()%></td>
                    <td><%=per.getNombrePersona()%></td>
                    <td>
                        <a href="Controlador?accion=editar&codigoPersona=<%= per.getCodigoPersona()%>">Edit</a>
                        <a href="Controlador?accion=eliminar&codigoPersona=<%= per.getCodigoPersona()%>">Remove</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </body>
</html>
