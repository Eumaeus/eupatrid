<%! import edu.furman.classics.* %>

<html>
	<head>
   <head>
        <title>Eupatrid · Visualizing Classical Athenian History </title>
        <meta name="layout" content="eupatrid" />
    </head>
	
	</head>
	<body>
				<div id="page-body" role="main">
			<h1>Eupatrid · Visualizing Classical Athenian History</h1>
            <p>This is an online tool for capturing information about people and places in ancient Athenian history.</p>
			<div id="controller-list" role="navigation">
				<h2>Choose What Data to View or Edit:</h2>
			<ul>
								<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
<g:if test="${(c.name != 'Assets') && (c.name != 'Dbdoc')}">
									<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
</g:if>
								</g:each>
							</ul>
			</div>
		</div>
	</body>
</html>
