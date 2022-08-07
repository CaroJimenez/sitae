package mx.edu.utez.aweb.practica4.control.product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletProduct",
        urlPatterns = {
                "/list-product", //get
                "/create-product", //get
                "/save-product", //post
                "/get-product", //get
                "/update-product", //post
                "/delete-product" //post

        })
public class ServletProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        switch (option){
            case "/list-product":
                request.getRequestDispatcher("/WEB-INF/view/products/list-product.jsp").forward(request, response);
                break;
            case "/create-product":
                request.getRequestDispatcher("/WEB-INF/view/products/create-product.jsp").forward(request, response);
                break;
            case "/get-product":
                request.getRequestDispatcher("/WEB-INF/view/products/get-product.jsp").forward(request, response);
                break;
            default:
                response.sendRedirect("/list-products");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
