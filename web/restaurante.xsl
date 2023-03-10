<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />

<!-- LMSGI. UD04. Tarea Evaluativa 02 XSLT. Aitor Rey. 10/03/2023-->
<!-- Proyecto publicado en GitHub XXX  -->

<xsl:template match='/reservaeventos'>
<html lang="es">
	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>
		
		<main>
    	<!-- Definicion variable, al cambiar el texto cambian los datos-->
			<xsl:variable name="nomres">El clarete</xsl:variable>
			<!-- Nombre restaurante y ciudad con enlace segun variable -->
			<h1><a href="{restaurante[nombrerestaurante=$nomres]/informacion}" target="_blank"><xsl:value-of select="$nomres" /> - <xsl:value-of select="restaurante[nombrerestaurante=$nomres]/ciudad" /></a></h1>

			<!-- Tipos de menu -->
			<xsl:for-each select="restaurante[nombrerestaurante=$nomres]/menu">
				<article class="restaurante">
					<h3><xsl:value-of select="@tipo" /></h3>
				<xsl:for-each select="plato">
					<p><xsl:value-of select="." /></p>
				</xsl:for-each>
				</article>
      </xsl:for-each>
		</main>

		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>

</xsl:stylesheet>