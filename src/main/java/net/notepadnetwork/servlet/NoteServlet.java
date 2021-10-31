package net.notepadnetwork.servlet;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.notepadnetwork.model.Note;
import net.notepadnetwork.service.NoteService;

@WebServlet("/notes")
public class NoteServlet extends HttpServlet {

  private NoteService noteService = new NoteService();

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    System.out.println("GET /notes");
    List<Note> notes = noteService.getAll();
    Collections.reverse(notes);
    request.setAttribute("notes", notes);
    request.getRequestDispatcher("/WEB-INF/views/notes.jsp").forward(request, response);
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    System.out.println("POST /notes");
    String username = request.getParameter("title");
    String description = request.getParameter("description");
    String signature = request.getParameter("signature");
    Note note = new Note(username, description, signature);
    noteService.add(note);
    response.sendRedirect("notes");
  }

}
