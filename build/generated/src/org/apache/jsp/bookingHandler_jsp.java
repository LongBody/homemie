package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dal.AccountDAO;
import model.AccountUser;
import dal.AccountDAO;

public final class bookingHandler_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <title>Home Mie</title>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css\">\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section>\n");
      out.write("            <nav class=\"navbar navbar-expand-sm navbar-light bg-light\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <a class=\"navbar-brand\" href=\"indexController\"><img src=\"./image/logo_brand.png\" class=\"logo__brand\" style=\"height: 70px;\"></a>\n");
      out.write("                    <button class=\"navbar-toggler d-lg-none\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapsibleNavId\" aria-controls=\"collapsibleNavId\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"collapsibleNavId\">\n");
      out.write("\n");
      out.write("                        <!-- <form class=\"form-inline my-2 my-lg-0\">\n");
      out.write("                            <input class=\"form-control mr-sm-2\" type=\"text\" placeholder=\"Search\">\n");
      out.write("                            <button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Search</button>\n");
      out.write("                        </form> -->\n");
      out.write("                        <ul class=\"navbar-nav ml-auto mt-2 mt-lg-0\">\n");
      out.write("\n");
      out.write("                            ");

                                Cookie cookie = null;
                                Cookie[] cookies = null;
                                String email = "";
                                String password = "";
                                String name = (String) request.getAttribute("UserLogin");
                                // Get an array of Cookies associated with this domain
                                cookies = request.getCookies();
                                if (cookies != null) {
                                    for (int i = 0; i < cookies.length; i++) {
                                        cookie = cookies[i];
                                        if (cookie.getName().equals("email")) {
                                            email = cookie.getValue();
                                        }
                                        if (cookie.getName().equals("password")) {
                                            password = cookie.getValue();
                                        }

                                    }
                                }
                                AccountDAO dal = new AccountDAO();

                                AccountUser account = dal.getAccountByUP(email, password);

                                if (account != null) {
                                    name = account.getName();
                                }


                            
      out.write("            \n");
      out.write("\n");
      out.write("                            ");
      if (name != null) {


                            
      out.write("\n");
      out.write("                            <div class=\"dropdown\">\n");
      out.write("                                <a class=\"btn btn-secondary dropdown-toggle btn-sm\"  href=\"#\" role=\"button\" id=\"dropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                    ");
      out.print( name);
      out.write("\n");
      out.write("                                </a>\n");
      out.write("\n");
      out.write("                                <div class=\"dropdown-menu\" aria-labelledby=\"dropdownMenuLink\">\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\">Informations</a>\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"#\">Booking History</a>\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"logoutController\">Log Out</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            ");

                            } else {
                            
      out.write("\n");
      out.write("                            <li class=\"nav-item active\">\n");
      out.write("                                <a class=\"nav-link\" href=\"./signup.jsp\">Đăng Kí </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item active\">\n");
      out.write("                                <a class=\"nav-link\" href=\"./login.jsp\">Đăng Nhập</a>\n");
      out.write("                            </li>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </section>\n");
      out.write("                            \n");
      out.write("                            <section style=\"padding-top: 130px; margin-bottom: 40px; background-color: #F4F4F4; border-radius : 34px ; padding-bottom: 50px;\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-7\">\n");
      out.write("                    <h6 style=\"font-size: 16px; font-weight: 700;\">2 đêm tại Uri House</h6>\n");
      out.write("                    <div style=\"display: flex; margin-bottom: 20px;\">\n");
      out.write("                        <div style=\"background-color: #fff; border-radius: 10px; padding:30px 20px; width: 250px;\">\n");
      out.write("                            <div style=\"height: 2px; width: 60%; background-color: green;\"></div>\n");
      out.write("                            <div>Nhận Phòng</div>\n");
      out.write("                            <div>24/11/2000</div>\n");
      out.write("                        </div>\n");
      out.write("                        <div style=\"background-color: #fff; border-radius: 10px; padding:30px 20px; margin-left: 20px;width: 250px;\">\n");
      out.write("                            <div style=\"height: 2px; width: 60%; background-color: tomato;\"></div>\n");
      out.write("                            <div>Nhận Phòng</div>\n");
      out.write("                            <div>25/11/2000</div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <h6 style=\"font-size: 16px; font-weight: 700;\">Trách nhiệm vật chất</h6>\n");
      out.write("                    <p style=\"margin-bottom: 30px; color: gray; font-size: 14px;\">\n");
      out.write("                        Khách hàng chịu mọi trách nhiệm thiệt hại về tài sản đã gây ra tại chỗ ở trong thời gian lưu trú .\n");
      out.write("                    </p>\n");
      out.write("\n");
      out.write("                    <h6 style=\"font-size: 16px; font-weight: 700;\">Nội quy chỗ ở</h6>\n");
      out.write("                    <p style=\"color: gray; font-size: 14px; display: grid;margin-bottom: 50px;\">\n");
      out.write("                        Yêu cầu chứng minh thư , thẻ căn cước/hộ chiếu hoặc đặt cọc chỗ nghỉ\n");
      out.write("                        <span>Hạn chế làm ồn sau 10h tối</span>\n");
      out.write("                    </p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <form>\n");
      out.write("                        <h6 style=\"font-size: 24px; font-weight: 700;\">Thông tin của bạn</h6>\n");
      out.write("                        <div style=\"display: flex;\">\n");
      out.write("                            <span style=\"color: #f65e38;\">* </span>\n");
      out.write("                            <h6 style=\"font-size: 14px; font-weight: 600; margin-left: 5px;\"> Tên khách hàng</h6>\n");
      out.write("                        </div>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Tên khách hàng\" style=\"width: 500px; margin-top: 10px; \">\n");
      out.write("                        <div style=\"display: flex; margin-top: 20px;\">\n");
      out.write("                            <div>\n");
      out.write("                                <div style=\"display: flex;\">\n");
      out.write("                                    <span style=\"color: #f65e38;\">* </span>\n");
      out.write("                                    <h6 style=\"font-size: 14px; font-weight: 600; margin-left: 5px;\">Số điện thoại</h6>\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Số điện thoại\" style=\"width: 220px; margin-top: 10px; \">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div style=\"margin-left: 20px;\">\n");
      out.write("                                <div style=\"display: flex;\">\n");
      out.write("                                    <span style=\"color: #f65e38;\">* </span>\n");
      out.write("                                    <h6 style=\"font-size: 14px; font-weight: 600; margin-left: 5px;\"> Email</h6>\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <input type=\"email\" class=\"form-control\" id=\"exampleInputPassword1\" placeholder=\"Địa chỉ Email\" style=\"width: 220px; margin-top: 10px; \">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <input class=\"btn\" type=\"submit\" value=\"Thanh Toán\" style=\"background-color: #f65e38; color: white; margin-top: 20px;\" />\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <p style=\"color: gray; font-size: 14px; display: grid;\">\n");
      out.write("\n");
      out.write("                    </p>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4\" style=\"background-color: #fff; border-radius: 10px; padding:30px 20px 50px 20px; height:100%;\">\n");
      out.write("                    <div style=\"display: flex;width: 100%;\">\n");
      out.write("                        <div style=\"display: inline-block;width: 50%;\">\n");
      out.write("                            <span style=\"font-weight: bold; font-family: sans-serif;\">Uri House </span>\n");
      out.write("                            <p> <i class=\"fas fa-map-marker-alt\" style=\"color: #f65e38;\"></i><span style=\"color: gray; font-size: 14px; margin-left: 5px;\">Đà Nẵng , Việt Nam</span> </p>\n");
      out.write("                        </div>\n");
      out.write("                        <div style=\"margin-left: 50px;width: 50%; justify-content: flex-end;\">\n");
      out.write("                            <img src=\"https://cdn.luxstay.com/users/368986/ikKVuce90qi2pI5im_W2RHRt.jpg\" style=\"height: 100px;\" />\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <hr/>\n");
      out.write("                    <div>\n");
      out.write("                        <div>\n");
      out.write("                            <i class=\"fas fa-calendar-alt\" style=\"color: #f65e38;margin-right: 3px;\"></i> 2 ngày - 24/11/2020 - 25/11/2020\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <hr/>\n");
      out.write("                    <div>\n");
      out.write("                        <div>\n");
      out.write("                            <span style=\"font-weight: bold; font-family: sans-serif;font-size: 14px;\">Tổng Tiền : </span> <span> 49$</span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <hr/>\n");
      out.write("                    <div>\n");
      out.write("                        <div>\n");
      out.write("                            <span style=\"font-weight: bold; font-family: sans-serif; font-size: 14px;\">Chính Sách Huỷ Phòng : </span> <span> Miễn phí huỷ phòng trong vòng 48h và sau khi đặt phòng thành công trước 5 ngày so với thời gian check in</span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <section class=\"footer__section\">\n");
      out.write("        <!-- Footer -->\n");
      out.write("        <footer class=\"page-footer font-small mdb-color lighten-3 pt-4 footer__wrapper\">\n");
      out.write("\n");
      out.write("            <!-- Footer Links -->\n");
      out.write("            <div class=\"container text-center text-md-left\">\n");
      out.write("\n");
      out.write("                <!-- Grid row -->\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <!-- Grid column -->\n");
      out.write("                    <div class=\"col-md-4 col-lg-3 mr-auto my-md-4 my-0 mt-4 mb-1\">\n");
      out.write("\n");
      out.write("                        <!-- Content -->\n");
      out.write("                        <h5 class=\"font-weight-bold text-uppercase mb-4\">Home Mie</h5>\n");
      out.write("                        <p>Home Mie hiện là nền tảng đặt phòng trực tuyến #1 Việt Nam</p>\n");
      out.write("                        <p>Đồng hành cùng chúng tôi, bạn có những chuyến đi mang đầy trải nghiệm. Với Home Mie, việc đặt chỗ ở, biệt thự nghỉ dưỡng, khách sạn, nhà riêng, chung cư... trở nên nhanh chóng, thuận tiện và dễ dàng.</p>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Grid column -->\n");
      out.write("\n");
      out.write("                    <hr class=\"clearfix w-100 d-md-none\">\n");
      out.write("\n");
      out.write("                    <!-- Grid column -->\n");
      out.write("                    <div class=\"col-md-2 col-lg-2 mx-auto my-md-4 my-0 mt-4 mb-1\">\n");
      out.write("\n");
      out.write("                        <!-- Links -->\n");
      out.write("                        <h5 class=\"font-weight-bold text-uppercase mb-4\">About</h5>\n");
      out.write("\n");
      out.write("                        <ul class=\"list-unstyled\">\n");
      out.write("                            <li>\n");
      out.write("                                <p>\n");
      out.write("                                    <a href=\"#!\" class=\"link__footer\">Home</a>\n");
      out.write("                                </p>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <p>\n");
      out.write("                                    <a href=\"#!\" class=\"link__footer\">About Us</a>\n");
      out.write("                                </p>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <p>\n");
      out.write("                                    <a href=\"#!\" class=\"link__footer\">Contact</a>\n");
      out.write("                                </p>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <p>\n");
      out.write("                                    <a href=\"#!\" class=\"link__footer\">Help</a>\n");
      out.write("                                </p>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Grid column -->\n");
      out.write("\n");
      out.write("                    <hr class=\"clearfix w-100 d-md-none\">\n");
      out.write("\n");
      out.write("                    <!-- Grid column -->\n");
      out.write("                    <div class=\"col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1\">\n");
      out.write("\n");
      out.write("                        <!-- Contact details -->\n");
      out.write("                        <h5 class=\"font-weight-bold text-uppercase mb-4\">Address</h5>\n");
      out.write("\n");
      out.write("                        <ul class=\"list-unstyled\">\n");
      out.write("                            <li>\n");
      out.write("                                <p>\n");
      out.write("                                    <i class=\"fas fa-home mr-3\"></i> FPT University </p>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <p>\n");
      out.write("                                    <i class=\"fas fa-envelope mr-3\"></i> longnthe140271@gmail.com</p>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <p>\n");
      out.write("                                    <i class=\"fas fa-phone mr-3\"></i> + 03 449 142 82</p>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <p>\n");
      out.write("                                    <i class=\"fas fa-print mr-3\"></i> + 03 645 345 12</p>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <hr class=\"clearfix w-100 d-md-none\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"col-md-2 col-lg-2 text-center mx-auto my-4\">\n");
      out.write("\n");
      out.write("                        <h5 class=\"font-weight-bold text-uppercase mb-4\">Follow Us</h5>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <a type=\"button\" class=\"btn-floating btn-fb\">\n");
      out.write("                            <i class=\"fab fa-facebook-f\"></i>\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                        <a type=\"button\" class=\"btn-floating btn-gplus\">\n");
      out.write("                            <i class=\"fab fa-google-plus-g\"></i>\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"footer-copyright text-center py-3\">© 2020 Copyright:\n");
      out.write("                <a href=\"./index.html\"> Homie</a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("                            \n");
      out.write("           <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>                 \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
