﻿<%@ Page Title="PostgreSQL Programming" Language="C#" MasterPageFile="~/Division5/Template.master" AutoEventWireup="true"
    CodeFile="Project5.aspx.cs" Inherits="_Project5_5" %>
	<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
	<h2>
		PostgreSQL Programming
	</h2>
	<div id="idCenterContent">
		This section is dedicated to PostgreSQL programming.
	</br>
	</br>
		PostgreSQL Instance
		</br>
		</br>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PostgreSQLConnectionString %>" SelectCommand="SELECT * FROM &quot;Test&quot;.&quot;Test&quot;" ProviderName="<%$ ConnectionStrings:PostgreSQLConnectionString.ProviderName %>">
		</asp:SqlDataSource>
		</br>
		</br>
		<asp:GridView
			  id="GridView1"
			  runat="server"
			  DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
			<Columns>
				<asp:BoundField DataField="Index" HeaderText="Index" SortExpression="Index" />
				<asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
			</Columns>
		</asp:GridView>
	</div>
</asp:Content>

<asp:Content ID="VersionContent" runat="server" ContentPlaceHolderID="VersionContent">
    <ul class="versionsUl">
        <li><a href="http://htkb.dyndns.org/Division5/Project5.html">HTML</a></li>
		<li><a href="http://htkb.dyndns.org/Division5/Project5.php">PHP</a></li>
		<li><a href="http://htkb.dyndns.org/Division5/Project5.shtml">Perl</a></li>
		<li><a href="http://htkb.dyndns.org/SSI/Division5/Project5.html">Apache SSI</a></li>
		<li><a href="http://htkb.dyndns.org/Javascript/Division5/Project5.html">HTML Javascript</a></li>
		<li><a href="http://htkb.dyndns.org/JQuery/Division5/Project5.html">JQuery</a></li>
		<li><a href="http://htkb.dyndns.org/AngularJS/Division5/Project5.html">Angular JS</a></li>
		<li><a href="http://htkb.dyndns.org/JSX/Division5/Project5.html">JSX</a></li>
		<li><a href="http://htkb.dyndns.org/XLST/Division5/Project5.xml">XSLT</a></li>
		<li><a href="http://htkb.dyndns.org:8080/JSFApplication/Division5/Project5.xhtml">JSF</a></li>
		<li><a href="http://htkb.dyndns.org:8080/JSPApplication/Division5/Project5.jsp">JSP</a></li>
		<li><a href="http://htkb.dyndns.org:8080/SpringMVC/Division5/Project5">JSP Spring MVC</a></li>
		<li><a href="http://htkb.dyndns.org:81/ASPNET/Division5/Project5.aspx">ASP.NET Javascript</a></li>
		<li><a href="http://htkb.dyndns.org:81/ASP/Division5/Project5.asp">ASP VBscript</a></li>
		<li><a href="http://htkb.dyndns.org:81/WebApplication/Division5/Project5.cshtml">ASP.NET Web App</a></li>
		<li><a href="http://htkb.dyndns.org:81/WebForm/Division5/Project5.aspx">ASP.NET Webform</a></li>
		<li><a href="http://htkb.dyndns.org:81/MVC/Division5/Project5">ASP.NET MVC App</a></li>
		<li><a href="http://htkb.dyndns.org:82/Division5/Project5">Python Web.py</a></li>
		<li><a href="http://htkb.dyndns.org:83/Division5/Project5">Ruby on Rails</a></li>
		<li><a href="http://htkb.dyndns.org:84/Division5/Project5">Node JS</a></li>
		<li><a href="http://htkb.dyndns.org:85/Division5/Project5">Angular 2+</a></li>
		<li><a href="http://htkb.dyndns.org:86/Division5/Project5">ReactJS</a></li>
    </ul>
</asp:Content>