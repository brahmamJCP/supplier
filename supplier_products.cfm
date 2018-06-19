<!DOCTYPE html>
<html lang="en">
<head>
  <title>Suppliers Products</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./bootstrap.min.css">
  <script src="./jquery.min.js"></script>
  <script src="./bootstrap1.min.js"></script>
<style>
	div.hr {
  margin-top: 20px;
  margin-bottom: 20px;
  border: 0;
  border-top: 1px solid #eee;
  text-align: center;
  height: 0px;
  line-height: 0px;
}

.hr-title {
  background-color: #fff;
}
.productbox {
    background-color:#ffffff;
	padding:10px;
	margin-bottom:10px;
	-webkit-box-shadow: 0 8px 6px -6px  #999;
	   -moz-box-shadow: 0 8px 6px -6px  #999;
	        box-shadow: 0 8px 6px -6px #999;
}

.producttitle {
    font-weight:bold;
	padding:5px 0 5px 0;
}

.productprice {
	border-top:1px solid #dadada;
	padding-top:5px;
}

.pricetext {
	font-weight:bold;
	font-size:1.4em;
}
</style>
<script>
        $(document).ready(function() {
			$('.showactiveinactive').change(function(){
				if($('.showactiveinactive:checked').length==1){
				    $('.activediv').hide();
				    $('.INactivediv').show();
				}else{
					$('.INactivediv').hide();
				    $('.activediv').show();
				  }

			});
        });
</script>
</head>
<body>
<cfobject component="supplier_transaction" name="supplierobj">
<cfset getAllSupplier = supplierobj.fn_get_suppli_prodlist('#url.sup_id#')>
<cfset getInActiveAllSupplier = supplierobj.fn_get_suppli_Inactprodlist('#url.sup_id#')>
<!--- <cfdump var="#getAllSupplier#"> ---> 
<div class="container">
  <div class="page-header">
    <h1>Suppliers</h1>      
  </div>
  <table class="table table-bordered">
  	<tr>
		<th align="left">Logo</th>
	</tr>
	
  	<tr>
		<th>
  			<table class="table table-bordered">
					<cfoutput>
					<div class="row">
				        <div class="col-sm-2">
				           <img src="no_image" class="img-circle" height="55" width="55" alt="product image">
				        </div>
				        <div class="col-sm-6">
				            <p>#getAllSupplier.SUPPLIER_NAME#</p>
				        </div>
      				</div>
					<div class="row">
				        <div class='hr'>
    						<span class='hr-title'>Products</span>
						</div>
					</div>
					<div class="checkbox" id="showinactiveprod">
					  <label><input type="checkbox" class="showactiveinactive">Show Inactive Products</label>
					</div>
					</cfoutput>
					<div class="activediv">
						<cfloop from="1" to="#getAllSupplier.recordcount#" index="i" step="4">
						<cfoutput>
						<div class="row">
							<cfif getAllSupplier.PRODUCT_TITLE[i] neq ''>
							<div class="col-md-2 column productbox">
							    <img src="./images/No_Image.gif" class="img-responsive">
							    <div class="producttitle">#getAllSupplier.PRODUCT_TITLE[i]#</div>
							    <div class="productprice"><div class="pricetext">Rs. #getAllSupplier.PRICE[i]#</div></div>
							</div>
							</cfif>
							<cfif getAllSupplier.PRODUCT_TITLE[i+1] neq ''>
							<div class="col-md-2 column productbox">
							    <img src="./images/No_Image.gif" class="img-responsive">
							    <div class="producttitle">#getAllSupplier.PRODUCT_TITLE[i+1]#</div>
							    <div class="productprice"><div class="pricetext">Rs. #getAllSupplier.PRICE[i+1]#</div></div>
							</div>
							</cfif>
							<cfif getAllSupplier.PRODUCT_TITLE[i+2] neq ''>
							<div class="col-md-2 column productbox">
							    <img src="./images/No_Image.gif" class="img-responsive">
							    <div class="producttitle">#getAllSupplier.PRODUCT_TITLE[i+2]#</div>
							    <div class="productprice"><div class="pricetext">Rs. #getAllSupplier.PRICE[i+2]#</div></div>
							</div>
							</cfif>
							<cfif getAllSupplier.PRODUCT_TITLE[i+3] neq ''>
							<div class="col-md-2 column productbox">
							    <img src="./images/No_Image.gif" class="img-responsive">
							    <div class="producttitle">#getAllSupplier.PRODUCT_TITLE[i+3]#</div>
							    <div class="productprice"><div class="pricetext">Rs. #getAllSupplier.PRICE[i+3]#</div></div>
							</div>
							</cfif>						
							</div>
						</cfoutput>
						</cfloop>
					</div>
					
					<div class="INactivediv" style="display:none">
						<cfloop from="1" to="#getInActiveAllSupplier.recordcount#" index="i" step="4">
						<cfoutput>
						<div class="row">
							<cfif getInActiveAllSupplier.PRODUCT_TITLE[i] neq ''>
							<div class="col-md-2 column productbox">
							    <img src="./images/No_Image.gif" class="img-responsive">
							    <div class="producttitle">#getInActiveAllSupplier.PRODUCT_TITLE[i]#</div>
							    <div class="productprice"><div class="pricetext">Rs. #getInActiveAllSupplier.PRICE[i]#</div></div>
							</div>
							</cfif>
							<cfif getInActiveAllSupplier.PRODUCT_TITLE[i+1] neq ''>
							<div class="col-md-2 column productbox">
							    <img src="./images/No_Image.gif" class="img-responsive">
							    <div class="producttitle">#getInActiveAllSupplier.PRODUCT_TITLE[i+1]#</div>
							    <div class="productprice"><div class="pricetext">Rs. #getInActiveAllSupplier.PRICE[i+1]#</div></div>
							</div>
							</cfif>
							<cfif getInActiveAllSupplier.PRODUCT_TITLE[i+2] neq ''>
							<div class="col-md-2 column productbox">
							    <img src="./images/No_Image.gif" class="img-responsive">
							    <div class="producttitle">#getInActiveAllSupplier.PRODUCT_TITLE[i+2]#</div>
							    <div class="productprice"><div class="pricetext">Rs. #getInActiveAllSupplier.PRICE[i+2]#</div></div>
							</div>
							</cfif>
							<cfif getInActiveAllSupplier.PRODUCT_TITLE[i+3] neq ''>
							<div class="col-md-2 column productbox">
							    <img src="./images/No_Image.gif" class="img-responsive">
							    <div class="producttitle">#getInActiveAllSupplier.PRODUCT_TITLE[i+3]#</div>
							    <div class="productprice"><div class="pricetext">Rs. #getInActiveAllSupplier.PRICE[i+3]#</div></div>
							</div>
							</cfif>						
							</div>
						</cfoutput>
						</cfloop>
					</div>

				</table>
			</th>
			</tr>
		</table>
</div>
</body>
</html>