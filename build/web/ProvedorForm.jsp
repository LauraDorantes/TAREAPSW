<%-- 
    Document   : UnoForm
    Created on : 13/05/2022, 01:34:33 AM
    Author     : gerdoc
--%>
<form action="ProvedorList.jsp">
    <div class="row mt-4 grey">
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="id">ID:</label>
                <input disabled="TRUE" type="number" class="form-contprovedor" id="id" placeholder=" " name="id">
            </div>
        </div>
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="nombre">Nombre:</label>
                <input type="text" class="form-contprovedor" id="nombre" placeholder="Escribe el provedor" name="nombre">
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
