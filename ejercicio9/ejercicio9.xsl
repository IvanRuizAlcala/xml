<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/hello-world">
        <HTML>
            <HEAD>
                <TITLE></TITLE>
            </HEAD>
            <BODY>
                <Hl>
                    <xsl:value-of select="saludo" />
                </Hl>
                <xsl:apply-templates select="yo" />
            </BODY>
        </HTML>
    </xsl:template>
    <xsl:template match="yo">
        <DIV>
De: <strong>
            <xsl:value-of select="."/>
        </strong>
    </DIV>
</xsl:template>
</xsl:stylesheet>