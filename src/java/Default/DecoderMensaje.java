package Default;


import Default.Datos;
import java.io.IOException;
import java.io.Reader;
import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.websocket.DecodeException;
import javax.websocket.Decoder;
import javax.websocket.EndpointConfig;

public class DecoderMensaje implements Decoder.TextStream<Datos>
{

    @Override
    public Datos decode(Reader reader) throws DecodeException, IOException {
        Datos datos = new Datos();
        try(JsonReader jsonReader = Json.createReader(reader))
        {
            JsonObject json=jsonReader.readObject();
            datos.setUsuario(json.getString("usuario"));
            datos.setClave(json.getString("clave"));
        }
        return datos;
    }

    @Override
    public void init(EndpointConfig config) {}

    @Override
    public void destroy() {}
    
}
