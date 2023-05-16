<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Telepizza</title>
				<!-- Required meta tags -->
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
					crossorigin="anonymous"/>
				<link rel="stylesheet" href="style.css"/>
				
			</head>
			
			<body>
				<nav class="navbar navbar-expand-sm navbar-light bg-danger">
					<div class="container">
						<a class="navbar-brand" href="#"><img src="img/telepizzalogo.png" alt=""/></a>
						
						<div class="navbar align-items-end">
							<a class="nav-link active align-items-end me-3" aria-current="page" href="#"><img
									src="img/work.svg" alt=""/></a>
							<a class="nav-link active align-items-end me-3" aria-current="page" href="#"><img
									src="img/user.svg" alt=""/></a>
							<a class="nav-link active align-items-end me-3" aria-current="page" href="#"><img
									src="img/cart.svg" alt=""/></a>
						</div>
					</div>
				</nav>
				
				<div class="card container mt-3 border-0 shadow ">
					<h2>Entrantes</h2>
					<xsl:for-each select="entrantes/categoria">
						<div class="card-body">
							<h4 class="card-title text-muted"><xsl:value-of select="@nombre"/></h4>
							<p class="card-text">
								<div class="row mt-4">
									<xsl:for-each select="entrante">
										<div class="col-lg-4 col-md-6 mb-3">
											<div class="card">
												<img class="card-img-top" src="https://images.telepizza.com/vol/es/images/content/productos/new/{imagen}.png" alt="Title"/>
												<div class="card-body">
													<h4 class="card-title"><xsl:value-of select="@nombre"/></h4>
													<div class="navbar text-muted">
														<a href="#" class="text-decoration-none text-muted">Ver más</a> <!-- OFERTA??? -->
														<p class="card-text fw-bold"><xsl:value-of select="precio"/> &euro;</p> <!-- el simbolo del € puede dar error en otros navegadores así que hay que poner esto -->
													</div>
													<div class="d-md-flex justify-content-md-end"> <!--display-flex-->
														<button class="bg-danger border-0 rounded text-white px-3 py-2">AÑADIR</button>
													</div>
													
												</div>
											</div>
										</div>
									</xsl:for-each>
									
								</div>
							</p>
						</div>
					</xsl:for-each>
					
				</div>
				
				<footer class="bg-danger text-center">
					<h3 class="text-white py-3">Telepizza - Azarquiel</h3>
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
					integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
					crossorigin="anonymous">
				</script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
					integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
					crossorigin="anonymous">
				</script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>
