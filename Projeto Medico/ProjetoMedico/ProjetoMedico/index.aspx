<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProjetoMedico.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Med. Parrudos</title>
    <link rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="JS/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
     $(document).ready(function() {
         $(window).bind('scroll', function() {

             var navHeight = $(window).height() - 70;
             if($(window).scrollTop() > navHeight) {
                  $('nav').addClass('fixed');
             }

             else {
                  $('nav').removeClass('fixed');
             }
         });
        });

        $(".login").click(function (event) {
            event.preventDefault();
            $('body').animate({
                scrollTop: $(".secaoLogin").offset().top
            }, 1200);
        });
     </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="paginaInicial">
                <p class="titulo">Médicos Parrudos</p>
                <div class="tituloDivCima"></div>
                <div class="tituloDivBaixo"></div>
                <div class="tituloDivDireito"></div>
                <div class="tituloDivEsquerdo"></div>
                <h2>Copyright Médicos Parrudos ©</h2>
                <nav>
                    <ul>
                        <center>
                            <li class="home"><a href="">Home<img src="imagens/round_home_white_18dp.png"/></a></li>
                            <li class="login"><a href="">Login<img src="imagens/round_account_box_white_18dp.png"/></a></li>
                            <li class="cadastro"><a href="">Cadastro<img src="imagens/round_how_to_reg_white_18dp.png"/></a></li>
                        </center>
                    </ul>
                </nav>
            </section>
            <br />
            <section class="contexto">
                <center>
                    <p>Bem Vindo, nós somos os Médicos Parrudos</p>
                </center>
                <img id="comeco" src="imagens/round_accessibility_new_black_18dp.png"/>
                <p class="InicialEsquerda">Somos uma organização que preza o bem para todos</p>
                <img id="doacao" src="imagens/round_attach_money_black_18dp.png"/>
                <p class="InicialDireita">Caso se interesse em nosso trabalho considere doar</p>
                <img id="info" src="imagens/round_info_black_18dp.png"/>
                <p class="FinalEsquerda1">No caso de ser um médico, aplique para nossa equipe</p>
                <p class="FinalEsquerda2">No caso de paciente, realize um cadastro para mais informações</p>
                <div id="staff"></div>
                <img id="local" src="imagens/round_location_on_black_18dp.png"/>
                <p class="FinalDireita1">Estamos localizado na Rua Felipe Seiji Momma Valente, 321</p>
                <p class="FinalDireita2">Veja no mapa a seguir:</p>
                <div id="map"></div>
                <script>
                    function initMap() {
                        var location = { lat: -22.864034, lng: -47.049488 };
                        var map = new google.maps.Map(document.getElementById("map"), { zoom: 14, center: location });
                        var marker = new google.maps.Marker({ position: location, map:map });
                    }
                </script>
                <script async defer src="https://maps.googleapis.com/maps/api/js?callback=initMap"></script>
            </section>
            <section class="faixa">
                <p class="faixa1">É diferente,</p>
                <p class="faixa2">vem com a gente</p>
            </section>
            <section class="secaoLogin">
                <div class="divLogin">
                    <div class="divLogin2">
                        <p class="tituloLogin">Login</p>
                        <div class="barraLogin"></div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
