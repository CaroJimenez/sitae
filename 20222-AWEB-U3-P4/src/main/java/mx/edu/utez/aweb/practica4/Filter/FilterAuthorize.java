package mx.edu.utez.aweb.practica4.Filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(
        filterName = "FilterAuthorize",
        urlPatterns =  {
                "/*"
        }

)
public class FilterAuthorize implements Filter {
    String[] whiteList;


    public void init(FilterConfig config) throws ServletException {
        System.out.println("filtro iniciado...");
        whiteList = new String[2];
        whiteList[0] = "/login";
        whiteList[1] = "/index.jsp";
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession(false);
        String path = req.getServletPath();
        //saber si valido la sesion o no
        boolean isPublic = false;
        for(String item:whiteList){
            if (item.equals(path)){
                isPublic=true;
                break;
            }
        }
        if (isPublic){
            chain.doFilter(request, response); //jamas borrar esta linea
        }else{
            if(session!=null){
                System.out.println("hay session");
                System.out.println(session);
                if (session.getAttribute("name")!=null){
                    System.out.println("ya inicio sesión");
                    chain.doFilter(request, response);
                }else{
                    System.out.println("no ha iniciado sesión");
                    ((HttpServletResponse) response).sendRedirect("index.jsp");

                }
            }else{
                System.out.println("no hay sesion");
                ((HttpServletResponse) response).sendRedirect("index.jsp");
            }

        }
//        System.out.println("entro a:" +path);

    }

}
