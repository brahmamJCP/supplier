<!DOCTYPE html>
<html lang="en">
<head>
  <title>Suppliers Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./bootstrap.min.css">
  <script src="./jquery.min.js"></script>
  <script src="./bootstrap1.min.js"></script>
</head>
<body>
<cfobject component="supplier_transaction" name="supplierobj">
<cfset getAllSupplier = supplierobj.fn_getsupplier_list()>
<div class="container">
  <div class="page-header">
    <h1>Suppliers</h1>      
  </div>
  <table class="table table-bordered">
  	<tr><th align="left">Logo</th></tr>
  	<tr><th>
  		<table class="table table-striped table-bordered">
  			<tr>
  				<th></th>
  				<th>Suppliers</th>
  				<th>Active/Total Products</th>
			</tr>
			<cfloop from="1" to="#getAllSupplier.recordCount#" index="i">
				<tr>
				<cfoutput>				
					<td><a href="./supplier_products.cfm?sup_id=#getAllSupplier.supplier_id[i]#"><img src="./images/View_Icon.jpg"> </a></td>
					<td>#getAllSupplier.supplier_name[i]#</td>
					<td>#getAllSupplier.total_active_products[i]# / #getAllSupplier.total_products[i]# </td>				
				</cfoutput>
				</tr>
			</cfloop>
  		</table>
  		</th>
  	</tr>
  </table>     
</div>

</body>
</html>