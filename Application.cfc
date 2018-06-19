<cfcomponent output="false" persistent="false">
<!--- Set up the application. --->
	<cfset THIS.Name = "Supplier Dashboard" />
	<cfset THIS.ApplicationTimeout = CreateTimeSpan( 0, 0, 1, 0 ) />
	<cfset THIS.SessionManagement = true />
    <cfset THIS.sessionTimeout = createTimeSpan(0,0,20,0)/>
	<cfset THIS.SetClientCookies = true />
    <cfset THIS.clientmanagement= true />

<cffunction
		name="OnApplicationStart"
		access="public"
		returntype="boolean"
		output="false"
		hint="Fires when the application is first created.">

	    <cfset application.EnableErrorHandling= True />
		<cfset application.dsn= 'supdsn' />
	    <cfset application.developerEmail= 'pbrahmam@hotmail.com' />
		<!--- Return out. --->
		<cfreturn true />
</cffunction>

</cfcomponent>