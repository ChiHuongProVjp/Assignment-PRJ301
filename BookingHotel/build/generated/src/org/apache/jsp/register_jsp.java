package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("     <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <link rel=\"icon\" href=\"image/favicon.png\" type=\"image/png\">\n");
      out.write("        <title>Royal Hotel</title>\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/linericon/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/nice-select/css/nice-select.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendors/owl-carousel/owl.carousel.min.css\">\n");
      out.write("        <!-- main css -->\n");
      out.write("     <a href=\"login.jsp\"></a>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--================Header Area =================-->\n");
      out.write("        <header class=\"header_area\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light\">\n");
      out.write("                    <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                    <div class=\"collapse navbar-collapse offset\" id=\"navbarSupportedContent\">\n");
      out.write("                        <ul class=\"nav navbar-nav menu_nav ml-auto\">\n");
      out.write("                            <li class=\"nav-item\"><a class=\"nav-link\" href=\"index.jsp\">Home</a></li> \n");
      out.write("                             <li class=\"nav-item\"><a class=\"nav-link\" href=\"login.jsp\">Login</a></li> \n");
      out.write("                            \n");
      out.write("                        </ul>\n");
      out.write("                    </div> \n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!--================Header Area =================-->\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!--================Contact Area =================-->\n");
      out.write("        <section class=\"contact_area section_gap\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-9\">\n");
      out.write("                        <form class=\"row contact_form\" action=\"RegisterServlet\" method=\"post\" id=\"contactForm\">\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"name\" name=\"username\" placeholder=\"Enter your user name\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" id=\"email\" name=\"password\" placeholder=\"Enter password\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"name\" name=\"fullName\" placeholder=\"Enter your full name\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"name\" name=\"address\" placeholder=\"Enter your address\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"name\" name=\"email\" placeholder=\"Enter your email\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"name\" name=\"phone\" placeholder=\"Enter your phone\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-12 text-right\">\n");
      out.write("                                <button type=\"submit\" value=\"submit\" class=\"btn theme_btn button_hover\">Register</button>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--================Contact Area =================-->\n");
      out.write("         <footer class=\"footer-area section_gap\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-3  col-md-6 col-sm-6\">\n");
      out.write("                        <div class=\"single-footer-widget\">\n");
      out.write("                                <h6 class=\"footer_title\">Ninh Bình Legend</h6>\n");
      out.write("                                <p>Ninh Bình Legend is a lovely hotel, in the heart of Ninh Bình. In addition to excellent transport \n");
      out.write("                                    links at the meeting point of the main metro line and tram line, our hotel is surrounded by the city centre’s elegant shops, cafés, \n");
      out.write("                                    restaurants, bars, Ninh Binh is the focus of many tourist attractions. Recently, our whole hotel has undergone a complete renovatio</p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                            <div class=\"single-footer-widget\">\n");
      out.write("                                <h6 class=\"footer_title\">Address</h6>\n");
      out.write("                                <p>Xuân Thành, Khu biệt thự, Ninh Bình, Việt Nam </p>\n");
      out.write("                                <p>(+84) 09 87654321 | ninhbinhlegend@gmail.com </p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    \t\t\t\t\t\t\n");
      out.write("                </div>\n");
      out.write("                <div class=\"border_line\"></div>\n");
      out.write("                <div class=\"row footer-bottom d-flex justify-content-between align-items-center\">\n");
      out.write("                    <p class=\"col-lg-8 col-sm-12 footer-text m-0\"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                       Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved></i>\n");
      out.write("<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\n");
      out.write("                    <div class=\"col-lg-4 col-sm-12 footer-social\">\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-youtube\"></i></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!-- Optional JavaScript -->\n");
      out.write("        <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/popper.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"vendors/owl-carousel/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("        <script src=\"vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js\"></script>\n");
      out.write("        <script src=\"vendors/nice-select/js/jquery.nice-select.js\"></script>\n");
      out.write("        <script src=\"js/mail-script.js\"></script>\n");
      out.write("        <script src=\"js/stellar.js\"></script>\n");
      out.write("        <script src=\"vendors/imagesloaded/imagesloaded.pkgd.min.js\"></script>\n");
      out.write("        <script src=\"vendors/isotope/isotope-min.js\"></script>\n");
      out.write("        <script src=\"js/stellar.js\"></script>\n");
      out.write("        <script src=\"vendors/lightbox/simpleLightbox.min.js\"></script>\n");
      out.write("        <!--gmaps Js-->\n");
      out.write("        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE\"></script>\n");
      out.write("        <script src=\"js/gmaps.min.js\"></script>\n");
      out.write("        <!-- contact js -->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
