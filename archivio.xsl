<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- template di root -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Archivio</title>
            </head>
            <body>
                <h1>RIFUGI</h1>
                <xsl:apply-templates select="archivio/rifugio"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="rifugio">
        <h2><xsl:value-of select="nomeita"/></h2>
        <p><xsl:value-of select="comune"/></p>
        <p><xsl:value-of select="provincia"/></p>
        <p><xsl:value-of select="altitudine/metri"/></p>
        <p><xsl:value-of select="proprieta"/></p>
        <p><xsl:value-of select="telefono"/></p>
        <p><xsl:value-of select="email"/></p>
        <p><xsl:value-of select="internet"/></p>
        <p><xsl:value-of select="gruppo"/></p>
    </xsl:template>
</xsl:stylesheet>


    



