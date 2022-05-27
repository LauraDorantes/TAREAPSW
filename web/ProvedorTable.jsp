<%-- 
    Document   : ProvedorTable
    Created on : 13/05/2022, 01:13:16 AM
    Author     : gerdoc
--%>

<%@page import="org.gerdoc.dao.Provedor"%>
<%@page import="org.gerdoc.helper.ProvedorHelper"%>
<%@page import="java.util.List"%>
<div class="row">
    <a href="?action=nuevo">
        <button type="button" class="btn btn-outline-primary" >Nuevo</button>
    </a>
    <br/><br/>
</div>
<%
    List<Provedor>provedorList = null;
    provedorList = new ProvedorHelper( ).getList( );
    if( provedorList == null || provedorList.size() == 0 )
    {
%>
        <div class="row mt-4">
            <p>Lista provedor sin datos</p>
        </div>
<%            
        return;
    }
%>
        <div class="row">
            <table class="table">
                <thead class="table-primary">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                </thead>
<%
    for( Provedor provedor : provedorList)
    {
%>
                <tbody>
                    <tr>
                        <td>
                            <%=provedor.getId()%>
                        </td>
                        <td>
                            <%=provedor.getNombre()%>
                        </td>
                    </tr>
                </tbody>
<%
    }
%>
            </table>
        </div>