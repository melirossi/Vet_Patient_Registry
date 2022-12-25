
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Mascota;
import modeloDAO.MascotaDAO;

public class Controlador extends HttpServlet {
    
    String listar = "vistas/listar.jsp";
    String add = "vistas/add.jsp";
    String edit = "vistas/edit.jsp";
    int Id;
    
    Mascota m = new Mascota();
    MascotaDAO dao = new MascotaDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try ( PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet Controlador</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso = listar;
        } else if(action.equalsIgnoreCase("add")){
            acceso = add;
        } else if(action.equalsIgnoreCase("Agregar")){
            String nom = request.getParameter("txtNom");
            String esp = request.getParameter("txtEsp");
            String edad = request.getParameter("txtEdad");
            String sexo = request.getParameter("txtSexo");
            String due = request.getParameter("txtDue");
            String tel = request.getParameter("txtTel");
            m.setNom(nom);
            m.setEsp(esp);
            m.setEdad(edad);
            m.setSex(sexo);
            m.setDue(due);
            m.setTel(tel);
            dao.add(m);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")){
            request.setAttribute("idmas",request.getParameter("Id"));  
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")){
            Id = Integer.parseInt(request.getParameter("txtId"));
            String nom = request.getParameter("txtNom");
            String esp = request.getParameter("txtEsp");
            String edad = request.getParameter("txtEdad");
            String sexo = request.getParameter("txtSexo");
            String due = request.getParameter("txtDue");
            String tel = request.getParameter("txtTel");
            m.setId(Id);
            m.setNom(nom);
            m.setEsp(esp);
            m.setEdad(edad);
            m.setSex(sexo);
            m.setDue(due);
            m.setTel(tel);
            dao.edit(m);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")){
            Id = Integer.parseInt(request.getParameter("Id"));
            m.setId(Id);
            dao.eliminar(Id);
            acceso = listar;
            
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
