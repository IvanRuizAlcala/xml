<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/MODULO">
        <html>
            <body>
                <xsl:apply-templates select="ASIGNATURAS"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ASIGNATURAS">
        <xsl:variable name="nombre" select="NOMBRE"/>
        <xsl:variable name="profesor" select="PROFESOR"/>
        <xsl:variable name="duracion" select="DURACION"/> 
        <div style="display:flex; align-items:center; margin:0px 500px 0px">
            <form action="#" target="" method="get" name="formModulo">
                <div style =" background-color: grey; border:3px; ">
                <p>NOMBRE</p>
                    <input type="text" name="nombre" placeholder="nombre de Asignatura" onclick="window.location.href='ejercicio16_nombre.xml'">
                        <xsl:value-of select="$nombre"/>
                    </input>  
                <p>PROFESOR</p>
                    <input type="text" name="PROFESOR" placeholder="Profesor que la imparte" onclick="window.location.href='ejercicio16_profesor.xml'">
                        <xsl:value-of select="$profesor"/>
                    </input>
                <p>DURACION</p>
                    <input type="text" name="DURACION" placeholder="Duracion" onclick="window.location.href='ejercicio16_duracion.xml'">
                        <xsl:value-of select="$duracion"/>
                    </input>
                </div>
            </form>
        </div>
    </xsl:template>
</xsl:stylesheet>
