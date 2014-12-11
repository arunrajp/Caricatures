<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.master" AutoEventWireup="true" CodeFile="CaricatureCart.aspx.cs" Inherits="CaricatureCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="modal fade" id="progress" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">Processing</h4>
                </div>
                <div class="modal-body">
                    <h3>Please Wait...</h3>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <h1>Your Template is a Click Away!</h1>
        <hr />
        <div class="row">
            <div class="col-lg-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Categories</h3>
                    </div>
                    <div class="panel-body">
                        <div id="divCategories" class="list-group" runat="server">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-8">
                                <h3 class="panel-title">Templates</h3>
                            </div>
                            <div class="col-md-4">
                                <div class="btn-group pull-right">
                                    <button type="button" class="btn btn-info">Sort Order</button>
                                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#" data-toggle="modal" data-target="#progress">All</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#" data-toggle="modal" data-target="#progress">Price: High to Low</a></li>
                                        <li><a href="#" data-toggle="modal" data-target="#progress">Price: Low to High</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#" data-toggle="modal" data-target="#progress">Most Popular</a></li>
                                        <li><a href="#" data-toggle="modal" data-target="#progress">New Arrivals</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="divTemplates" class="row">
                            <div id="divSelCategoryAlert" class="col-lg-12">
                                <div class="alert alert-info" role="alert">
                                    <h3>
                                        <i class="glyphicon glyphicon-info-sign"></i>
                                        Please Select a Category!
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
