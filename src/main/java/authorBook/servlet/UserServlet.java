package authorBook.servlet;

import authorBook.manager.UserManager;
import authorBook.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = "/users")
public class UserServlet extends HttpServlet {

    private UserManager userManager = new UserManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<User> allUsers = userManager.getAllUsers();

        req.setAttribute("allUsers",allUsers);
        req.getRequestDispatcher("/WEB-INF/users.jsp").forward(req,resp);

    }
}
