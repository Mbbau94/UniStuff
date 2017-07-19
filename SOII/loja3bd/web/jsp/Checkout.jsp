<%@page language="java" contentType="text/html"%>
<%@page import="java.util.HashMap"%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Check Out</title>
  <link rel="stylesheet" href="css/eshop.css" type="text/css"/>
  </head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
<jsp:include page="LeftMenu.jsp" flush="true"/>
<%
  String base = (String)application.getAttribute("base");
%>

<div class="content">
  <h2>CheckOut</h2>

  <%
  HashMap shoppingCart = (HashMap)session.getAttribute("shoppingCart");
  if (shoppingCart != null && !shoppingCart.isEmpty()) {
  %>
    <form action="<%=base%>" method="POST">
      <input type="hidden" name="action" value="orderConfirmation"/>
      <table class="checkout">
        <tr>
          <th colspan="2">Delivery Details</th>
          </tr>
        <tr>
          <td>Contact Name:</td>
          <td><input type="text" name="contactName"/></td>
          </tr>
        <tr>
          <td>Delivery Address:</td>
          <td><input type="text" name="deliveryAddress"/></td>
          </tr>
        <tr>
          <th colspan="2">Credit Card Details</th>
          </tr>
        <tr>
          <td>Name on Credit Card:</td>
          <td><input type="text" name="ccName"/></td>
          </tr>
        <tr>
          <td>Credit Card Number:</td>
          <td><input type="text" name="ccNumber"/></td>
          </tr>
        <tr>
          <td>Credit Card Expiry Date:</td>
          <td><input type="text" name="ccExpiryDate"/></td>
          </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" value="Check Out"/></td>
          </tr>
        </table>
      </form>
<%
    }
  else {
    %><p class="error">ERROR: You can't check out an empty shopping cart!</p><% 
    }
  %>
  </div>
</body>
</html>
