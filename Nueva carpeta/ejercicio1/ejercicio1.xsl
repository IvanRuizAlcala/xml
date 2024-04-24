<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <body>
        <div>
          <xsl:for-each select="ciclos/ciclo">
            <p>
              <strong>
                <xsl:value-of select="nombre"/>
              </strong>
            </p>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
