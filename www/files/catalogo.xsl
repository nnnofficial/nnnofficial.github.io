<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/document">
  <html>
  <head>
    <meta charset="UTF-8"/>
    <title>Catalogo</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400italic,400,700|Roboto+Mono:400italic,400,700" rel="stylesheet" type="text/css"/>
    <style>
      body {
        font-family: Roboto, sans;
      }
      .codigo {
        list-style-type: none;
        color: #666666;
	font-family: Roboto Mono, monospace;
      }
      .nombre {
        font-size: 18px;
      }
    </style>
  </head>
  <body>
    <h1>Catalogo</h1>
    <ul>
      <xsl:for-each-group select="codigo" group-by="categoria">
	<xsl:sequence select="codigo">
	  <div>
	    <xsl:sequence select="caracteristicas"><li><xsl:value-of select="caracteristicas"/></li></xsl:sequence>
	    <li class="codigo"><xsl:value-of select="/document/codigo/@id"/></li>
	  </div>
	</xsl:sequence>
      </xsl:for-each-group>
    </ul>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
