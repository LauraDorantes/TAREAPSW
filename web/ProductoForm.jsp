<%-- 
    Document   : UnoForm
    Created on : 13/05/2022, 01:34:33 AM
    Author     : gerdoc
--%>
<%@page import="org.gerdoc.helper.MarcaHelper"%>
<%@page import="org.gerdoc.dao.Marca"%>
<%@page import="org.gerdoc.dao.Provedor"%>
<%@page import="org.gerdoc.dao.Provedor"%>
<%@page import="java.util.List"%>
<%@page import="org.gerdoc.helper.ProvedorHelper"%>
<form action="ProductoList.jsp">
    <div class="row mt-4 grey">
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="provedorId">Nombre del Provedor:</label>
                <select class="form-select form-select-sm mb-3" aria-label=".form-select-lg example" id="provedorId" placeholder="Escribe un provedor" name="provedorId">
                    <option selected>Selecciona un provedor</option>
                    <%
                        List<Provedor>provedorList = new ProvedorHelper( ).getList( );
                        if( provedorList != null && provedorList.size() > 0 )
                        {
                           for( Provedor provedor : provedorList )
                           {                               
                    %>
                                <option value="<%=provedor.getId()%>"><%=provedor.getNombre()%></option>
                    <%
                           }
                        }
                    %>
                  </select>
            </div>
        </div>
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="marcaId">Marca:</label>
                <select class="form-select form-select-sm mb-3" aria-label=".form-select-lg example" id="marcaId" placeholder="Escribe una marca" name="marcaId">
                    <option selected>Selecciona una marca</option>
                    <%
                        List<Marca>marcaList = new MarcaHelper( ).getList( );
                        if( marcaList != null && marcaList.size() > 0 )
                        {
                           for( Marca marca : marcaList )
                           {
                    %>
                                <option value="<%=marca.getId()%>"><%=marca.getMarca()%></option>
                    <%
                           }
                        }
                    %>
                  </select>
            </div>
        </div>
                  
    <div class="row mt-4 grey">
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="id">ID:</label>
                <input disabled="TRUE" type="number" class="form-contproducto" id="id" placeholder="Escribe un ID" name="id">
            </div>
        </div>
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="nombre">Nombre:</label>
                <input type="text" class="form-contproducto" id="nombre" placeholder="Escribe el nombre" name="nombre">
            </div>
        </div>
    </div>
    <div class="row mt-4 grey">
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="descripcion">Descripción:</label>
                <input type="text" class="form-contproducto" id="descripcion" placeholder="Escribe una descripcion" name="descripcion">
            </div>
        </div>
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="url">URL:</label>
                <input type="text" class="form-contproducto" id="url" placeholder="Escribe la URL" name="url">
            </div>
        </div>
    </div>
    <div class="row mt-4 grey">
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="preciopublico">Precio Público:</label>
                <input type="number" class="form-contproducto" id="preciopublico" placeholder="Escribe precio publico" name="preciopublico">
            </div>
        </div>
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="costo">Costo:</label>
                <input type="number" class="form-contproducto" id="costo" placeholder="Escribe el costo" name="costo">
            </div>
        </div>
    </div>
    </div>
                  
    <div class="row mt-4 grey">
        <input type="hidden" id="action" name="action" value="send" />
        <div class=""input-group mb-3">
            <button type="submit" class="btn btn-primary">Enviar</button>
            <button type="reset" class="btn btn-primary">Borrar</button>
        </div>
    </div>
</form>
<br/>
<div class="row mt-6">
    <a href="?">
        <button type="button" class="btn btn-outline-primary" >Regresar</button>
    </a>
</div>
