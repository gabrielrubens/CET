<%@ include file="/include/principal.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	
	    <title>[cad011i.jsp] Cadastro de Agendamento</title>

	</head>
<body>
	<div class="navbar navbar-fixed-top">
	
		<es:menu mostrarNomePrograma="true"/>
		
		<es:botoes codigoPrograma="cad011" />
   	
	</div>

	<div class="container-fluid">
		<div class="container">
		
		    <s:form id="cad011" action="Cad011Action!crud.action" theme="simple" cssClass="well form-horizontal">
		        <s:hidden name="ac" id="ac"/>
		        <s:hidden name="agendamentoVo.codigoAgendamento"/>
		       
		       
		        <div class="control-group">
		        	<label for="codigoAgendamento" class="control-label"><fmt:message key="label.padrao.codigo"/></label>
   					<div class="controls">
			         	<s:textfield name="agendamentoVo.codigoAgendamento" id="codigoAgendamento" cssClass="input-mini" disabled="true" />
   					</div>
				</div>

		        <div class="control-group">
		        	<label for="codigoAgendamento" class="control-label"><fmt:message key="label.padrao.tipo.inclusao"/></label>
   					<div class="controls input-append">
			         	 <span class="add-on" id="botaoTipoInclusao" onclick="javascript:alterarTipoInclusao()" style="width: 120px; text-align: left;">
                            <fmt:message key="label.padrao.cliente.cadastrado" />
                        </span>
			         	 <span class="add-on btn" id="botaoTipoInclusao" onclick="javascript:alterarTipoInclusao()">
                            <i class="icon-refresh"></i>
                        </span>
   					</div>
				</div>
					
		       <div class="tipoInclusao" id="clienteCadastrado">
	                <div class="control-group">
	                    <label for="proprietario" class="control-label"><fmt:message key="label.padrao.proprietario"/></label>
	                    <div class="controls input-append">
	                        <s:select name="agendamentoVo.codigoPessoa" list="#{ }" emptyOption="true" cssClass="span4"/>
	                        <span class="add-on btn" id="adicionaProprietario"  onclick="javascript:mostrarCampoBusca('spanProprietario')">
	                           <i class="icon-filter"></i>
	                        </span>
	                        <span class="hide busca" id="spanProprietario">
		                        <s:textfield name="programaVo.descricaoMenu" id="descricaoMenu" required="required" cssClass="span4" />
		                        <span class="add-on btn" id="adicionaProprietario">
		                           <i class="icon-search"></i>
		                        </span>
	                        </span>
	                    </div>
	                </div>
	
	                <div class="control-group">
	                    <label for="veiculo" class="control-label"><fmt:message key="label.padrao.veiculo"/></label>
	                    <div class="controls input-append">
	                        <s:select name="agendamentoVo.codigoVeiculo" list="#{ }" emptyOption="true" cssClass="span4"/>
	                        <span class="add-on btn" id="adicionaProprietario" onclick="javascript:mostrarCampoBusca('spanVeiculo')">
	                           <i class="icon-filter"></i>
	                        </span>
	                        <span class="hide busca" id="spanVeiculo">
		                        <s:textfield name="programaVo.descricaoMenu" id="descricaoMenu" required="required" cssClass="span4" />
		                        <span class="add-on btn" id="adicionaProprietario">
		                           <i class="icon-search"></i>
		                        </span>
	                        </span>
	                    </div>
	                </div>
                </div> 
                    
                <div class="tipoInclusao hide">
                    
	                <div class="control-group">
	                    <label for="codigoPessoa" class="control-label"><fmt:message key="label.padrao.tipo.pessoa"/></label>
	                    <div class="controls">
	                        <s:select cssClass="input" list="#{'1':'F�sica','2':'Jur�dica'}" name="pessoaVo.tipoPessoa" id="tipoPessoa" onchange="javascript:selecionaTipoPessoa(this.value)" cssErrorClass="span3"/>               
	                    </div>
	                </div>

                    <div class="control-group">
                        <label for="codigoAgendamento" class="control-label"><fmt:message key="label.padrao.nome"/></label>
                        <div class="controls">
                            <s:textfield name="agendamentoVo.codigoAgendamento" id="codigoAgendamento" cssClass="span4" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="codigoAgendamento" class="control-label"><fmt:message key="label.padrao.cpf.cnpj"/></label>
                        <div class="controls">
                            <s:textfield name="agendamentoVo.codigoAgendamento" id="codigoAgendamento" cssClass="span4" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label for="codigoAgendamento" class="control-label"><fmt:message key="label.padrao.placa"/></label>
                        <div class="controls">
                            <s:textfield name="agendamentoVo.codigoAgendamento" id="codigoAgendamento" cssClass="span4" />
                        </div>
                    </div>
               </div>
	
               <div class="control-group">
                   <label for="tipoServico" class="control-label"><fmt:message key="label.padrao.tipo.servico"/></label>
                   <div class="controls input-append">
                       <s:select name="agendamentoVo.codigoTipoServico" list="#{ }" emptyOption="true" cssClass="span4"/>
                   </div>
               </div>
               
               <div class="control-group">
                   <label for="data" class="control-label"><fmt:message key="label.padrao.data"/></label>
                   <div class="controls input-append">
                       <s:textfield id="dataAgendamento" name="ensaioVo.data" cssClass="span2 data "/>
                       <span class="add-on btn" id="dataAtual"><i class="icon-calendar"></i></span>
                   </div>
               </div>
               
               <div class="control-group">
                   <label for="hora" class="control-label"><fmt:message key="label.padrao.hora.inicio"/></label>
                   <div class="controls input-append">
                       <s:textfield id="horaInicioEnsaio" name="ensaioVo.horaInicio" cssClass="span2"/>
                       <span class="add-on btn" onclick="javascript:setHoraAtual('horaInicioEnsaio')">
                          <i class="icon-time"></i>
                       </span>
                   </div>
               </div>
		        
		    </s:form>
		    
			<es:mensagemErro />
			
		</div>
	</div>

    <div class="modal hide" id="myModal">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal">�</button>
	    <h3>Confirma��o de exclus�o</h3>
	  </div>
	  <div class="modal-body">
	    <p>Deseja realmente excluir este cadastro?</p>
	  </div>
	  <div class="modal-footer">
	    <a href="#" class="btn" data-dismiss="modal"><fmt:message key="label.padrao.cancelar"/></a>
	    <a href="javascript:excluirCadastro()" class="btn btn-primary"><fmt:message key="label.padrao.ok"/></a>
	  </div>
	</div>

	<div class="modal hide" id="modalMensagem">
	  <div class="modal-body">
	    <h3 id="mensagem"></h3>
	  </div>
	  <div class="modal-footer">
	    <a href="#" class="btn btn-primary" data-dismiss="modal"><fmt:message key="label.padrao.ok"/></a>
	  </div>
	</div>

	<es:rodape descricao="${usuarioLogadoVo.nomeUsuario}"/>

