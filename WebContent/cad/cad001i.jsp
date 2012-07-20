<%@ taglib prefix="s" uri="/struts-tags" %>
<%@  taglib  prefix="c"   uri="/struts-tags" %>    
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>[cad001i.jsp] Cadastro de Empresa</title>

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
   	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<script src="/CET/padrao/jquery/jquery.js" type="text/javascript"></script>
	<script src="/CET/padrao/jquery/jquery.maskedinput.js" type="text/javascript"></script>	
	<script src="/CET/padrao/jquery/jquery.validate.js" type="text/javascript"></script>
	<script src="/CET/padrao/bootstrap/js/bootstrap-modal.js" type="text/javascript"></script>

   	<link rel="stylesheet" href="/CET/padrao/bootstrap/css/bootstrap-responsive.css">
   	<link rel="stylesheet" href="/CET/padrao/bootstrap/css/bootstrap.css">
   	
    <style>
        body {
            padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
        }
        
    </style>
</head>
<body>
<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="row">
			<div class="span4">
				<a class="btn btn-info" href="javaScript:irParaBrowser();">
					<i class="icon-search icon-white">
					</i>
					Browser
				</a>
			</div>
			<div class="span4" align="center">
				<a id="botaoCancelar" class="btn btn-danger" href="javaScript:cancelarCadastro();">
					<i class="icon-remove icon-white"></i>
					<span id="textoBtnCancelarExcluir">Cancelar</span>
				</a>
				<a id="botaoSalvar" class="btn btn-success" href="javaScript:salvarCadastro();">
					<i class="icon-ok icon-white"></i>
					<span id="textoBtnSalvarAlterar">Salvar</span>
				</a>
			</div>
			
			
			<div class="pull-right">
				<button class="descricaoTela">Cadastro Empresa</button>
			</div>
		</div>
    	</div>
</div>

<div class="container-fluid">
        <div class="container">

            <s:form id="cad001" action="Cad001Action!crud.action" theme="simple" cssClass="well form-horizontal">
                <s:hidden name="ac" id="ac"/>
                
                <div class="control-group">
					<label for="codigoEmpresa" class="control-label">C�digo</label>
					<div class="controls">
						<s:textfield name="empresaVo.codigoEmpresa" id="codigoEmpresa" cssClass="input-xxlarge" readonly="true" />
					</div>
				</div>

                <div class="control-group">
                	<label for="razaoSocial" class="control-label">Raz�o social</label>
					<div class="controls">
		                <s:textfield name="empresaVo.razaoSocial" required="true" id="razaoSocial" cssClass="input-xxlarge " />
					</div>
				</div>

                <div class="control-group">
                	<label for="nomeFantasia" class="control-label">Nome Fantasia</label>
					<div class="controls">
		                <s:textfield name="empresaVo.nomeFantasia" id="nomeFantasia" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="cep" class="control-label">CEP</label>
					<div class="controls">
		                <s:textfield name="empresaVo.cep" id="cep" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="endereco" class="control-label">Endere�o</label>
					<div class="controls">
		                <s:textfield name="empresaVo.endereco" id="endereco" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="numero" class="control-label">N�mero</label>
					<div class="controls">
		                <s:textfield name="empresaVo.numero" id="numero" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="complemento" class="control-label">Complemento</label>
					<div class="controls">
		                <s:textfield name="empresaVo.complemento" id="complemento" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="bairro" class="control-label">Bairro</label>
					<div class="controls">
		                <s:textfield name="empresaVo.bairro" id="bairro" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="cidade" class="control-label">Cidade</label>
					<div class="controls">
		                <s:textfield name="empresaVo.cidade" id="cidade" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="estado" class="control-label">Estado</label>
					<div class="controls">
		                <s:textfield name="empresaVo.estado" id="estado" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="telefone" class="control-label">Telefone</label>
					<div class="controls">
		                <s:textfield name="empresaVo.telefone" id="telefone" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="fax" class="control-label">Fax</label>
					<div class="controls">
		                <s:textfield name="empresaVo.fax" id="fax" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="website" class="control-label">Web Site</label>
					<div class="controls">
		                <s:textfield name="empresaVo.webSite" id="website" required="required" cssClass="input-xxlarge" />
					</div>
				</div>

                <div class="control-group">
                	<label for="email" class="control-label">E-mail</label>
					<div class="controls">
		                <s:textfield name="empresaVo.email" id="email" required="required" cssClass="input-xxlarge" />
					</div>
				</div>
                
            </s:form>
        </div>
    </div>




	<div class="modal hide" id="myModal">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal">�</button>
	    <h3>Confirma��o de exclus�o</h3>
	  </div>
	  <div class="modal-body">
	    <p>Deseja realmente excluir este cadstro?</p>
	  </div>
	  <div class="modal-footer">
	    <a href="#" class="btn" data-dismiss="modal">Cancelar</a>
	    <a href="javascript:excluirCadastro()" class="btn btn-primary">Ok</a>
	  </div>
	</div>

    <div class="navbar navbar-fixed-bottom">
    	<div class="navbar-inner"></div>
    </div>

