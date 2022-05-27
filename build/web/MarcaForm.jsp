<%-- 
    Document   : UnoForm
    Created on : 13/05/2022, 01:34:33 AM
    Author     : gerdoc
--%>
<form action="MarcaList.jsp">
    <div class="row mt-4 grey">
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="id">ID:</label>
                <input disabled="TRUE" type="number" class="form-contmarca" id="id" placeholder="" name="id">
            </div>
        </div>
        <div class="col">
            <div class="mb-3 mt-3">
                <label for="marca">Marca:</label>
                <input type="text" class="form-contmarca" id="marca" placeholder="Escribe una marca" name="marca">
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
