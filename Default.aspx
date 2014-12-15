<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/flexslider.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <embed src="HomePageSlides.aspx" />
    <div class="container">
        <h1>Recent Works</h1>
        <hr />
        <div id="slider" class="flexslider">
            <ul class="slides">
                <li>
                    <img src="assets/images/recent/PIC1.jpg" />
                    <p class="flex-caption">Caption for Picture 1</p>
                </li>
                <li>
                    <img src="assets/images/recent/PIC2.jpg" />
                    <p class="flex-caption">Caption for Picture 2</p>
                </li>
                <li>
                    <img src="assets/images/recent/PIC3.jpg" />
                    <p class="flex-caption">Caption for Picture 3</p>
                </li>
                <li>
                    <img src="assets/images/recent/PIC4.jpg" />
                    <p class="flex-caption">Caption for Picture 4</p>
                </li>
                <li>
                    <img src="assets/images/recent/PIC5.jpg" />
                    <p class="flex-caption">Caption for Picture 5</p>
                </li>
            </ul>
        </div>

        <h1 id="clients_speak">What Clients Say</h1>
        <hr />
        <br />
        <div class="row">
            <div class="col-md-6">
                <blockquote>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                    <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                </blockquote>
            </div>
            <div class="col-md-6">
                <blockquote class="pull-right">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                    <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                </blockquote>
            </div>
        </div>

        <h1 id="contact_us">Contact Us</h1>
        <hr />
        <div class="row push-60-down">
            <div class="col-md-4">
                <div class="control-label">First Name</div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="control-label">Last Name</div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="control-label">Email</div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-12">
                <br />
                <div class="control-label">Message</div>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" Rows="3" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="col-md-12 text-center">
                <br />
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-lg btn-primary" Text="Submit" />
            </div>
            <br />
        </div>
    </div>
    <script src="assets/js/jquery.flexslider.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').flexslider({
                animation: "fade",
                controlNav: true
            });
        });
    </script>
</asp:Content>
