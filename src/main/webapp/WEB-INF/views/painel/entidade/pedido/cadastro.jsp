<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html lang="pt-br">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${path}/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${path}/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Incentivados - Cadastro de Pedido
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     FONTAWESOME     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!--     BOOTSTRAP     -->
  <link href="${path}/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.2/css/bootstrap-select.min.css" rel="stylesheet">
  <!--     CUSTOM     -->
  <link href="${path}/assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
  <link href="${path}/assets/css/style.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">    
    <!-- Sidebar -->
    <c:import url="/WEB-INF/views/componentes/sidebar/sidebar-entidade.jsp" />    
    <div class="main-panel">
      <c:import url="/WEB-INF/views/componentes/navbar/navbar-entidade.jsp" />      
      <div class="content"> 
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header bg-primary"></div>
              <div class="card-body border">
                <form action="${path}/painel/pedidos/${empresa.nomeFantasia}/cadastro" method="post" enctype="multipart/form-data" acceptcharset="UTF-8">

                  <fieldset>
                  <legend class="text-primary">Solicitante:</legend>
                  <hr class="bg-primary">
                  <input type="hidden" name="usuario.id" value="${usuario.id}">
                  <div class="row mt-3">               
                    <div class="col-4">
                      <div class="form-group">
                          <label>Nome:</label>
                          <input type="text" class="form-control" value="${usuario.nome} ${usuario.sobrenome}" readonly required>
                      </div>
                    </div>                     
                    <div class="col-4">
                      <div class="form-group">
                          <label>E-mail:</label>
                          <input type="text" class="form-control" value="${usuario.email}" readonly required>
                      </div>
                    </div>    
                    <div class="col-4">
                      <div class="form-group">
                          <label>CPF:</label>
                          <input type="text" class="form-control" value="${usuario.cpf}" readonly required>
                      </div>
                    </div>   
                  </div>
                  <div class="row">
                    <div class="col-12">
                      <label>Entidade:</label>                      
                      <select class="selectpicker form-control" name="entidade.id" title="Selecione ..." data-live-search="true" data-style="btn-primary" required>
                        <c:forEach var="entidade" items="${entidades}">
                          <option value="${entidade.id}" required>${entidade.razaoSocial} - ${entidade.cnpj}</option>
                        </c:forEach>
                      </select>
                    </div>
                  </div>
                  <div class="row"> 
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Solicitação:</label>
                        <textarea class="form-control" name="solicitacao" rows="10" maxlength="3000" placeholder="Descreva sua solicitação ..." required></textarea>
                      </div>
                    </div>  
                  </div>
                  </fieldset>  

                  <fieldset class="mt-5">
                  <legend class="text-primary">Patrocinador:</legend>
                  <hr class="bg-primary">
                  <div class="row mt-3">  
                    <div class="col-4">
                      <input type="hidden" name="empresa.id" value="${empresa.id}">
                      <div class="form-group">
                          <label>Nome Fantasia:</label>
                          <input type="text" class="form-control" value="${empresa.nomeFantasia}" readonly required>
                      </div>
                    </div>             
                    <div class="col-4">
                      <div class="form-group">
                          <label>Razão Social:</label>
                          <input type="text" class="form-control" value="${empresa.razaoSocial}" readonly required>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="form-group">
                          <label>CNPJ:</label>
                          <input type="text" class="form-control" value="${empresa.cnpj}" readonly required>
                      </div>
                    </div>    
                  </div>
                  <div class="row">
                    <div class="col-12">
                      <label>Loja:</label>                      
                      <select class="selectpicker form-control" name="analista.id" title="Selecione ..." data-live-search="true" data-style="btn-primary" required>
                        <c:forEach var="analista" items="${empresa.analistas}">
                          <option value="${analista.id}" data-content='<strong><i class="far fa-building"></i> ${analista.endereco.bairro}</strong> (${analista.endereco.cidade} - ${analista.endereco.estado})' required></option>
                        </c:forEach>
                      </select>
                    </div>
                  </div>
                  </fieldset> 

                  <fieldset class="mt-5 mb-5">
                  <legend class="text-primary">Uploads:</legend>

                  <hr class="bg-primary">

                  <div class="row justify-content-start">
                    <div class="col-lg-2 text-center mt-5">
                      <div class="form-group">
                          <label for="carta-oficio"><i class="far fa-file-alt text-primary" style="font-size: 56px;"></i></label>
                          <hr>
                          <h5 class="text-center">Carta Oficio</h5>                          
                          <input type="file" id="carta-oficio" name="documentosPedido.cartaOficio.file" onchange="validaImgPdf(this, this.id)" required> 
                      </div>
                    </div> 
                  </fieldset> 

                  <hr class="bg-primary">
                  <button type="submit" class="btn btn-success float-right">Enviar <i class="far fa-share-square"></i></button>
                  <a href="${path}/entidades" class="btn btn-danger float-right"><i class="fas fa-angle-double-left"></i> Voltar</a>
                </form>
              </div>
              <div class="card-footer bg-primary"></div>
            </div>
          </div>
        </div>              
      </div>
      <c:import url="/WEB-INF/views/componentes/footer/painel/footer.jsp" />
    </div>
  </div>

  <!-- MODALS -->
  <c:import url="/WEB-INF/views/componentes/modal/modal-arquivo-recusado-all.jsp" />
  <c:import url="/WEB-INF/views/componentes/modal/modal-arquivo-recusado-img.jsp" />
  <c:import url="/WEB-INF/views/componentes/modal/modal-arquivo-recusado-pdf.jsp" />


  <!--   JQUERY   -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <!--   POPPER   -->  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <!--   BOOTSTRAP   -->  
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.2/js/bootstrap-select.min.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script type="text/javascript" src="${path}/assets/js/paper-dashboard.min.js?v=2.0.0"></script>  
  <!-- VALIDATOR -->
  <script type="text/javascript" src="${path}/assets/js/file-validator.js"></script>
</body>

</html>