package org.apache.jsp.WEB_002dINF.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Fragments/header.jspf");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Seliq - Home Page</title>\n");
      out.write("        <script src=\"/Project1/bootstrap/jquery.js\"></script>\n");
      out.write("        <script src=\"/Project1/bootstrap/bootstrap.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"/Project1/css/body.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"/Project1/css/login.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"/Project1/css/styles.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"/Project1/JS/registration.js\"></script>\n");
      out.write("        <script src=\"/Project1/JS/availability.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("        <script src=\"/Project1/bootstrap/jquery.js\"></script>\n");
      out.write("        <script src=\"/Project1/bootstrap/bootstrap.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"/Project1/css/body.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"/Project1/css/styles.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"/Project1/css/login.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"/Project1/JS/registration.js\"></script>\n");
      out.write("        <script src=\"/Project1/JS/availability.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <header class=\"header\">\n");
      out.write("            <nav class=\"navbar fixed-top shadow navbar-expand-lg navbar-dark nav-bg-color\">\n");
      out.write("                <a class=\"navbar-brand ml-lg-4\" href=\"/Project1/fc/ab?page=login&type=view\">\n");
      out.write("                    <img src=\"/Project1/Images/logo.png\" width=\"50%\" height=\"50%\" alt=\"logo\">\n");
      out.write("                </a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <form>\n");
      out.write("                        <div class=\"search\">\n");
      out.write("\n");
      out.write("                            <div class=\"first_wrap\">\n");
      out.write("                                <input class=\"SB\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <!--\n");
      out.write("                      <div class=\"second_wrap\">\n");
      out.write("                          <div class=\"icon\">\n");
      out.write("                          </div>\n");
      out.write("                      </div>\n");
      out.write("                            -->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        ");
String fname = (String) session.getAttribute("email"); 
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\"  href=\"/Project1/fc/ab?type=view&page=additem\">Post Free Ad</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");
 if (fname == null) {
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\"  href=\"/Project1/fc/ab?type=view&page=loginpage\">LOGIN</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a href=\"#account\" data-toggle=\"modal\" data-target=\"#signin\" class=\"nav-link\">\n");
      out.write("                                SIGNUP\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        ");
} else {
      out.write("\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                ");
      out.print(fname);
      out.write("\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"/Project1/fc/ab?type=view&page=profile\">My Account</a>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"/Project1/fc/?page=Logout&type=model\">Log Out</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <!--  Sign in  Model   -->\n");
      out.write("                        <div class=\"modal\" id=\"signin\" tabindex=\"-1\" role=\"dialog\" arai-laballedby=\"exampleM0dalLabel\" aria-hidden=\"true\">\n");
      out.write("\n");
      out.write("                            <div class=\"modal-dialog\" role=\"document\">              \n");
      out.write("                                <div id=\"account\" class=\"connection_section modal-content\">\n");
      out.write("                                    <div class=\"signup_form_header\">\n");
      out.write("                                        <div class=\"signup_form_heading modal-header\">\n");
      out.write("                                            <h2>Create your account</h2>\n");
      out.write("                                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"signup_form_subheading\">\n");
      out.write("                                            <p>It will just take few minutes</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <form class=\"signup_form_container\" action=\"/Project1/fc/?page=Registration&type=model\" method=\"POST\">\n");
      out.write("                                        <div class=\"signup_form_caption\">Name</div>\n");
      out.write("                                        <div class=\"signup_box_row\">\n");
      out.write("\n");
      out.write("                                            <input type=\"text\" name=\"firstname\" placeholder=\"First Name\" class=\"signup_textbox w50\">\n");
      out.write("\n");
      out.write("                                            <input type=\"text\" name=\"lastname\" placeholder=\"Last Name\" class=\"signup_textbox w50\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"signup_form_caption\">Email</div>\n");
      out.write("                                        <div class=\"signup_box_row\">\n");
      out.write("                                            <input type=\"email\" id=\"fid\" name=\"email\" placeholder=\"Enter your email\" class=\"signup_textbox w100\" onblur=\"acaller('fid','sid')\">\n");
      out.write("                                            <span id=\"sid\"></span>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <div class=\"signup_form_caption\">Mobile Number</div>\n");
      out.write("                                        <div class=\"signup_box_row\">\n");
      out.write("                                            <input type=\"number\" name=\"phone\" placeholder=\"Enter your mobile number\" class=\"signup_textbox w100\">\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                        <div class=\"signup_form_caption\">Password</div>\n");
      out.write("                                        <div class=\"signup_box_row\">\n");
      out.write("                                            <input type=\"password\" name=\"password\" placeholder=\"Enter Password\" class=\"signup_textbox w50\">\n");
      out.write("\n");
      out.write("                                            <input type=\"password\" name=\"password2\" placeholder=\"Confirm Password\" class=\"signup_textbox w50\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <button type=\"submit\" class=\"signup_submit_button\">Submit</button>\n");
      out.write("                                        ");
      out.write("\n");
      out.write("                                        <p>Already have an account ? <a href=\"/Project1/fc/ab?type=view&page=loginpage\">Login</a></p>\n");
      out.write("                                    </form>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <main>\n");
      out.write("            <div class=\"body_section\">\n");
      out.write("\n");
      out.write("                <div class=\"headings\">\n");
      out.write("                    <h2>Login to your account</h2>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <form class=\"f_container\" action=\"/Project1/fc/?page=Login&type=model\" method=\"POST\">\n");
      out.write("\n");
      out.write("                    <div class=\"caption\">Email</div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <input type=\"email\" placeholder=\"Enter your email\" name=\"email\" class=\"textbox w100\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"caption\">Password</div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <input type=\"password\" placeholder=\"Enter Password\" name=\"password\" class=\"textbox w100\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <button type=\"submit\" class=\"button submit_button\">Login</button>\n");
      out.write("                    \n");
      out.write("                    ");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <a href=\"/Project1/fc/ab?page=forgotPassword&type=view\">Forgot Your Password</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <p>Create an account <a data-toggle=\"modal\" data-target=\"#signin\">here</a></p>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </main>\n");
      out.write("        <footer class=\"page_footer\">\n");
      out.write("\n");
      out.write("            <div class=\"wrap_one\">\n");
      out.write("\n");
      out.write("                <div class=\"Fcaption\">\n");
      out.write("                    <a href=\"about.html\">About Seliq</a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"Fcaption\">\n");
      out.write("                    <a href=\"support.html\">Support Us</a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"Fcaption\">\n");
      out.write("                    <a href=\"privacy.html\">Privacy</a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"wrap_two\">\n");
      out.write("\n");
      out.write("                <div class=\"Fcaption\">Contact</div>\n");
      out.write("                <ul>\n");
      out.write("                    <li class=contact_number>+98-1234567890</li>\n");
      out.write("                    <li class=\"email\">Seliq@gmail.com</li>\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("                <div class=\"Fcaption\">Stay Connected</div>\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"http://www.facebook.com/seliq\">Facebook</a></li>\n");
      out.write("                    <a href=\"http://www.instagram.com/seliq\">Instagram</a>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"wrap_three\">\n");
      out.write("\n");
      out.write("                <div class=\"block\">\n");
      out.write("                    @2019 Dasauli , Lucknow , 226026\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
