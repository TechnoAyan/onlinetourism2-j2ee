import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class GiveFeedback extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession session=request.getSession();
            String UID=(String)session.getAttribute("uid");
            
            
            String MSG=request.getParameter("t1");
            String DATE="02/03/2014";
            String TIME="09:54:11";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");//loading Driver
            Connection con=DriverManager.getConnection("jdbc:odbc:abc");//Driver managr is doing the connection
            PreparedStatement pst=con.prepareStatement("insert into Feedback values (?, ?, ?, ?)");//inserting the datas
            pst.setString(1, UID);//1,2,3,4,5 is indicating the position no of the question marks (Setting the position)
            pst.setString(2, MSG);
            pst.setString(3, DATE);
            pst.setString(4, TIME);
            int r=pst.executeUpdate();//to insert the record
            con.close();//closing the conection
            if(r!=0)//if statement for indicating which page will display
            {
                response.sendRedirect("Welcome1.jsp");
            }
            else
            {
                response.sendRedirect("Login.jsp");
            }
        } 
 catch(Exception e){
            System.out.println(e);
            response.sendRedirect("Login.jsp");
        }


finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
