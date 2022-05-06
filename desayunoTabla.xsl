<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
    
<xsl:template match="/">
        <html>
            <head>
                <title>DESAYUNOS</title>
            </head>
            <body>
                <h2>EJERCICIOS DESAYUNO</h2>
                <table border="1">
                    <tbody>
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Calorías</th>
                        </tr>
                        <xsl:for-each select="breakfast_menu/food">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><xsl:value-of select="calories"/></td>
                        </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>ORDEN DE LOS NOMBRES</h2>
                <table border="1">
                    <tbody>
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Calorías</th>
                        </tr>
                        <xsl:for-each select="breakfast_menu/food">
                        <xsl:sort select="name"/>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><xsl:value-of select="calories"/></td>
                        </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>FILTRO DE CALORIAS</h2>
                <table border="1">
                    <tbody>
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Calorías</th>
                        </tr>
                        <xsl:for-each select="breakfast_menu/food">
                        <xsl:if test="calories &gt; 850">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><xsl:value-of select="calories"/></td>
                        </tr>
                        </xsl:if>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>PRECIO</h2>
                <table border="1">
                    <tbody>
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Calorías</th>
                        </tr>
                        <xsl:for-each select="breakfast_menu/food">
                        <xsl:choose>
                            <xsl:when test="price &gt; 800">
                                <tr>
                                    <td style="background-color:red"><xsl:value-of select="name"/></td>
                                    <td style="background-color:red"><xsl:value-of select="price"/></td>
                                    <td style="background-color:red"><xsl:value-of select="calories"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td><xsl:value-of select="name"/></td>
                                    <td><xsl:value-of select="price"/></td>
                                    <td><xsl:value-of select="calories"/></td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:transform>