<script type="text/javascript">

	$(document).ready(function(){
		
		var acao = $('#ac').val();
		
		if(acao == 'excluir'){
			irParaBrowser('cad011');
		}
		
		$('#divErros').css('display','none');
		
		
	    $('#dataAtual').click(function(){
            
            setDataAtual('dataAgendamento');
            
        });
	    
	    $('#horaEnsaio').mask('99:99');
        
        $('#dataAtual').click(function(){
            
            setDataAtual('dataAgendamento');
            
        });
		
		
		$('#cad011').validate({

			
		  unhighlight: function(element, errorClass) {
		    if (this.numberOfInvalids() == 0) {
		      $("#divErros").hide();
		    }
		    $(element).removeClass(errorClass);
		  },
		  errorPlacement: function(error,element) {
			  return true;
		  },
			
			errorLabelContainer: "#listaErros",
			errorElement: "li",
			
            rules:{
            	"agendamentoVo.descricao":{
                	required:true
                }
                
            },
            messages:{
            	"agendamentoVo.descricao":{
                    required: "O campo Descri��o � obrigat�rio."	
                }
            }
	    });
		
		
		if(acao == ''){
			
			$('#codigoAgendamento').val('novo');
			$('#textoBtnSalvarAlterar').html('Salvar');
			
		}else{
			
			$('#textoBtnCancelarExcluir').html('Excluir');
			$('#botaoCancelar').attr('href','javaScript:abrirConfirmacao();');
			
			$('#textoBtnSalvarAlterar').html('Alterar');
			$('#botaoSalvar').attr('href','javaScript:liberarCamposAlteracao();');
			$('#botaoSalvar').removeClass('btn-success').addClass('btn-primary');
			
			$('input[class*="span"],select').attr('disabled','true');
			
		}
		
	});

	function salvarCadastro(){
		
		var $codigo = $('#codigoAgendamento').val();
		
		if(buscaProximoCampo() == true){
			
			$('#divErros').slideUp(function(){
				$('#divErros').css('display','none');
			});
			
		}else{
			
			$('#divErros').fadeIn(1000).delay(1000).fadeOut('slow');
			
		}
		
		if($codigo == 'novo'){
			$('#ac').val("saveInclusao");
		}else{
			$('#ac').val("saveAlteracao");
		}	
		
		$('#cad011').submit();
	}
	
	
	function abrirConfirmacao(){
		$('#myModal').modal('show');
	}


	function excluirCadastro(){
		
		$('#ac').val("excluir");
		$('#cad011').submit();
		
	}
	
	function liberarCamposAlteracao(){
		
		$('#textoBtnCancelarExcluir').html('Cancelar');
		$('#botaoCancelar').attr('href','javaScript:cancelarCadastro();');
		
		$('#textoBtnSalvarAlterar').html('Salvar');
		$('#botaoSalvar').removeClass('btn-primary').addClass('btn-success');
		$('#botaoSalvar').attr('href','javaScript:salvarCadastro();');
		$('input[class*="span"][id!="codigoAgendamento"]').removeAttr('disabled');
		
	}

	function cancelarCadastro(){
		
		var $codigo = $('#codigoAgendamento').val();
		
		if($codigo == 'novo'){
			 $("#cad011").validate().cancelSubmit = true;
			this.irParaBrowser('cad011');
		}else{
			
			$('#textoBtnCancelarExcluir').html('Excluir');
			$('#botaoCancelar').attr('href','javaScript:abrirConfirmacao();');
			
			$('#textoBtnSalvarAlterar').html('Alterar');
			$('#botaoSalvar').attr('href','javaScript:liberarCamposAlteracao();');
			$('#botaoSalvar').removeClass('btn-success').addClass('btn-primary');
			$('input[class|="input"][id!="codigoAgendamento"]').attr('disabled','true');

			location.reload();
		}
	}

	function irParaBrowser(){
		
		$('#cad011').attr("action","Cad011Action!browser.action");
		$('#cad011').validate().cancelSubmit = true;
		$('#cad011').submit();
		
	}

	function mostrarCampoBusca(idCampo){
		
		var idDiferente = "[id!='"+idCampo+"']";
		
		$('#'+idCampo).toggle();
		$('.busca'+idDiferente).hide();
		
	}
	

	function alterarTipoInclusao(){
		
		var inclusaoRapida = $('#clienteCadastrado').is(':visible');
		
		$('.tipoInclusao').toggle('slow',function(){
			if(inclusaoRapida == true){
				$('#botaoTipoInclusao').html('<fmt:message key="label.padrao.inclusao.rapida" />');
			}else{
			    $('#botaoTipoInclusao').html('<fmt:message key="label.padrao.cliente.cadastrado" />');
			}
		});
		
		
	}
	
	
	
</script>
</body>
</html>