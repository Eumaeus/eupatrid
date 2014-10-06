<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'myth.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
		<link rel="stylesheet" href="${resource(dir:'css',file:'jquery-ui-1.8.16.custom.css')}" />

        <g:layoutHead />
        <g:javascript library="application" />
		<g:javascript library="jquery.min" />
        <g:javascript library="jquery-ui.min"/>    
		<g:javascript>
        	$.noConflict();
        	jQuery(document).ready(function($){
			//$(function(){

				// Accordion
				$("#accordion").accordion({ 
					header: "h3",
					autoHeight: false,
					collapsible: true
				});
				$("#accordionRecto").accordion({ 
					header: "h3" ,
					collapsible: true,
					active: false,
					autoHeight: false	
				});
				$("#accordionVerso").accordion({ 
					header: "h3" ,
					collapsible: true,
					active: false,
					autoHeight: false
				});
				
				// Tabs
				$('#tabs').tabs();
	
				$( "#resizable" ).resizable();

				// Dialog			
				/* 
				$('#dialog').dialog({
					autoOpen: false,
					width: 600,
					buttons: {
						"Ok": function() { 
							$(this).dialog("close"); 
						}, 
						"Cancel": function() { 
							$(this).dialog("close"); 
						} 
					}
				});
 				*/

				
				// Dialog Link
				/*
				$('#dialog_link').click(function(){
					$('#dialog').dialog('open');
					return false;
				});
				*/
				
				// Datepicker
				/*
				$('#datepicker').datepicker({
					inline: true
				});
				*/
				
				// Slider
				/*
				$('#slider').slider({
					range: true,
					values: [17, 67]
				});
				*/
				
				// Progressbar
				/*
				$("#progressbar").progressbar({
					value: 20 
				});
				*/
				
				//hover states on the static widgets
				/*
				$('#dialog_link, ul#icons li').hover(
					function() { $(this).addClass('ui-state-hover'); }, 
					function() { $(this).removeClass('ui-state-hover'); }
				);
				*/
			});
		</g:javascript>   
				<g:javascript>

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-28339588-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</g:javascript>    
        
        </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <!-- <div id="grailsLogo"><img src="${resource(dir:'images',file:'Logo_w_title_small.png')}" alt="Grails" border="0" /></div> -->
        <nav>
        	<ul>
        		<li><a href="${resource(dir : '/')}">Home</a></li>
        		<!-- <li><g:link url="[action:'graph',controller:'relationship']">Graph</g:link></li> -->
        		<!-- <li><a href="${resource(dir : '/')}/mythogony.pdf">Graph as PDF</a></li> -->
        		<li>Download Source</li>
        		<li>Download Data</li>
        		<li>Classics@Furman</li>
        		<li>
        		
        		<g:if test="${session.user}">
        			<g:link url="[controller:'editor', action:'doLogout']">Log out</g:link>
        		</g:if>
        		<g:else>
	        		<g:link url="[controller:'editor', action:'login']">Log in</g:link>
    			</g:else>    		
        		
        		</li>
        	</ul>
        </nav>
        <g:layoutBody />
        <footer>
Digital Library research at Furman Univeristy’s Department of Classics has received support from the Andrew W. Mellon Foundation. All materials here are CC-BY-NC-SA 3.0. 
	</footer>
    </body>
</html>

