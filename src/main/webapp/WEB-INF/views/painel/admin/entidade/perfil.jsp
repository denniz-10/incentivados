<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="pt-br">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${path}/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${path}/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Incentivados - ${entidade.nomeFantasia}
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     FONTAWESOME     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!--     BOOTSTRAP     -->
  <link href="${path}/assets/css/bootstrap.min.css" rel="stylesheet" />
  <!--     CUSTOM     -->
  <link href="${path}/assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
  <link href="${path}/assets/css/style.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">    
    <!-- Sidebar -->
    <c:import url="/WEB-INF/views/componentes/sidebar/sidebar-admin.jsp" />    
    <div class="main-panel">
      <c:import url="/WEB-INF/views/componentes/navbar/navbar-admin.jsp" />      
      <div class="content">        
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header bg-primary"></div>
              <div class="card-body border"> 

                <div class="row mt-3">
                  <div class="col-3 text-left">                    
                    <figure class="figure">
                      <img class="img-thumbnail" src="${path}/${entidade.documentosEntidade.logo.path}"> 
                    </figure> 
                  </div> 
                  <div class="col-9 text-left">      
                      <h2 class="mt-3 ml-3 bold text-primary">${entidade.nomeFantasia}</h2>
                      <p class="lead p-3">${entidade.sobre}</p>
                  </div>
                </div>

                <fieldset class="mt-5">
                <legend class="text-primary">Informações Gerais:</legend>
                <hr class="bg-primary">
                <div class="row mt-3">
                  <div class="col-4">
                    <div class="form-group">
                        <label>Data/Hora Cadastro:</label>   
                        <fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${entidade.dataCadastro}" var="dataCadastro" />
                        <input type="text" class="form-control" value="${dataCadastro}" readonly>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                        <label>Razão Social:</label>                     
                        <input type="text" class="form-control" value="${entidade.razaoSocial}" readonly>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                        <label>CNPJ:</label>                     
                        <input type="text" class="form-control" value="${entidade.cnpj}" readonly>
                    </div>
                  </div>
                </div>                
                <div class="row mt-5">
                  <div class="col-7">
                    <div class="form-group">
                        <label>Logradouro:</label>                      
                        <input type="text" class="form-control" value="${entidade.endereco.logradouro}" readonly>
                    </div>
                  </div>
                  <div class="col-2">
                    <div class="form-group">
                        <label>Nº:</label>                      
                        <input type="text" class="form-control" value="${entidade.endereco.numero}" readonly>
                    </div>
                  </div>
                  <div class="col-3">
                    <div class="form-group">
                        <label>Complemento:</label>                     
                        <input type="text" class="form-control" value="${entidade.endereco.complemento}" placeholder="Não Informado" readonly>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-3">
                    <div class="form-group">
                        <label>Cep:</label>                      
                        <input type="text" class="form-control" value="${entidade.endereco.cep}" readonly>
                    </div>
                  </div>
                  <div class="col-3">
                    <div class="form-group">
                        <label>Bairro:</label>                      
                        <input type="text" class="form-control" value="${entidade.endereco.bairro}" readonly>
                    </div>
                  </div>
                  <div class="col-3">
                    <div class="form-group">
                        <label>Cidade</label>                     
                        <input type="text" class="form-control" value="${entidade.endereco.cidade}" readonly>
                    </div>
                  </div>
                  <div class="col-3">
                    <div class="form-group">
                        <label>Estado:</label>                      
                        <input type="text" class="form-control" value="${entidade.endereco.estado}" readonly>
                    </div>
                  </div>
                </div>
                </fieldset>  

                <fieldset class="mt-5">
                <legend class="text-primary">Uploads:</legend>

                <hr class="bg-primary">

                <div class="row justify-content-center">
                  <div class="col-lg-2 text-center mt-5">
                    <div class="form-group">
                        <a href="${path}/${entidade.documentosEntidade.logo.path}" target="_blank"><i class="far fa-file-image text-primary" style="font-size: 56px;"></i></a>
                        <hr>
                        <h5 class="text-center">Logo</h5>
                    </div>
                  </div> 
                  <div class="col-lg-2 text-center mt-5">
                    <div class="form-group">
                        <a href="${path}/${entidade.documentosEntidade.ataEleicao.path}" target="_blank"><i class="far fa-file-image text-primary" style="font-size: 56px;"></i></a>
                        <hr>
                        <h5 class="text-center">Ata de Eleição</h5>
                    </div>
                  </div>
                  <div class="col-lg-2 text-center mt-5">
                    <div class="form-group">
                        <a href="${path}/${entidade.documentosEntidade.estatutoSocial.path}" target="_blank"><i class="far fa-file-image text-primary" style="font-size: 56px;"></i></a>
                        <hr>
                        <h5 class="text-center">Estatuto Social</h5>
                    </div>
                  </div> 
                  <div class="col-lg-2 text-center mt-5">
                    <div class="form-group">
                        <a href="${path}/${entidade.documentosEntidade.identidade.path}" target="_blank"><i class="far fa-file-image text-primary" style="font-size: 56px;"></i></a>
                        <hr>
                        <h5 class="text-center">Identidade Presidente</h5>
                    </div>
                  </div>
                  <div class="col-lg-2 text-center mt-5">
                    <div class="form-group">
                        <a href="${path}/${entidade.documentosEntidade.cartaoCnpj.path}" target="_blank"><i class="far fa-file-image text-primary" style="font-size: 56px;"></i></a>
                        <hr>
                        <h5 class="text-center">Cartão CNPJ</h5>
                    </div>
                  </div>
                  </fieldset>    

              </div>
              <div class="card-footer bg-primary"></div>
            </div>
          </div>
        </div>              
      </div>
      <c:import url="/WEB-INF/views/componentes/footer/painel/footer.jsp" />
    </div>
  </div>

  <!--   JQUERY   -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <!--   POPPER   -->  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <!--   BOOTSTRAP   -->  
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script type="text/javascript" src="${path}/assets/js/paper-dashboard.min.js?v=2.0.0"></script>
</body>

</html>