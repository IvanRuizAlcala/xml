<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2 style="width:300px; margin:20px 500px 0px; text-align:center">Busquedas Ciclo</h2>
                <table border="1" style="width:300px; margin:20px 500px 0px; text-align:center">
                    <tr>
                        <th style="background-color:grey">Profesor</th>
                    </tr>
                    <xsl:for-each select="/MODULO/ASIGNATURAS">
                        <tr style="background-color:yellow">
                            <td><xsl:value-of select="profesor"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
