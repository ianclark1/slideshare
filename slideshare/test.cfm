
<cfset key = "YOUR KEY HERE">
<cfset secret = "YOUR SECRET HERE">

<cfset ss = createObject("component", "slideshare").init(key,secret)>
<cfset shows = ss.getSlideShows(username='cfjedimaster')>
<cfdump var="#shows#" label="Get SlideShows">

<cfloop query="shows">
	<cfset show = ss.getSlideShow(id)>
	<cfdump var="#show#" label="Get Slide Show #id#">
</cfloop>