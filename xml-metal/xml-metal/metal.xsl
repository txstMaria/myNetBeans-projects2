<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:template match="metal">
		<html>
			<head>
				<title/>
				<link href="estilos/estilo-general.css" rel="stylesheet" type="text/css"/>
				<script type="text/javascript" language="Javascript" src="javascript/video.js"/>
			</head>
			<body onload="playVideo('SBgeUO-Kh2Q')">
				<div class="encabezado">The Power of Metal</div>
				<br/>
				<div class="scrolling">
					<table class="catalogo">
						<xsl:for-each select="band">
							<tr>
								<td>
									<span>Name:  </span>
									<xsl:value-of select="name"/>
									<br/>
									<span>Origin:  </span>
									<xsl:value-of select="origin"/>
									<br/>
									<xsl:if test="web !='     '">
										<span>web:  </span>
										<xsl:variable name="web_site">
										   <xsl:value-of select="web" />
										</xsl:variable>
										<a href="{$web_site}" target="blank"><xsl:value-of select="web" /></a>
										<br/>
									</xsl:if>
								</td>
								<td class="centrada">
									<xsl:variable name="archivo">
										<xsl:value-of select="video"/>
									</xsl:variable>
									<img alt="video" src="imagenes/video.png" onclick="playVideo('{$archivo}')"  />
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
				<iframe class="marco-play" id="marco-play" frameborder="0" name="marco-play"/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
