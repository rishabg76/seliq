package mpackage;
import entity.Dao;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

public class ImageUploadModel implements ModelInterface{
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response, ServletContext context) {
        PrintWriter writer=null;
        try{
            writer=response.getWriter();
            InputStream filecontent=null;
            try{
                HttpSession session=request.getSession(false);
                String email=(String) session.getAttribute("email");
                final String path="/home/rishabh/images";
                final Part filePart=request.getPart("file");
                final String fileName=getFileName(filePart);
                String ext=fileName.substring(fileName.indexOf('.'));
                OutputStream out=null;
                out=new FileOutputStream(new File(path+File.separator+email+ext));
                filecontent=filePart.getInputStream();
                int read=0;
                final byte[] bytes=new byte[1024];
                while((read=filecontent.read(bytes))!=-1){
                    out.write(bytes, 0, read);
                }
                Dao dao=new Dao();
                Connection con = dao.toConnect(context.getInitParameter("url"), context.getInitParameter("username"), context.getInitParameter("password"));
                Statement st=con.createStatement();
                String query="update user_master set img_path='"+path+File.separator+email+ext+"' where phone=(select phone from login_table where email='"+email+"');";
                st.execute(query);
            }catch(Exception e){
                e.printStackTrace();
            }
            //System.out.println("Uploaded");
            
        }catch(IOException ex){
            Logger.getLogger(ImageUploadModel.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
    private String getFileName(final Part part){
        for(String content:part.getHeader("content-disposition").split(";")){
            if(content.trim().startsWith("filename")){
                return content.substring(content.indexOf('=')+1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
