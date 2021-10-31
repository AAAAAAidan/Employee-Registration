<%@ include file="../fragments/header.jspf"%>

<div>

  <h2>Add a note</h2>
  <form action="notes" method="POST">
    <table>
      <tr>
        <td>Title</td>
        <td><input type="text" name="title" required /></td>
      </tr>
      <tr>
        <td>Description</td>
        <td><textarea name="description" rows="3" required></textarea></td>
      </tr>
      <tr>
        <td>Signature</td>
        <td><input type="text" name="signature" required /></td>
      </tr>
      <tr>
        <td><input type="submit" value="Save" /></td>
      </tr>
    </table>
  </form>

  <h2>List of notes</h2>
  <c:forEach items="${notes}" var="note">
    <div class="notepad">
      <h3>${note.title}</h3>
      <p>${note.description}</p>
      <p> - ${note.signature}</p>
    </div>
  </c:forEach>

</div>

<%@ include file="../fragments/footer.jspf"%>
