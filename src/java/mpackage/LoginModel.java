package mpackage;

import entity.Dao;
import entity.LoginDao;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rishabh
 */
public class LoginModel implements ModelInterface{
    @Override
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context){
        try(PrintWriter out = response.getWriter()) {
            Dao dao=new Dao();
            
            Connection con=dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"), context.getInitParameter("password"));
            String email=request.getParameter("email");
            
            int status;
            String password=request.getParameter("password");
            String query="select * from login_table where email='"+email+"'";
            LoginDao ld=new LoginDao();
            ResultSet rs=null;
            rs=ld.toFetch(con, query);
            if(!rs.next()){
                request.getRequestDispatcher("/WEB-INF/Messages/UNFMessage.jsp").forward(request, response);
            }
            status=rs.getInt("status");
            if(status==1){
                request.setAttribute("message","Email not activated");
            }else if(status==2){
                if(password.equals(rs.getString("password"))){
                    HttpSession sess=request.getSession(true);
                    sess.setAttribute("email", email);
                    request.setAttribute("message","Login Successful!");
                    
                }else{
                    request.setAttribute("message","Password Incorrect");
                }
                
            }
            request.getRequestDispatcher("/WEB-INF/Messages/LoginMessage.jsp").forward(request, response);    
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
    }
}
