
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <title>Login</title>
    </head>
    <body>
        <header>              
            <div id="menu">
                <ul class="list-unstyled list-inline">
                    <li><a href="iniciosesion.jsp" class="glyphicon glyphicon-home"></a></li>
                    <li><a href="#" data-toggle="modal" data-target="#login" class="glyphicon glyphicon-log-in"></a></li>
                </ul>
            </div>
        </header>
        
        
        <div class="container">
            
           <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="text-center text-primary"> Inicio de Sesión </h3>
                        </div>
                        <div class="modal-body">                    
                            <form id="inicio">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
                                        <input type="text" class="form-control" id="usuario" placeholder="username">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                        <input type="password" class="form-control" id="clave" placeholder="password">
                                    </div>
                                </div>
                                <button class="btn btn-primary" id="btnIniciar"><span class="glyphicon glyphicon-check"></span> Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="mensaje"></div>
        <script src="js/WebSocket-Login.js" type="text/javascript"></script>
    </body>
</html>
