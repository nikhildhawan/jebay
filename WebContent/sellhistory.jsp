<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sell History</title>

<link href="css/global.css" rel="stylesheet"/>

<script src="script/jQuery.js" type="text/javascript"></script>
<script src="script/app.js" type="text/javascript"></script>
</head>

<body>

	<%@include file="header.jsp"%> 

	<div class="bgContainer">
		<div class="tabsWrapper">
			<div class="tab">Activity</div>
		</div>
		<div class="wrapper">
			<div class="leftNav">
				<div class="bgShadow"><div class="bgLeft"><div class="mainLink"><a href="EbaySummary.action">Summary</a></div></div></div>
				<div class="bgShadow">
					<div class="bgLeft">
						<div class="mainLink"><a href="BiddingStatus.action" class="arrow active" id="arrow_0">Buy</a></div>
						<div class="subSection" id="subSection_0">
							<ul>
								<li><a href="#">Bids/Offers<span>(0)</span></a></li>
								<li><a href="#">Didn't win</a></li>
								<li class="last"><a href="#">Deleted</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="bgShadow">
					<div class="bgLeft">
						<div class="mainLink"><a href="#" class="arrow active" id="arrow_1">List</a></div>
						<div class="subSection" id="subSection_1">
							<ul>
								<li><a href="#">All Lists<span>(0)</span></a></li>
								<li><a href="#">Watch List</a></li>
								<li><a href="#">Wish List</a></li>
								<li class="last"><a href="#">+ Create a new List</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="bgShadow"><div class="bgLeft"><div class="mainLink"><a href="#">Saved Searches</a></div></div></div>
				<div class="bgShadow"><div class="bgLeft"><div class="mainLink"><a href="#">Saved Sellers</a></div></div></div>
				<div class="bgShadow"><div class="bgLeft"><div class="mainLink"><a href="Myebay.action">Purchase History</a></div></div></div>
				<div class="bgShadow">
					<div class="bgLeft">
						<div class="mainLink"><a href="SellHistory.action" class="arrow active">Sell History</a></div>
					</div>
				</div>
			</div>
			<div class="mainContent">
				<div class="panel">
					<div class="panelHead">
						<div class="heading">Sell History</div>
					</div>
					<div class="tabsContainer" id="tabsContainer_0">
						<div class="tabSection">
							<ul id="tabsHead_0" class="tabsHead">
								<li id="tabsHead_0_0" class="active"><span>SOLD</span></li>
								<li id="tabsHead_0_1"><span>CURRENTLY SELLING</span></li>
								<li id="tabsHead_0_2"><span>SELL TIMEOUT</span></li>
								
							</ul>
						</div>
						<div id="tabsContent_0_0" class="tabsContent">
							<s:iterator value="sellhis">
							<div class="panelHead2">
						<input type="checkbox"  class="left"/>
						<img src="images/ipad_mobil_watchs_02.jpg" width="205" height="156" class="left" />
						<div class="left">
							<div>
								<a href="#"><s:property value="item_name"/></a>
								<span class="grey">123456789</span>
							</div>
							<div>
								<a href="#" class="seperator">Buyer: <s:property value="t_buyer"/></a>
								<a href="#" class="seperator">124</a>
								<span class="grey">100%</span>
							</div>
							
							<div>
								<a href="#">Sale Date: <s:property value="t_timestamp"/></a>
								
							</div>
							
						</div>
						<div class="left">
							<div class="green">Rs. <s:property value="item_price"/></div>
							<div class="grey">Free shipping</div>
						</div>
					</div></s:iterator>
						</div>
						<div id="tabsContent_0_1" class="tabsContent">
									<div class="panelHead2">
						<input type="checkbox"  class="left"/>
						<img src="images/ipad_mobil_watchs_02.jpg" width="205" height="156" class="left" />
						<div class="left">
							<div>
								<a href="#">Orange Icecream</a>
								<span class="grey">123456789</span>
							</div>
							<div>
								<a href="#" class="seperator">Deals World</a>
								<a href="#" class="seperator">124</a>
								<span class="grey">100%</span>
							</div>
						</div>
						<div class="left">
							<div class="green">Rs. 325.00</div>
							<div class="grey">Free shipping</div>
						</div>
					</div>
						</div>
						<div id="tabsContent_0_2" class="tabsContent">
									<div class="panelHead2">
						<input type="checkbox"  class="left"/>
						<img src="images/ipad_mobil_watchs_02.jpg" width="205" height="156" class="left" />
						<div class="left">
							<div>
								<a href="#">Orange Icecream</a>
								<span class="grey">123456789</span>
							</div>
							<div>
								<a href="#" class="seperator">Deals World</a>
								<a href="#" class="seperator">124</a>
								<span class="grey">100%</span>
							</div>
						</div>
						<div class="left">
							<div class="green">Rs. 325.00</div>
							<div class="grey">Free shipping</div>
						</div>
					</div>
						</div>
						
					
					</div>
				</div>
				<div class="panel">
					<div class="panelHead">
						<div class="heading"></div>
					
				</div>
			</div>
		</div>
	</div>
	</div>
	
	<div><%@include file="footer.jsp"%></div>
</body>
</html>
