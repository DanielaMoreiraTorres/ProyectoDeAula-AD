package Default;


import Default.Datos;
import java.io.IOException;
import java.io.Writer;
import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.json.JsonWriter;
import javax.websocket.EncodeException;
import javax.websocket.Encoder;
import javax.websocket.EndpointConfig;

public class EncoderMensaje implements Encoder.TextStream<Datos>
{

    @Override
    public void encode(Datos object, Writer writer) throws EncodeException, IOException 
    {
        JsonObject json =Json.createObjectBuilder().add("usuario",object.getUsuario()).add("clave", object.getClave()).build();
        try(JsonWriter jsonWriter = Json.createWriter(writer))
        {
            jsonWriter.writeObject(json);
        }
    }

    @Override
    public void init(EndpointConfig config) {}

    @Override
    public void destroy() {}
    
}
