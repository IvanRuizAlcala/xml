<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
  <html>
    <body>
      <h1>CATÁLOGO DE DISCOS</h1>
      <table border="1">
        <tr>
          <th>TÍTULO</th>
          <th>ARTISTA</th>
        </tr>
        <xsl:for-each select="/CATALOGO/DISCO">
          <tr>
            <td><xsl:value-of select="TITULO"/></td>
            <td><xsl:value-of select="ARTISTA"/></td>
          </tr>
        </xsl:for-each>
      <xsl:variable name="total">
        <xsl:value-of select="sum(/CATALOGO/DISCO/PRECIO)"/>
      </xsl:variable>
      <tr>
        <td>Total</td>
        <td><xsl:value-of select="$total"/></td>
      </tr>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>