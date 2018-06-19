<cfcomponent output="false" persistent="false">
<cffunction name="fn_getsupplier_list" access="public" returntype="query" >
	<cfquery name="getsupplier_list" datasource="#application.dsn#">
		select 
			s.supplier_id, 
			s.supplier_name,
			COUNT(mt.product_id) total_products,
			sum((pd.active = 1)) AS total_active_products
		from 
			supplier as s
		left outer join master_tb as mt
			on (s.supplier_id = mt.supplier_id)  
		left outer join products as pd
			on pd.product_id = mt.product_id
		group by supplier_id, supplier_name
		order by s.supplier_name
	</cfquery>
	<cfreturn getsupplier_list>
</cffunction>


<cffunction name="fn_get_suppli_prodlist" access="remote" returntype="query" >
	<cfargument name="supplier_id" required="yes" type="int">
	<cfquery name="getsupplier" datasource="#application.dsn#">
		select 
			* 
		from master_tb mt
		inner join products pd
		on (pd.product_id = mt.product_id)
		where supplier_id = <cfqueryparam cfsqltype="int" value="#ARGUMENTS.supplier_id#"> and active = 1
	</cfquery>
	<cfreturn getsupplier>
</cffunction>

<cffunction name="fn_get_suppli_Inactprodlist" access="remote" returntype="query" >
	<cfargument name="supplier_id" required="yes" type="int">
	<cfquery name="getAllSupplier" datasource="#application.dsn#">
		select 
			* 
		from master_tb mt
		inner join products pd
		on (pd.product_id = mt.product_id)
		where supplier_id = <cfqueryparam cfsqltype="int" value="#ARGUMENTS.supplier_id#"> and active = 0
	</cfquery>
	<cfreturn getAllSupplier>
</cffunction>

</cfcomponent>