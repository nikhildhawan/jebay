<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Credit Card</title>
</head>
<body>
<h1>Credit Card Details</h1>
<form id="form1" name="form1" method="post" action="creditCardPayment">
<table width="968" height="239" border="0">
  <tr>
    <td>
    Credit Card Number
    <s:textfield name="creditcardnumber" value=""></s:textfield>
    <th></th>
       </td>
    <!-- <td>&nbsp;Valid Till</td> -->
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;
    Card holder name (as it appears on card)
    <s:textfield name="holdername" value=""></s:textfield>
    </td>
    <td colspan="2">&nbsp;
    CVV (3-digit card verification number)
    <s:textfield type="password" size="5" name="cvv" value=""></s:textfield><img alt="" src="images/icon_card_back.gif">
    </td>
  </tr>
  
</table>
<s:submit name="submit?item_id=<s:property value='item_id'/>" value="Pay Now">In the next step you may be redirected to your bank's website to verify yourself.</s:submit>
</form> 
</body>
</html>