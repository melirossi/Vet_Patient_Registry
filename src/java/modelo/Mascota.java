package modelo;

public class Mascota {
    
    int id;
    String nom;
    String esp;
    String edad;
    String sex;
    String Due;
    String tel;
    
    public Mascota() {        
    }

    public Mascota(String nom, String esp, String edad, String sex, String Due, String tel) {
        this.nom = nom;
        this.esp = esp;
        this.edad = edad;
        this.sex = sex;
        this.Due = Due;
        this.tel = tel;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getEsp() {
        return esp;
    }

    public String getEdad() {
        return edad;
    }

    public String getSex() {
        return sex;
    }

    public String getDue() {
        return Due;
    }

    public String getTel() {
        return tel;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setEsp(String esp) {
        this.esp = esp;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setDue(String Due) {
        this.Due = Due;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }
        
}
