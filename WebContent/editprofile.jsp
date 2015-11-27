<%@page import="in.jdsoft.studentmanagement.model.Courses"%>
<%@page import="java.util.Iterator"%>
<%@page import="in.jdsoft.studentmanagement.controller.CourseController"%>
<%@page import="java.util.ArrayList"%>
<%@page errorPage="error.jsp" %>
<%
		if(session.getAttribute("authenticated")!="true"){
		response.sendRedirect("user_login.jsp");
		  }
		else{%>
  		<%@ include file="master_menu.jsp" %>
   		<%@ include file="master_header.jsp" %>
   		<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>set title page</title>

    <!-- Bootstrap core CSS -->

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">
    <link href="css/datatables/tools/css/dataTables.tableTools.css" rel="stylesheet">

    <script src="js/jquery.min.js"></script>

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>

<body class="nav-md">

    <div class="container body">


        <div class="main_container">
<div class="right_col" role="main">
  <div class="">
                    
                        <div class="x_panel" style="height:500px;">
                        <div class="page-title">
                        <div class="title_left">
                            <h3>
                    User Edit Profile
                   
                   
              
                </h3></div>
                        </div>
                          <div class="x_title">
 				  
 				  <div class="clearfix">
 				  </div>
 				  </div>
                        
                        
                         <div class="x_content">
                                   <br />
                         <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                             <!-- start of form-group 1 -->
                            <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Name</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Email(User Name)</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="Read-Only Input">
                                            </div>
                                        </div><div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Type</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="Read-Only Input">
                                            </div>
                                        </div><div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Status</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="Read-Only Input">
                                            </div>
                                        </div>
                               <div class="form-group"><!-- start of form group 5 -->
                           <!-- start of col-md-6 col-sm-6 col-xs-12 col-md-offset-3 -->
                              <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                              
                              <button type="button" class="btn  btn-info btn-sm" data-toggle="modal" data-target=".bs-example-modal-lg">Reset Your Password</button>

                                <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">

                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">�</span>
                                                </button>
                                                <h4 class="modal-title" id="myModalLabel">Reset Password</h4>
                                            </div>
                                            <div class="modal-body">
                                                  <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Current Password</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                       <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> New Password</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">New Password</label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                       <div class="form-group"><!-- start of form group 5 -->
                           <!-- start of col-md-6 col-sm-6 col-xs-12 col-md-offset-3 -->
                              <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                              <button type="submit" class="btn  btn-danger btn-sm" name="">Cancel</button>               
                              <button type="submit" class="btn btn-primary btn-sm" name="">Clear</button>
                              <button type="submit" class="btn  btn-info btn-sm" name="">Save</button>
                                            </div>
                                            
</div>
</div>
                                        </div>
                                        </div>
                                        </div>
                                        
                                
                                
                             <button type="submit" class="btn  btn-danger btn-sm" name="">Cancel</button>               
                              <button type="submit" class="btn btn-primary btn-sm" name="">Clear</button>
                              <button type="submit" class="btn  btn-info btn-sm" name="">Save</button>
                              
                                             
                                </div><!-- end of col-md-6 col-sm-6 col-xs-12 col-md-offset-3 -->
                            </div><!-- end of form group 5 -->
                        
                              </form>
        </div>      
        </div>               
</div>
</div>
</div>
</div>
<div id="custom_notifications" class="custom-notifications dsp_none">
            <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
            </ul>
            <div class="clearfix"></div>
            <div id="notif-group" class="tabbed_notifications"></div>
        </div>

        <script src="js/bootstrap.min.js"></script>

        <!-- chart js -->
        <script src="js/chartjs/chart.min.js"></script>
        <!-- bootstrap progress js -->
        <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- icheck -->
        <script src="js/icheck/icheck.min.js"></script>

        <script src="js/custom.js"></script>


        <!-- Datatables -->
        <script src="js/datatables/js/jquery.dataTables.js"></script>
        <script src="js/datatables/tools/js/dataTables.tableTools.js"></script>
        <script>
            $(document).ready(function () {
                $('input.tableflat').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });

            var asInitVals = new Array();
            $(document).ready(function () {
                var oTable = $('#example').dataTable({
                    "oLanguage": {
                        "sSearch": "Search all columns:"
                    },
                    "aoColumnDefs": [
                        {
                            'bSortable': false,
                            'aTargets': [0]
                        } //disables sorting for column one
            ],
                    'iDisplayLength': 12,
                    "sPaginationType": "full_numbers",
                    "dom": 'T<"clear">lfrtip',
                    "tableTools": {
                        "sSwfPath": "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
                    }
                });
                $("tfoot input").keyup(function () {
                    /* Filter on the column based on the index of this element's parent <th> */
                    oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
                });
                $("tfoot input").each(function (i) {
                    asInitVals[i] = this.value;
                });
                $("tfoot input").focus(function () {
                    if (this.className == "search_init") {
                        this.className = "";
                        this.value = "";
                    }
                });
                $("tfoot input").blur(function (i) {
                    if (this.value == "") {
                        this.className = "search_init";
                        this.value = asInitVals[$("tfoot input").index(this)];
                    }
                });
            });
        </script>
            

</body>
</html>
 <%}%>