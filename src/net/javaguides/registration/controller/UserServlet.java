package net.javaguides.registration.controller;


import net.javaguides.registration.model.User;
import net.javaguides.registration.dao.UserDAO;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/index")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDao;

    public void init() {
        userDao = new UserDAO();
    }


    public UserServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Server at: ").append(request.getContextPath());

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
        dispatcher.forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String tc = request.getParameter("tc");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        String que1 = request.getParameter("que1");
        String que2 = request.getParameter("que2");
        String que3 = request.getParameter("que3");
        String que4 = request.getParameter("que4");
        String note = request.getParameter("note");

        User newUser = new User(name, surname, tc, address, email, phone,  que1, que2, que3, que4, note);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/indexdetails.jsp");
        dispatcher.forward(request, response);

    }

}