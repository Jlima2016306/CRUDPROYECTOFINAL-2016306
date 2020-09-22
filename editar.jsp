<%-- 
    Document   : editar
    Created on : 15/09/2020, 09:01:35 PM
    Author     : Admin
--%>

<%@page import="modelo.Persona"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Editar</title>
    </head>
    <body>
        <div>
            <div>
                <%
                    PersonaDAO nuevaPersonaDao = new PersonaDAO();
                    int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
                    Persona nuevaPersona = (Persona)nuevaPersonaDao.list(codPersona);
                %>
                <h1>Modificar Persona</h1>
                <form>
                    <strong>DPI:</strong>
                    <input type="text" name="txtDPI" value="<%= nuevaPersona.getDPI() %>"><br>
                    <strong>Nombre:</strong>
                    <input type="text" name="txtNombre" value="<%= nuevaPersona.getNombrePersona() %>"><br>
                    <input type="hidden" name="txtCodigoPersona" value="<%= nuevaPersona.getCodigoPersona() %>"><br>
                    <input type="submit" name="accion" value="Actualizar"><br>
                </form>
            </div>
        </div>
    </body>
</html>
