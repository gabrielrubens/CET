<%@ include file="/include/principal.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<title>CET</title>


<style type="text/css">
    
    body {
        padding-top: 50px;
    }
    
    .widget-content {
        margin-bottom: 5px;
    }
    
    .maximizarInformacoes{
        
        width: 30%;
    
    }

    .maximizarOrdemServicoPendente{
        
        width: 65.96% !important;
    
    }
    .maximizarOrdemServicoPendente tbody{
        
        font-size: medium;
    
    }

</style>


</head>

<body>

	<div class="navbar navbar-fixed-top">

		<es:menu mostrarNomePrograma="false" />

	</div>
	
	

    <div class="container-fluid" id="atalhos" style="display: none;">
                <div class="widget">
                        <div class="widget-content" style="padding: 5px 5px 5px">
                            <div class="shortcuts">
                                <a href="javascript:irParaPrograma('Cad004');" class="shortcut">
                                    <i class="shortcut-icon icon-list-alt"></i> <span
                                    class="shortcut-label">Ensaio</span>
                                </a> <a href="javascript:irParaPrograma('Cad001');" class="shortcut">
                                    <i class="shortcut-icon icon-bookmark"></i> <span
                                    class="shortcut-label">Empresa</span>
                                </a> <a href="javascript:irParaPrograma('Cad005');" class="shortcut">
                                    <i class="shortcut-icon icon-signal"></i> <span
                                    class="shortcut-label">Ve�culo</span>
                                </a> <a href="javascript:irParaPrograma('Cad002');" class="shortcut">
                                    <i class="shortcut-icon icon-signal"></i> <span
                                    class="shortcut-label">Marca</span>
                                </a> <a href="javascript:irParaPrograma('Cad003');" class="shortcut">
                                    <i class="shortcut-icon icon-signal"></i> <span
                                    class="shortcut-label">Modelo</span>
                                </a> <a href="javascript:irParaPrograma('Cad007');" class="shortcut">
                                    <i class="shortcut-icon icon-comment"></i> <span
                                    class="shortcut-label">Tac�grafo</span>
                                </a> <a href="javascript:irParaPrograma('Cad006');" class="shortcut">
                                    <i class="shortcut-icon icon-user"></i> <span
                                    class="shortcut-label">Pessoa</span>
                                </a> <a href="javascript:irParaRelatorio('Rel001');" class="shortcut">
                                    <i class="shortcut-icon icon-file"></i> <span
                                    class="shortcut-label">Relat�rio</span>
                                </a>
                                <a href="javascript:irParaRelatorio('Rel001');" class="shortcut">
                                    <i class="shortcut-icon icon-file"></i> <span
                                    class="shortcut-label">Relat�rio</span>
                                </a>
                                <a href="javascript:irParaPrograma('Cad010');" class="shortcut">
                                    <i class="shortcut-icon icon-upload"></i> <span
                                    class="shortcut-label">Upload</span>
                                </a>
                            </div>
            </div>
        </div>
    </div>
	
	
	
	<div class="container-fluid">
		<div class="row-fluid">

			<div class="span4 maximizarInformacoes" id="informacoes">
				<div class="widget-content">
					<p>
						<b>Usu�rio:</b> <c:out value="${usuarioVo.nomeUsuario}" /><br>
						<b>Empresa:</b> <c:out value="${empresaVo.codigoEmpresa}"/> - <c:out value="${empresaVo.razaoSocial}"/>
					</p>
				</div>
				<div class="widget-content">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<td>Ensaios</td>
								<td class="text-center">
								    <c:out value="${quantidadeEnsaios}" />
                                </td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Ve�culos</td>
								<td><c:out value="${quantidadeVeiculos}" /></td>
							</tr>
							<tr>
								<td>Tac�grafos</td>
								    <td><c:out value="${quantidadeTacografos}" /></td>
							</tr>
							<tr>
								<td>Pessoas</td>
								<td><c:out value="${quantidadePessoas}" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<div class="span4 widget-content" id="grafico" style="display: none;">
                <cet:grafico tituloDaSerie="Ensaios" tituloDoGrafico="Ensaios por M�s" /> 
            </div>
			<div class="span4 widget-content maximizarOrdemServicoPendente" style="height: 297px; overflow-y: scroll; font-size: 8px !important;" id="ordemServico">
			     <table class="table table-condensed">
			         <thead>
                           <tr>
                                <th colspan="3" style="text-align: center;">
                                    Ordem de Servi�o Pendente
                                </th>
                           </tr>			         
			         </thead>
                     <s:if test="%{listaEnsaio.isEmpty()}">
                        <tbody>
                            <tr>
                                <td>
			                         <div class="alert">
			                             <strong>Sem Resultado!</strong><br> N�o existe Ordem de Servi�o Pendente.
			                         </div>
                                </td>
                            </tr>
                        
                        </tbody>
     
                     </s:if>
                     <s:else>
				         <tbody>
				                <tr>
				                    <th>
                                        C�digo				                    
				                    </th>
				                    <th>
                                        Data				                    
				                    </th>
				                    <th>
                                        Hora				                    
				                    </th>
				                </tr>
		                        <s:iterator  value="listaEnsaio" status="status">
		                            <tr onclick="javaScript:detalhes('<s:property value="codigoEnsaio" />')">
		                                <td>
		                                    <a>
		                                        <fmt:formatNumber value="${codigoEnsaio}" type="number"  minIntegerDigits="6" />
		                                    </a>
		                                </td>
		                                <td>
		                                    <a><s:property value="data" /></a>
		                                </td>
		                                <td>
		                                    <a><s:property value="hora" /></a>
		                                </td>
		                            </tr>
		                        </s:iterator>
				         </tbody>
                    </s:else>
			     </table>
            </div>

		</div>
	</div>


	<hr>

	<footer>
	<p>&copy; Stdio.H - Company 2012</p>
	</footer>

</body>

<script type="text/javascript">

    function irParaPrograma(action){
    	
    	$('<form/>').attr('action',action+'Action!browser.action').submit();

    }
    function irParaRelatorio(action){
    	
    	$('<form/>').attr('action',action+'Action!crud.action').attr('target','_blank').submit();

    }
    
    function detalhes(codigo){
    	
    	var newForm = $('<form>', {
            'action': 'Cad004Action!crud.action?ac=consultar&codigoEnsaioSelecionado='+codigo,
            'method':'Post'
        });
    	
    	newForm.submit();
        
    }
    
</script>

</html>
