<%@page import="model.beans.ProdottoBean"%>
<%@page import="model.beans.ContenutoBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<link href="stylesheets/headerFooter.css" rel="stylesheet" />
<link href="stylesheets/carrello.css" rel="stylesheet" />

<title>Pharmaélite</title>
</head>

<body>
	<%!String approssima(double x) {
		String y = Double.toString(x);
		return y.substring(0, y.indexOf(".") + 2);
	}%>


	<%
		ArrayList<ContenutoBean> carrello = (ArrayList<ContenutoBean>) request.getAttribute("carrello");
		ArrayList<ProdottoBean> listaProdotti = (ArrayList<ProdottoBean>) request.getAttribute("listaProdotti");
		double costoTot = (double) request.getAttribute("costoTot");
	%>

	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-collapse-main">
					<span class="sr-only"> Toggle navigation </span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a id="logo" class="navbar-brand"><img id="immagineLogo"
					class="img-rounded" src="Immagini/logo.PNG" alt="logo"></a>
			</div>

			<div class="collapse navbar-collapse" id="navbar-collapse-main">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="vociMenu" href="home.html"> <i
							class="fas fa-home"></i>
					</a></li>
					<li><a class="vociMenu" href="UserPage"> <i
							class="fas fa-user"></i>
					</a></li>
					<li><a class="vociMenu" href="#"> <i
							class="fas fa-shopping-cart"></i>
					</a></li>
				</ul>

				<form id="form" class="navbar-form navbar-left" action="Cerca">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search"
							name="search">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>

			</div>
		</div>

	</nav>

	<div class="container">
		<table id="cart" class="table table-hover table-condensed">

			<!-- carrello == null ||  if (carrello.size()==0) {-->
			
			<tbody <%if (!((carrello==null)||(carrello!=null&&carrello.size()==0))){%>id="emptyBody"<%} %>>
				<tr>
					<td><h2 class="text-center">Non ci sono prodotti nel
							carrello</h2></td>
				</tr>
			</tbody>

			<tfoot <%if (!((carrello==null)||(carrello!=null&&carrello.size()==0))){%> id="emptyFoot"<%} %>>
				<tr>
					<td class="text-center"><a href="home.html"
						class="btn btn-warning"> <i class="fa fa-angle-left"></i>
							Continua gli acquisti
					</a></td>
				</tr>
			</tfoot>
			<!--  
			
			scriptlet:  } else {
			
			<tbody id="emptyBody">
				<tr>
					<td><h2 class="text-center">Non ci sono prodotti nel
							carrello</h2></td>
				</tr>
			</tbody>

			<tfoot id="emptyFoot">
				<tr>
					<td class="text-center"><a href="home.html"
						class="btn btn-warning"> <i class="fa fa-angle-left"></i>
							Continua gli acquisti
					</a></td>
				</tr>
			</tfoot>
			-->
			<% if (!((carrello==null)||(carrello!=null&&carrello.size()==0))){%>
			<thead id="fullHead">
				<tr>
					<th style="width: 50%">Prodotto</th>
					<th style="width: 10%">Prezzo</th>
					<th style="width: 8%">Quantità</th>
					<th style="width: 22%" class="text-center">Prezzo Totale</th>
					<th style="width: 10%"></th>
				</tr>
			</thead>

			<tbody id="fullBody">

				<%
					for (int i = 0; i < carrello.size(); i++) {
							ProdottoBean p = listaProdotti.get(i);
							ContenutoBean c = carrello.get(i);
				%>
				<tr>
					<td data-th="Product">
						<div class="row">
							<div class="col-sm-2 hidden-xs">
								<img src="<%=p.getUrlImmagine()%>" alt="Immagine prodotto"
									class="img-responsive" />
							</div>
							<div class="col-sm-10">
								<h4 class="nomargin"><%=p.getNome()%></h4>
								<p><%=p.getDescrizione()%><p>
								<h3> <!-- javascript --> </h3>
							</div>
						</div>
					</td>
					<td data-th="Prezzo">€<%=p.getPrezzo()%></td>
					<td data-th="Quantità">
						<input type="hidden" name = "defaultQuantity" value="<%=c.getQuantità() %>">
						<input type="number" class="form-control text-center" min="0" max="15" value="<%=c.getQuantità()%>" onclick="aggiornaPrezzo(this)">
					</td>
					<td data-th="Prezzo totale" class="text-center">€ <%=approssima(c.getQuantità() * p.getPrezzo())%></td>
					<td class="actions" data-th="">
						<button class="btn btn-info btn-sm"> <i class="fa fa-refresh"></i> </button> 
						<input type="hidden" value="<%=p.getId()%>">
						<button class="btn btn-danger btn-sm"> <i class="fa fa-trash-o"></i></button>
					</td>
				</tr>
				<%
					}
				%>

			</tbody>



			<tfoot id="fullFoot">
				<tr class="visible-xs">
					<td class="text-center"><strong id="totale">Totale <%=approssima(costoTot)%></strong></td>
				</tr>
				<tr>
					<td><a href="home.html" class="btn btn-warning"><i
							class="fa fa-angle-left"></i> Continua gli acquisti</a></td>
					<td colspan="2" class="hidden-xs"></td>
					<td class="hidden-xs text-center"><strong>Totale €<%=approssima(costoTot)%></strong></td>
					<td><a href="Checkout" class="btn btn-success btn-block">Procedi
							all'ordine <i class="fa fa-angle-right"></i>
					</a></td>
				</tr>
			</tfoot>
			<%} %>
		</table>
	</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="Script/carrello.js"></script>
</body>
</html>
