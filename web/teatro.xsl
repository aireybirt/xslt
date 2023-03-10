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
		
		<main class="principal">
			<section class="teatro">
        <h1>PROXIMAS OBRAS DE TEATRO</h1>
				<ul>
          <!-- Seleccionamos las obras -->
          <xsl:for-each select="teatro">
            <!-- Las ordenamos por fecha de más reciente a menos -->
            <xsl:sort select="fechahora/@dia" order="descending" /> 
							<xsl:choose>
								<xsl:when test="precio&lt;20">
									<!-- Aplica la clase subrayado cuando el precio es inferior a 20 -->
									<li class="subrayado"><xsl:value-of select='fechahora/@dia'/>: <xsl:value-of select='obra' /></li>
								</xsl:when>
								<xsl:otherwise>
									<!-- No aplica la clase subrayado cuando el precio es superior a 20 -->
									<li><xsl:value-of select='fechahora/@dia' />: <xsl:value-of select='obra' /></li>
								</xsl:otherwise>
							</xsl:choose>
          </xsl:for-each>
				</ul>
			</section>
		</main>

		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>