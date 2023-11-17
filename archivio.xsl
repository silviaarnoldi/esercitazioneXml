<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Rifugi</h2>
        <table>
          <tr>
            <th>Comune</th>
            <th>Provincia</th>
            <th>Nome italiano</th>
            <th>Nome tedesco</th>
            <th>Altitudine</th>
            <th>Proprietà</th>
            <th>Telefono</th>
            <th>Email</th>
            <th>Internet</th>
            <th>Gruppo</th>
            <th>Classe</th>
            <th>Via</th>
          </tr>
          <xsl:apply-templates select="archivio/rifugio"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="rifugio">
    <tr>
      <td><xsl:value-of select="comune"/></td>
      <td><xsl:value-of select="provincia"/></td>
      <td><xsl:value-of select="nomeita"/></td>
      <td><xsl:value-of select="nometedesco"/></td>
      <td><xsl:value-of select="altitudine/metri"/></td>
      <td><xsl:value-of select="proprieta"/></td>
      <td><xsl:value-of select="telefono"/></td>
      <td><xsl:value-of select="email"/></td>
      <td><xsl:value-of select="internet"/></td>
      <td><xsl:value-of select="gruppo"/></td>
      <td><xsl:value-of select="scuola/classe/@sezione"/></td>
      <td><xsl:value-of select="scuola/classe/via"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>