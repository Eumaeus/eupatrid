<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<!-- <asset:stylesheet src="application.css"/> -->
<link rel="stylesheet" href="${resource(dir:'css',file:'myth.css')}" />
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
	    <!-- <div id="grailsLogo"><img src="${resource(dir:'images',file:'Logo_w_title_small.png')}" alt="Grails" border="0" /></div> -->
        <nav>
        	<ul>
        		<li><a href="${resource(dir : '/')}">Home</a></li>
        		<li><a href="http://folio.furman.edu/citeservlet">CITE Data</a></li>
        		<li><a href="http://folio.furman.edu/eupatrid/fdg.html">View Relation Tree</a></li>
        		<li><a href="http://folio.furman.edu">Digital Library Research at Furman</a></li>
        	</ul>
        </nav>
        <g:layoutBody />
        <footer>
Digital Library research at Furman Univeristy’s Department of Classics has received support from the Andrew W. Mellon Foundation. All materials here are CC-BY-NC-SA 3.0. 
	</footer>
    </body>
</html>
