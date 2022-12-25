package modeloDAO;

import config.Conexion;
import interfaces.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Mascota;

public class MascotaDAO implements CRUD {

    // Instancias y variables:
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Mascota m = new Mascota();
    
    @Override
    public List listar() {
        ArrayList<Mascota> list = new ArrayList<>();
        String sql = "select * from mascota";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Mascota mas = new Mascota();
                mas.setId(rs.getInt("ID"));
                mas.setNom(rs.getString("Nombre"));
                mas.setEsp(rs.getString("Especie"));
                mas.setEdad(rs.getString("Edad"));
                mas.setSex(rs.getString("Sexo"));
                mas.setDue(rs.getString("Dueño"));
                mas.setTel(rs.getString("Telefono"));
                list.add(mas);
            }
        } catch (Exception e) {            
        }
        
        return list;
    }

    @Override
    public Mascota list(int Id) {
        String sql = "select * from mascota where Id ="+Id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                m.setId(rs.getInt("ID"));
                m.setNom(rs.getString("Nombre"));
                m.setEsp(rs.getString("Especie"));
                m.setEdad(rs.getString("Edad"));
                m.setSex(rs.getString("Sexo"));
                m.setDue(rs.getString("Dueño"));
                m.setTel(rs.getString("Telefono"));
            }
                    
        } catch (Exception e){
            
        }
        return m;
    }

    @Override
    public boolean add(Mascota masc) {
        String sql = "insert into mascota (Nombre,Especie,Edad,Sexo,Dueño,Telefono)values('"+masc.getNom()+"','"+masc.getEsp()+"','"+masc.getEdad()+"','"+masc.getSex()+"','"+masc.getDue()+"','"+masc.getTel()+"')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {            
        }
        return false;
    }

    @Override
    public boolean edit(Mascota masc) {
        String sql = "update mascota set Nombre='"+masc.getNom()+"', Especie='"+masc.getEsp()+"', Edad='"+masc.getEdad()+"',Sexo='"+masc.getSex()+"',Dueño='"+masc.getDue()+"',Telefono='"+masc.getTel()+"'where Id="+masc.getId();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {            
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from mascota where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {            
        }
        return false;
    }
       
}

