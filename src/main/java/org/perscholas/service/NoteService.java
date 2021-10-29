package org.perscholas.service;

import org.perscholas.model.Note;

import java.util.ArrayList;
import java.util.List;

public class NoteService {

  private static List<Note> notes = new ArrayList<Note>();

  public List<Note> getAll() {
    System.out.println("Getting all notes!");
    return notes;
  }

  public void add(Note note) {
    System.out.println("Adding note!");
    notes.add(note);
  }

  public void remove(Note note) {
    System.out.println("Removing note!");
    notes.remove(note);
  }

}
