package net.notepadnetwork.service;

import java.util.ArrayList;
import java.util.List;

import net.notepadnetwork.model.Note;

public class NoteService {

  private static List<Note> notes = new ArrayList<Note>();

  public Note get(int index) {
    System.out.println("Getting note #" + index +  "!");
    return notes.get(index);
  }

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