<script type="text/javascript">

	$(document).ready(function(){
		
		$('#cad001').validate({
            rules:{
                razaoSocial:{
                    required: true
                }
            },
            messages:{
            	razaoSocial:{
                    required: "O campo Raz�o Social � obrigatorio.",
                }
            }
	    });
		
		var $acao = $('#ac').val();
		
		if($acao == ''){
			$('#codigoEmpresa').val('novo');
			$('#textoBtnSalvarAlterar').html('Salvar');
		}else{
			
			$('#textoBtnCancelarExcluir').html('Excluir');
			$('#botaoCancelar').attr('href','javaScript:abrirConfirmacao();');
			
			$('#textoBtnSalvarAlterar').html('Alterar');
			$('#botaoSalvar').attr('href','javaScript:liberarCamposAlteracao();');
			$('#botaoSalvar').removeClass('btn-success').addClass('btn-primary');
			
			$('input[class|="input"][id!="codigoEmpresa"]').attr('readonly','true');
			
		}
		
		$('#cep').mask('99999-999');
		$('#telefone').mask('(99) 9999-9999?9');
		$('#fax').mask('(99) 9999-9999?9');
		
	});

	function salvarCadastro(){
		
		var $codigo = $('#codigoEmpresa').val();
		
		
		if($codigo == 'novo'){
			$('#ac').val("saveInclusao");
		}else{
			$('#ac').val("saveAlteracao");
		}	
		
		$('#cad001').submit();
	}
	
	
	function abrirConfirmacao(){
		$('#myModal').modal('show');
	}


	function excluirCadastro(){
		
		$('#ac').val("excluir");
		$('#cad001').submit();
		
	}
	
	
	function liberarCamposAlteracao(){
		
		$('#textoBtnCancelarExcluir').html('Cancelar');
		$('#botaoCancelar').attr('href','javaScript:cancelarCadastro();');
		
		$('#textoBtnSalvarAlterar').html('Salvar');
		$('#botaoSalvar').removeClass('btn-primary').addClass('btn-success');
		$('#botaoSalvar').attr('href','javaScript:salvarCadastro();');
		$('input[class|="input"][id!="codigoEmpresa"]').removeAttr('readonly');
		
	}

	function cancelarCadastro(){
		
		var $codigo = $('#codigoEmpresa').val();
		
		if($codigo == 'novo'){
			this.irParaBrowser();
		}else{
			
			$('#textoBtnCancelarExcluir').html('Excluir');
			$('#botaoCancelar').attr('href','javaScript:abrirConfirmacao();');
			
			$('#textoBtnSalvarAlterar').html('Alterar');
			$('#botaoSalvar').attr('href','javaScript:liberarCamposAlteracao();');
			$('#botaoSalvar').removeClass('btn-success').addClass('btn-primary');
			$('input[class|="input"][id!="codigoEmpresa"]').attr('readonly','true');
		}
	}

	function irParaBrowser(){
		
		$('#cad001').attr("action","Cad001Action!browser.action");
		$('#cad001').submit();
		
	}

	// Busca os campos requeridos no formulario e caso n�o esteja preenchido emite um alerta(provis�rio) e move o foco para o campo
	function buscaProximoCampo(){
		
		$('input:required, .required').each(function(i,obj){

			if(this.value == ''){
				
				$('#classeErro').fadeIn(3000,function(){
					$('#classeErro').fadeOut(3000);		
				});
				
				this.focus();
				return false;
			}
			
		});
	}
	
</script>
</body>
</html>