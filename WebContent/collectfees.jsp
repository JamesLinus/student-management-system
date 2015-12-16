<%@page errorPage="error.jsp" %>
<%
		if(session.getAttribute("authenticated")!="true"){
		response.sendRedirect("user_login.jsp");
		  }
		else{%>
  		
 <!DOCTYPE html>
<html lang="en">
<head>
   <link href="css/bootstrap.min.css" rel="stylesheet">
   <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
   <link href="css/animate.min.css" rel="stylesheet">
    <!-- Custom styling plus plugins -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">
    <link href="css/shadow.css" rel="stylesheet">
    <!-- editor -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
    <link href="css/editor/external/google-code-prettify/prettify.css" rel="stylesheet">
    <link href="css/editor/index.css" rel="stylesheet">
    <!-- select2 -->
    <link href="css/select/select2.min.css" rel="stylesheet">
    <!-- switchery -->
    <link rel="stylesheet" href="css/switchery/switchery.min.css" />
    <title>Collect Fees</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="//oss.maxcdn.com/bootbox/4.2.0/bootbox.min.js"></script>
    <script src="//code.jquery.com/jquery-1.8.2.min.js"></script> 
    <script type = "text/javascript"  src = "http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
     <script src="js/mycustom/autosearch.js" ></script>
     <script src="js/mycustom/crud.js" ></script>
     <script src="js/mycustom/ajax/collectfees.js" ></script>
     <script type = "text/javascript">
         $(document).ready(function() {
        	 $("#getFeesDetails").click(function(event){
        			var id = $("#studentId").val();
        	       if(id){
        	    	   var valid=true;
        	    	   if(valid){
        	    		   loadReceiptDetails(id);   
        	    	   }
        	    	   else{
        	    		   alert("Enter the correct Student Id");
        	    	   }
        	    	}
        	       else{
        	    	   alert("Enter the Student Id");
        	    	}
        	          
        	    });
         });
      </script>
</head>
<body class="nav-md">
  <div class="container body">
    <div class="main_container">
    <%@ include file="master_menu.jsp" %>
   		<%@ include file="master_header.jsp" %>
      <div class="right_col" role="main" >
        <div id="ListDiv" style="display:block;"> <br>
          <br />
 				<div class="x_title">
 				  <div class="clearfix">
 				  </div>
 				</div> 
 				  <div class="x_title">
 				  <div class="clearfix">
 				     <div class="form-group">
                            
                               <div class="col-md-3 col-sm-3 col-xs-3">
                                     <input type="text" id="studentId" name="studentId" required="required" class="form-control col-md-7 col-xs-12" placeholder="Enter Student Id">
                               </div>
                              <input type="button"  class="btn btn-primary" id="getFeesDetails" name="getFeesDetails" value="Fees Details">
                               
                     </div>
 				  </div>
 				</div>
 </div><!-- end of LisDiv div -->
                                
	<div id="FormDiv" style="display: none;"> 
       <div class="clearfix"></div><!-- end of clearfix div -->
           <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                 <div id="fees-details" class="x_panel" style="height:500px;">
                 	<div  id="printList" class="table-responsive">
    <table id="table" class="table table-bordered table-striped">
        <thead >
            <tr>
                <th>Receipt Id</th>
                <th>Student Id</th>
                <th>Semester</th>
                <th>Total Fees</th>
                <th>Pending Fees</th>
                <!--<th>Amount</th> -->
            </tr>
        </thead>
        <tbody id="bodyContent">
            <!-- Content Based on User input from ajax method -->
            <tr></tr>    
        </tbody>
    </table>
</div>
<div class="form-group col-md-12 col-sm-12 col-xs-12">
                         <label style="text-align: right;" class="control-label col-md-9 col-sm-6 col-xs-12" for="pendingfees">Total Pending Fees
                          </label>
                      <div class="col-md-3 col-sm-3 col-xs-3">
                          <label  id="pendingfees" style="text-align: right;" class="control-label col-md-4 col-sm-12 col-xs-6">
                          </label>
                          
                      </div>
                </div>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <div class="form-group col-md-12 col-sm-12 col-xs-12">
                      <label id="payingfees" style="text-align: right;" class="control-label col-md-7 col-sm-6">Enter Amount to be paid
                      </label>
                      <div class="col-md-2 col-sm-6">
                          <input type="text" id="payingfees" placeholder="Enter the amount" name="payingfees" required="required" class="form-control col-md-3 col-xs-12 col-sm-6">
                      </div>
                      <button type="button" data-toggle="modal" data-target="#confirm-delete" class="btn btn-success col-md-1" name="addCourse" ><span class="glyphicon glyphicon-ok" ></span></button>
                 </div>
                 
                 
                 <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5>Do you want to add this fees for this student?</h5>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Ok</a>
            </div>
        </div>
    </div>
</div>
                 
                 
                 
                 
                 
                 
                 
                 </div><!-- end of x-panel div -->
              </div><!-- end of col-md-12 col-sm-12 col-xs-12 div -->
           </div><!-- end of row div -->
    </div><!-- end of FormDiv div --> 
  </div><!-- end of right col -->
 </div><!-- end of main body -->
</div><!-- end of container body -->

<div id="custom_notifications" class="custom-notifications dsp_none">
     <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
     </ul>
     <div class="clearfix"></div>
     <div id="notif-group" class="tabbed_notifications"></div>
</div>

  <script src="js/bootstrap.min.js"></script>
  
  <!-- bootstrap progress js -->
    <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
  
  <!-- custom js -->
    <script src="js/custom.js"></script>
     <!-- formHide jquery -->
  		<script type="text/javascript" src="js/formHide.js"></script>
 	<!-- /formHide jquery -->
  <!-- /custom js -->
     
  <script>
        NProgress.done();
   </script>
   <!-- /datepicker -->
  <!-- /footer content -->
</body>
</html>
 <%}%>
 