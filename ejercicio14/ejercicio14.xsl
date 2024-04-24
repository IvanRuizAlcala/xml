<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <body>
                <h1>CATÁLOGO DE DISCOS</h1>
                <table border="1">
                    <tr>
                        <th>TÍTULO</th>
                        <th>ARTISTA</th>
                        <th>PRECIO</th>
                    </tr>
                    <xsl:for-each select="/CATALOGO/DISCO">
                        <xsl:variable name="precio" select="PRECIO" />
                        <tr>
                            <xsl:attribute name="style">
                                <xsl:choose>
                                    <xsl:when test="$precio &gt; 10">background-color:green;</xsl:when>
                                    <xsl:otherwise>background-color:yellow;</xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                            <td><xsl:value-of select="TITULO"/></td>
                            <td><xsl:value-of select="ARTISTA"/></td>
                            <td><xsl:value-of select="PRECIO"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
