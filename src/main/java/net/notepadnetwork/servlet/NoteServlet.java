package net.notepadnetwork.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/note")
public class NoteServlet extends HttpServlet {

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    System.out.println("GET /note");
    request.getRequestDispatcher("/WEB-INF/views/note.jsp").forward(request, response);
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    System.out.println("POST /note");
    String username = request.getParameter("title");
    String description = request.getParameter("description");
    String signature = request.getParameter("signature");
    response.sendRedirect("/note");
  }

}
