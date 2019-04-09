<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html class="no-js" lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="author" content="John Doe">
    <meta name="description" content="">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Title -->
    <title>Home</title>
    <!-- Place favicon.ico in the root directory -->
    <link rel="apple-touch-icon" href="${path}/main/images/apple-touch-icon.png">
    <link rel="shortcut icon" type="image/ico" href="${path}/main/images/favicon.ico" />
    <!-- Plugin-CSS -->
    <link rel="stylesheet" href="${path}/main/css/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/main/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${path}/main/css/themify-icons.css">
    <link rel="stylesheet" href="${path}/main/css/magnific-popup.css">
    <link rel="stylesheet" href="${path}/main/css/animate.css">
    <!-- Main-Stylesheets -->
    <link rel="stylesheet" href="${path}/main/css/normalize.css">
    <link rel="stylesheet" href="${path}/main/css/style.css">
    <link rel="stylesheet" href="${path}/main/css/responsive.css">
    <link rel="stylesheet" hre=" animate.min.css">
    <script src="${path}/main/js/vendor/modernizr-2.8.3.min.js"></script>

    <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body data-spy="scroll" data-target="#primary-menu">

<%--PRELOADER Desativado--%>
<%--    <div class="preloader">--%>
<%--        <div class="sk-folding-cube">--%>
<%--            <div class="sk-cube1 sk-cube"></div>--%>
<%--            <div class="sk-cube2 sk-cube"></div>--%>
<%--            <div class="sk-cube4 sk-cube"></div>--%>
<%--            <div class="sk-cube3 sk-cube"></div>--%>
<%--        </div>--%>
<%--    </div>--%>

    <!--Mainmenu-area-->
    <div class="mainmenu-area" data-spy="affix" data-offset-top="100">
        <div class="container">
            <!--Logo-->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#primary-menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand logo">
                    <img src="${path}/main/images/logoIncentivados.png" width="30" height="30" style="display:inline-block;">
                    Incentivados
                    <h5>Yabá Consultoria</h5>
                </a>

            </div>
            <!--Logo/-->
            <nav class="collapse navbar-collapse" id="primary-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="#home-page">Home</a></li>
                    <li><a href="#service-page">Sobre</a></li>
                    <li><a href="#feature-page">Serviços</a></li>
                    <li><a href="#plataforma">Plataforma</a></li>
                    <li><a href="#faq-page">FAQ</a></li>
                    <li><a href="#contact-page">Contato</a></li>
                    <li><a href="${path}/login">Login</a></li>

                </ul>
            </nav>
        </div>
    </div>
    
    <!--Mainmenu-area/-->
    <div id="flow">
        <span class="flow-1"></span>
        <span class="flow-2"></span>
        <span class="flow-3"></span>
    </div>

    <!--Header-area-->
    <header class="header-area overlay full-height relative v-center" id="home-page">
        <div class="absolute anlge-bg"></div>
        <div class="container">
            <div class="row v-center">
                <div class="col-xs-12 col-md-7 header-text">
                    <h2 class="h2">Conectando empresas e proponentes</h2>
                    <p>O Incentivados facilita seu trabalho de ir atrás de um investidor/patrocinador para seu projeto.
                        Aumente seu leque de opções e possibilidades cadastrando seu </p>
                    <a href="#" class="button white">Comece agora</a>
                </div>
            </div>
        </div>
    </header>
    <!--Header-area/-->



    <!--Feature-area-->
    <section class="white-bg section-padding" id="service-page">

        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <div class="box wow animated bounceInLeft slower">
                        <div class="box-icon">
                            <img src="${path}/main/images/portfolio-icon-4.png" alt="">
                        </div>
                        <h4>Quem somos!</h4>
                        <p>Com intuito de encurtar o caminho para a captação de recursos dos projetos cadastrados em
                            nossa plataforma, o Incentivados é um projeto da Yabá Consultoria, organização responsável
                            por fazer a ponte entre as Instituições Sociais e as Empresas.</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="box wow animated bounceInRight slower">
                        <div class="box-icon">
                            <img src="${path}/main/images/service-icon-2.png" alt="">
                        </div>
                        <h4>O que fazemos?</h4>
                        <p>A plataforma Incentivados consiste em receptar os projetos cadastrados para captação de
                            recursos, e apresentá-los para as empresas que destinam seu imposto de renda via Leis de
                            Incentivo Fiscal.</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="box wow animated bounceInLeft slower">
                        <div class="box-icon">
                            <img src="${path}/main/images/portfolio-icon-4.png" alt="">
                        </div>
                        <h4>Quem somos!</h4>
                        <p>Com intuito de encurtar o caminho para a captação de recursos dos projetos cadastrados em
                            nossa plataforma, o Incentivados é um projeto da Yabá Consultoria, organização responsável
                            por fazer a ponte entre as Instituições Sociais e as Empresas.</p>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--Feature-area/-->

    <section class="gray-bg section-padding" id="feature-page">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                <div class="titulo-section">
                    <h2>Como fazemos?</h2>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <!-- CARDS DE ASSOSIAÇÕES -->
                <div class="col-lg-6">
                    <div class="d-flex text-center lead">
                        <p>ASSOCIAÇÕES</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="box">
                                <div class="box-icon">
                                    <img src="${path}/main/images/portfolio-icon-1.png" alt="">
                                </div>
                                <h3>Seleção</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est
                                    adipisci,</p>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="box">
                                <div class="box-icon">
                                    <img src="${path}/main/images/portfolio-icon-1.png" alt="">
                                </div>
                                <h3>Seleção</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est
                                    adipisci,</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="box">
                                <div class="box-icon">
                                    <img src="${path}/main/images/portfolio-icon-1.png" alt="">
                                </div>
                                <h3>Seleção</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est
                                    adipisci,</p>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="box">
                                <div class="box-icon">
                                    <img src="${path}/main/images/portfolio-icon-1.png" alt="">
                                </div>
                                <h3>Seleção</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est
                                    adipisci,</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- CARD DE EMPRESAS -->
                <div class="col-lg-6">
                    <div class="d-flex text-center lead">
                        <p>ASSOCIAÇÕES</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="box">
                                <div class="box-icon">
                                    <img src="${path}/main/images/portfolio-icon-1.png" alt="">
                                </div>
                                <h3>Seleção</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est
                                    adipisci,</p>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="box">
                                <div class="box-icon">
                                    <img src="${path}/main/images/portfolio-icon-1.png" alt="">
                                </div>
                                <h3>Seleção</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est
                                    adipisci,</p>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-end">
                        <div class="col-lg-5">
                            <div class="box">
                                <div class="box-icon">
                                    <img src="${path}/main/images/portfolio-icon-1.png" alt="">
                                </div>
                                <h3>Seleção</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est
                                    adipisci,</p>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="box">
                                <div class="box-icon">
                                    <img src="${path}/main/images/portfolio-icon-1.png" alt="">
                                </div>
                                <h3>Seleção</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est
                                    adipisci,</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!-- <hr id="mark-dash"> -->

        <!-- <div class="row">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2 style="margin:50px;">Empresas</h2>
                        <p>Lorem issue dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus at,
                            facere harum fugiat!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="box">
                        <div class="box-icon">
                            <img src="${path}/main/images/portfolio-icon-1.png" alt="">
                        </div>
                        <h3>Seleção</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="box">
                        <div class="box-icon">
                            <img src="${path}/main/images/portfolio-icon-2.png" alt="">
                        </div>
                        <h3>Relatorios</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="box">
                        <div class="box-icon">
                            <img src="${path}/main/images/portfolio-icon-3.png" alt="">
                        </div>
                        <h3>Gestão</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="box">
                        <div class="box-icon">
                            <img src="${path}/main/images/portfolio-icon-3.png" alt="">
                        </div>
                        <h3>Marketing</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque quas nulla est adipisci,</p>
                    </div>
                </div> -->
        </div>
    </section>


    <section class="angle-bg sky-bg section-padding" id="plataforma">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div id="caption_slide" class="carousel slide caption-slider" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="item active row">
                                <div class="v-center">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="caption-title" data-animation="animated fadeInUp">
                                            <h2>Conheça a platarfoma</h2>
                                        </div>
                                        <div class="caption-desc" data-animation="animated fadeInUp">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                commodo consequat. Duis aute</p>
                                        </div>
                                        <div class="caption-button" data-animation="animated fadeInUp">
                                            <a href="#" class="button">Cadastre-se</a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo one" data-animation="animated fadeInRight">
                                            <img src="${path}/main/images/screen-1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo two" data-animation="animated fadeInRight">
                                            <img src="${path}/main/images/screen-2.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item row">
                                <div class="v-center">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="caption-title" data-animation="animated fadeInUp">
                                            <h2>Facil de usar</h2>
                                        </div>
                                        <div class="caption-desc" data-animation="animated fadeInUp">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                commodo consequat. Duis aute</p>
                                        </div>
                                        <div class="caption-button" data-animation="animated fadeInUp">
                                            <a href="#" class="button">Crie sua conta</a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo one" data-animation="animated fadeInRight">
                                            <img src="${path}/main/images/screen-3.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo two" data-animation="animated fadeInRight">
                                            <img src="${path}/main/images/screen-4.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item row">
                                <div class="v-center">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="caption-title" data-animation="animated fadeInUp">
                                            <h2>Gerencia suas atividades</h2>
                                        </div>
                                        <div class="caption-desc" data-animation="animated fadeInUp">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                commodo consequat. Duis aute</p>
                                        </div>
                                        <div class="caption-button" data-animation="animated fadeInUp">
                                            <a href="#" class="button">Acesse o painel</a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo one" data-animation="animated fadeInRight">
                                            <img src="${path}/main/images/screen-7.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo two" data-animation="animated fadeInRight">
                                            <img src="${path}/main/images/screen-2.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item row">
                                <div class="v-center">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="caption-title" data-animation="animated fadeInUp">
                                            <h2>Deseja fazer um solicitação?</h2>
                                        </div>
                                        <div class="caption-desc" data-animation="animated fadeInUp">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                commodo consequat. Duis aute</p>
                                        </div>
                                        <div class="caption-button" data-animation="animated fadeInUp">
                                            <a href="#" class="button">Com um click</a>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo one" data-animation="animated fadeInRight">
                                            <img src="${path}/main/images/screen-3.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <div class="caption-photo two" data-animation="animated fadeInRight">
                                            <img src="${path}/main/images/screen-4.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Indicators -->
                        <ol class="carousel-indicators caption-indector">
                            <li data-target="#caption_slide" data-slide-to="0" class="active">
                                <strong>Cadastro </strong>consectetur adipisicing elit.
                            </li>
                            <li data-target="#caption_slide" data-slide-to="1">
                                <strong>Facil de usar </strong>consectetur adipisicing elit.
                            </li>
                            <li data-target="#caption_slide" data-slide-to="2">
                                <strong>Painel</strong>consectetur adipisicing elit.
                            </li>
                            <li data-target="#caption_slide" data-slide-to="3">
                                <strong>Peça uma Doação </strong>consectetur adipisicing elit.
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- <section class="price-area overlay section-padding" id="price-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2>Afortable Price</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus at,
                            facere harum fugiat!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <div class="price-table">
                        <h3 class="text-uppercase price-title">Basic</h3>
                        <hr>
                        <ul class="list-unstyled">
                            <li><strong class="amount">$ <span class="big">20</span></strong>/Month</li>
                            <li>100 MB Disk Space</li>
                            <li>2 Subdomains</li>
                            <li>5 Email Accounts</li>
                            <li>Webmail Support</li>
                            <li>Customer Support 24/7</li>
                        </ul>
                        <hr>
                        <a href="#" class="button">Purchase</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="price-table active">
                        <span class="price-info"><span class="ti-crown"></span></span>
                        <h3 class="text-uppercase price-title">STABDARD</h3>
                        <hr>
                        <ul class="list-unstyled">
                            <li><strong class="amount">$ <span class="big">39</span></strong>/Month</li>
                            <li>100 MB Disk Space</li>
                            <li>2 Subdomains</li>
                            <li>5 Email Accounts</li>
                            <li>Webmail Support</li>
                            <li>Customer Support 24/7</li>
                        </ul>
                        <hr>
                        <a href="#" class="button">Purchase</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="price-table">
                        <h3 class="text-uppercase price-title">UNLIMITED</h3>
                        <hr>
                        <ul class="list-unstyled">
                            <li><strong class="amount">$ <span class="big">59</span></strong>/Month</li>
                            <li>100 MB Disk Space</li>
                            <li>2 Subdomains</li>
                            <li>5 Email Accounts</li>
                            <li>Webmail Support</li>
                            <li>Customer Support 24/7</li>
                        </ul>
                        <hr>
                        <a href="#" class="button">Purchase</a>
                    </div>
                </div>
            </div>
        </div>
    </section> -->



    <!-- <section class="section-padding gray-bg" id="team-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2>Special team</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus at,
                            facere harum fugiat!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="single-team">
                        <div class="team-photo">
                            <img src="${path}/main/images/team-section-1.png" alt="">
                        </div>
                        <h4>JEMY SEDONCE</h4>
                        <h6>Co. Founder</h6>
                        <ul class="social-menu">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="single-team">
                        <div class="team-photo">
                            <img src="${path}/main/images/team-section-2.png" alt="">
                        </div>
                        <h4>DEBORAH BROWN</h4>
                        <h6>UX Designer</h6>
                        <ul class="social-menu">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="single-team">
                        <div class="team-photo">
                            <img src="${path}/main/images/team-section-3.png" alt="">
                        </div>
                        <h4>HARRY BANKS</h4>
                        <h6>Founder</h6>
                        <ul class="social-menu">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="single-team">
                        <div class="team-photo">
                            <img src="${path}/main/images/team-section-4.png" alt="">
                        </div>
                        <h4>VICTORIA CLARK</h4>
                        <h6>Creative Director</h6>
                        <ul class="social-menu">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                            <li><a href="#"><i class="ti-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section> -->




    <!-- <section class="testimonial-area section-padding gray-bg overlay">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2>Client says</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus at,
                            facere harum fugiat!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
                    <div class="testimonials">
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="${path}/main/images/avatar-small-1.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis,
                                velit id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="${path}/main/images/avatar-small-2.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis,
                                velit id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="${path}/main/images/avatar-small-3.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis,
                                velit id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="${path}/main/images/avatar-small-4.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis,
                                velit id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="${path}/main/images/avatar-small-5.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis,
                                velit id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                        <div class="testimonial">
                            <div class="testimonial-photo">
                                <img src="${path}/main/images/avatar-small-6.png" alt="">
                            </div>
                            <h3>AR Rahman</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel vero dolore officiis,
                                velit id libero illum harum hic magni, quae repellendus adipisci possimus saepe nostrum
                                doloribus repudiandae asperiores commodi voluptate.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->






    <section class="gray-bg section-padding" id="faq-page">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                    <div class="page-title">
                        <h2>Perguntas Frequentes</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit voluptates, temporibus at,
                            facere harum fugiat!</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-start">
                <div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
                    <div class="panel-group" id="accordion">
                        <div class="panel">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"
                                    aria-expanded="true">Sedeiusmod
                                    tempor inccsetetur aliquatraiy?</a>
                            </h4>
                            <div id="collapse1" class="panel-collapse collapse in">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodas temporo
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrd
                                    exercitation ullamco laboris nisi ut aliquip ex comodo consequat. Duis aute dolor
                                    in reprehenderit.</p>
                            </div>
                        </div>
                        <div class="panel">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Tempor inccsetetur
                                    aliquatraiy?</a>
                            </h4>
                            <div id="collapse2" class="panel-collapse collapse">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodas temporo
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrd
                                    exercitation ullamco laboris nisi ut aliquip ex comodo consequat. Duis aute dolor
                                    in reprehenderit.</p>
                            </div>
                        </div>
                        <div class="panel">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Lorem ipsum dolor
                                    amet, consectetur adipisicing ?</a>
                            </h4>
                            <div id="collapse3" class="panel-collapse collapse">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodas temporo
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrd
                                    exercitation ullamco laboris nisi ut aliquip ex comodo consequat. Duis aute dolor
                                    in reprehenderit.</p>
                            </div>
                        </div>
                        <div class="panel">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Lorem ipsum dolor
                                    amet, consectetur adipisicing ?</a>
                            </h4>
                            <div id="collapse4" class="panel-collapse collapse">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodas temporo
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrd
                                    exercitation ullamco laboris nisi ut aliquip ex comodo consequat. Duis aute dolor
                                    in reprehenderit.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>








    <section class="section-padding overlay client-area overlay" id="client-page">
        <div class="container">
            <div class="row text-center">
                <div class="col-xs-12">
                    <div class="clients">
                        <div class="item">
                            <img src="${path}/main/images/themeforest.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/coadcanyon.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/graphicriver.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/docean.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/audiojungle.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/actividen.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/photodone.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/videgub.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/themeforest.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/coadcanyon.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/graphicriver.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/docean.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/audiojungle.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/actividen.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/photodone.gif" alt="">
                        </div>
                        <div class="item">
                            <img src="${path}/main/images/videgub.gif" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 
    <section class="section-padding gray-bg" id="blog-page">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <div class="single-blog">
                        <div class="blog-photo">
                            <img src="${path}/main/images/small1.jpg" alt="">
                        </div>
                        <div class="blog-content">
                            <h3><a href="#">Beautiful Place for your Great Journey</a></h3>
                            <ul class="blog-meta">
                                <li><span class="ti-user"></span> <a href="#">Admin</a></li>
                                <li><span class="ti-calendar"></span> <a href="#">Feb 01, 2017</a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nemo eaque expedita
                                aliquid dolorem repellat perferendis, facilis aut fugit, impedit.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="single-blog">
                        <div class="blog-photo">
                            <img src="${path}/main/images/small2.jpg" alt="">
                        </div>
                        <div class="blog-content">
                            <h3><a href="#">Beautiful Place for your Great Journey</a></h3>
                            <ul class="blog-meta">
                                <li><span class="ti-user"></span> <a href="#">Admin</a></li>
                                <li><span class="ti-calendar"></span> <a href="#">Feb 01, 2017</a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nemo eaque expedita
                                aliquid dolorem repellat perferendis, facilis aut fugit, impedit.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="single-blog">
                        <div class="blog-photo">
                            <img src="${path}/main/images/small3.jpg" alt="">
                        </div>
                        <div class="blog-content">
                            <h3><a href="#">Beautiful Place for your Great Journey</a></h3>
                            <ul class="blog-meta">
                                <li><span class="ti-user"></span> <a href="#">Admin</a></li>
                                <li><span class="ti-calendar"></span> <a href="#">Feb 01, 2017</a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit nemo eaque expedita
                                aliquid dolorem repellat perferendis, facilis aut fugit, impedit.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->





    <footer class="footer-area relative sky-bg" id="contact-page">
        <div class="absolute "></div>
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-sm-offset-3 text-center">
                        <div class="page-title">
                            <h2 style="color:white">Contate-nos</h2>
                            <p style="color:white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit
                                voluptates, temporibus
                                at, facere harum fugiat!</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-md-4">
                        <address class="side-icon-boxes">
                            <div class="side-icon-box">
                                <div class="side-icon">
                                    <img src="${path}/main/images/location-arrow.png" alt="">
                                </div>
                                <p><strong>Endereço</strong> Rua vicente lotti<br />São Paulo - SP</p>
                            </div>
                            <div class="side-icon-box">
                                <div class="side-icon">
                                    <img src="${path}/main/images/phone-arrow.png" alt="">
                                </div>
                                <p><strong>Telefone </strong>
                                    <a href="callto:8801812726495">(11)2053-7866</a> <br />
                                    <a href="callto:8801687420471">(11)9999-9999</a>
                                </p>
                            </div>
                            <div class="side-icon-box">
                                <div class="side-icon">
                                    <img src="${path}/main/images/mail-arrow.png" alt="">
                                </div>
                                <p><strong>E-mail: </strong>
                                    <a href="#">yabaconsultoria@contato.com.br</a> <br />
                                </p>
                            </div>
                        </address>
                    </div>
                    <div class="col-xs-12 col-md-8">
                        <form action="process.php" id="contact-form" method="post" class="contact-form">
                            <div class="form-double">
                                <input type="text" id="form-name" name="form-name" placeholder="Nome"
                                    class="form-control" required="required">
                                <input type="email" id="form-email" name="form-email" class="form-control"
                                    placeholder="Email" required="required">
                            </div>
                            <input type="text" id="form-subject" name="form-subject" class="form-control"
                                placeholder="Assunto ">
                            <textarea name="message" id="form-message" name="form-message" rows="5" class="form-control"
                                placeholder="Escreve sua mensagem" required="required"></textarea>
                            <button type="sibmit" class="button">Enviar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-middle">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 pull-right">
                        <ul class="social-menu text-right x-left">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>

                            <li><a href="#"><i class="ti-linkedin"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                        <p>Acompanhe a gente nas redes sociais</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <p>&copy;Copyright 2018 Todos os direitos reservados Yaba Consultoria</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script>
        function typeWriter(elemento) {
            const textoArray = elemento.innerHTML.split('');
            elemento.innerHTML = '';
            textoArray.forEach((letra, i) => {
                setTimeout(() => elemento.innerHTML += letra, 100 * i);
            });
        }

        // Se estiver tendo problemas com performance, utilize o FOR loop como abaixo no local do forEach
        // function typeWriter(elemento) {
        //   const textoArray = elemento.innerHTML.split('');
        //   elemento.innerHTML = '';
        //   for(let i = 0; i < textoArray.length; i++) {
        //     setTimeout(() => elemento.innerHTML += textoArray[i], 75 * i);
        //   }
        // }

        const titulo = document.querySelector('.h2');
        typeWriter(titulo);



    </script>



    <!--Vendor-JS-->
    <script src="${path}/main/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="${path}/main/js/vendor/bootstrap.min.js"></script>
    <!--Plugin-JS-->
    <script src="${path}/main/js/owl.carousel.min.js"></script>
    <script src="${path}/main/js/contact-form.js"></script>
    <script src="${path}/main/js/jquery.parallax-1.1.3.js"></script>
    <script src="${path}/main/js/scrollUp.min.js"></script>
    <script src="${path}/main/js/magnific-popup.min.js"></script>
    <script src="${path}/main/js/wow.min.js"></script>
    <!-- WOW-JS -->
    <!--Main-active-JS-->
    <script src="${path}/main/js/script.js"></script>
</body>

</html>