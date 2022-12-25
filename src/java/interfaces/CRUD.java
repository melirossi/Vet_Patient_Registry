package interfaces;

import java.util.List;
import modelo.Mascota;

public interface CRUD {
    
    public List listar();
    public Mascota list(int id);
    public boolean add(Mascota masc);
    public boolean edit(Mascota masc);
    public boolean eliminar(int id);
    
}
