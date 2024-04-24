<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates select="inventario/producto"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="producto">
        <xsl:variable name="codigo" select="@codigo"/>
        <xsl:variable name="nombre" select="nombre"/>
        <xsl:variable name="peso" select="concat(peso, ' ', peso/@unidad)"/>
        <xsl:variable name="lugar" select="concat('Edificio ', lugar/@edificio, ', Aula ', lugar/aula)"/>
        <ul>
            <li>
               <h3> Elemento <xsl:value-of select="$codigo"/></h3>
               </li>
               <ul>
                    <li style="list-style-type: circle">
                <strong>Nombre:</strong>
                <xsl:value-of select="$nombre"/>
                </li>
                <li style="list-style-type: circle">
                <strong>Peso:</strong>
                <xsl:value-of select="$peso"/>
            </li>
            </ul>
        </ul>
    </xsl:template>
</xsl:stylesheet>
