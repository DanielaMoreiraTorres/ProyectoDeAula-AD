
(function(window, document, JSON)
{
//    var url='ws://localhost:8080';
    var url='ws://'+window.location.host+'/ProyectoDeAula-AD/login';
    ws = new WebSocket(url), 
    mensaje = document.getElementById('mensaje'),
    boton = document.getElementById('btnIniciar');
    usuario = document.getElementById('usuario');
    clave = document.getElementById('clave');
    
    ws.onopen = onOpen;
    ws.onclose = onClose;
    ws.onmessage = onMessage;
    
    
        boton.addEventListener('click', enviar);
    
    function onOpen()
    {
        console.log('Conectado...');
    }
    
    function onClose()
    {
        console.log('Desconectado...');
    }
    
    function enviar()
    {
        var msg =
        {
            usuario: usuario.value,
            clave: clave.value
        };
        
        ws.send(JSON.stringify(msg));
    }
    
    function onMessage(evt)
    {
        var obj = JSON.parse(evt.data),
            msg = 'usuario: '+obj.usuario+'<br/> clave: '+obj.clave;
        mensaje.innerHTML += '<br/>'+msg;
        //console.log("datos: ", evt.data.toString());
        
        location.href="principal.jsp?user="+obj.usuario;
        
        
        
    }
})(window, document, JSON);


