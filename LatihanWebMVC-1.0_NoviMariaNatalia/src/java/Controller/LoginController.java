/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import Model.User;

/**
 *
 * @author Novi Maria Natalia
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //Ambil parameter dari view form login
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            // create objek User dari inputan form login
            User user = new User(username, password);

            // panggil method Validasi login dari objek User
            if (user.isValidUser()) {
                // Jika login berhasil, arahkan ke halaman welcome.jsp
                HttpSession session = request.getSession();
                session.setAttribute("user", user);  // Menyimpan objek User dalam session
                response.sendRedirect("welcome.jsp");
            } else {
                // Jika login gagal, set error message dan tampilkan lagi login.jsp
                request.setAttribute("errorMessage", "username atau password anda salah!");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        } catch (ServletException | IOException e) {
            // Jika ada error, tampilkan error page
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Terjadi kesalahan dalam memproses request");
        }
    }
}
