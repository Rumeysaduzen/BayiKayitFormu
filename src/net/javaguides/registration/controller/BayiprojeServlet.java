package net.javaguides.registration.controller;


import net.javaguides.registration.model.Bayiproje;
import net.javaguides.registration.dao.BayiprojeDao;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class BayiprojeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private BayiprojeDao bayiprojeDao = new BayiprojeDao();

    public BayiprojeServlet() {
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
        String datetime = request.getParameter("datetime");
        String que1 = request.getParameter("que1");
        String que2 = request.getParameter("que2");
        String que3 = request.getParameter("que3");
        String que4 = request.getParameter("que4");
        String note = request.getParameter("note");

        Bayiproje bayiproje = new Bayiproje();


        bayiproje.setName(name);

        bayiproje.setSurname(surname);
        bayiproje.setTc(tc);
        bayiproje.setAddress(address);
        bayiproje.setPhone(phone);
        bayiproje.setEmail(email);
        bayiproje.setQue1(que1);
        bayiproje.setQue2(que2);
        bayiproje.setQue3(que3);
        bayiproje.setQue4(que4);
        bayiproje.setNote(note);

        try {
            bayiprojeDao.registerBayiproje(bayiproje);


        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/indexdetails.jsp");
        dispatcher.forward(request, response);

    }

}