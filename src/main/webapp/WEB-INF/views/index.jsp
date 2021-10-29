<%@ include file="../fragments/ibumpedmyhead.jspf"%>
<%@ include file="../fragments/myheadhurts.jspf"%>

<div>
  <h4>Register</h4>
  <form>
    <table action="/employee" method="POST">
      <tr>
        <td>Title</td>
        <td><input type="text" name="title"></td>
      </tr>
      <tr>
        <td>Description</td>
        <td><input type="textarea" name="description"></td>
      </tr>
      <tr>
        <td>Description</td>
        <td><input type="text" name="signature"></td>
      </tr>
    </table>
  </form>
</div>

<%@ include file="../fragments/watchoutformyfoot.jspf"%>
