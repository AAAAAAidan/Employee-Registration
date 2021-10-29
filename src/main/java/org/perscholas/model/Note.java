package org.perscholas.model;

public class Note {

  private String title;
  private String description;
  private String signature;

  public Note() {
  }

  public Note(String title, String description, String signature) {
    this.title = title;
    this.description = description;
    this.signature = signature;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getSignature() {
    return signature;
  }

  public void setSignature(String signature) {
    this.signature = signature;
  }

}
