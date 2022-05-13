<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
    <html>
        <head>VEHICULOS</head>
        <body>
            <h2>ORDENAR VEHÍCULOS POR LA MARCA</h2>
            <table border="1">
                <tbody>
                    <tr>
                        <th>MARCA</th>
                        <th>MODELO</th>
                        <th>PRECIO</th>
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:sort select="marca"/>
                    <tr>
                        <td><xsl:value-of select="marca"/></td>
                        <td><xsl:value-of select="modelo"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </tr>
                    </xsl:for-each>
                </tbody>
            </table>

            <h2>MOSTRAR VEHÍCULOS DE GASOLINA Y AUTOMÁTICOS</h2>
            <table border="1">
                <tbody>
                    <tr>
                        <th>MARCA</th>
                        <th>MODELO</th>
                        <th>PRECIO</th>
                        <th>CAMBIO</th>
                        <th>COMBUSTIBLE</th>
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:if test="@combustible='gasolina' and @cambio='automatico'">
                    <tr>
                        <td><xsl:value-of select="marca"/></td>
                        <td><xsl:value-of select="modelo"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="@cambio"/></td>
                        <td><xsl:value-of select="@combustible"/></td>
                    </tr>
                    </xsl:if>
                    </xsl:for-each>
                </tbody>
            </table>

            <h2>VEHÍCULOS MÁS BARATOS DE 20000€</h2>
            <table border="1">
                <tbody>
                    <tr>
                        <th>MARCA</th>
                        <th>MODELO</th>
                        <th>PRECIO</th>
                        <th>KM</th>
                        <th>AÑO</th>
                        <th>POTENCIA</th>
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:if test="precio &lt; 20000">
                    <tr style="background-color:green">
                        <td><xsl:value-of select="marca"/></td>
                        <td><xsl:value-of select="modelo"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="km"/></td>
                        <td><xsl:value-of select="anno"/></td>
                        <td><xsl:value-of select="potencia"/></td>
                    </tr>
                    </xsl:if>
                    </xsl:for-each>
                </tbody>
            </table>

            <h2>MOSTRAR VEHÍCULOS DE NO GASOLINA </h2>
            <table border="1">
                <tbody>
                    <tr>
                        <th>MARCA</th>
                        <th>MODELO</th>
                        <th>PRECIO</th>
                        <th>COMBUSTIBLE</th>
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:sort select="precio" order="descending" data-type="number"/>
                    <xsl:if test="@combustible!='gasolina'">
                    <tr>
                        <td><xsl:value-of select="marca"/></td>
                        <td><xsl:value-of select="modelo"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="@combustible"/></td>
                    </tr>
                    </xsl:if>
                    </xsl:for-each>
                </tbody>
            </table>

            <h2>LOS 3 VEHÍCULOS MÁS CAROS </h2>
            <table border="1">
                <tbody>
                    <tr>
                        <th>MARCA</th>
                        <th>MODELO</th>
                        <th>PRECIO</th>
                    </tr>
                    <xsl:for-each select="vehiculos/vehiculo">
                    <xsl:sort select="precio" order="descending" data-type="number" />
                    
                    <xsl:if test="position() &lt; 4">
                    <tr>
                        <td><xsl:value-of select="marca"/></td>
                        <td><xsl:value-of select="modelo"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </tr>
                    </xsl:if>

                    </xsl:for-each>
                </tbody>
            </table>

        </body>

    </html>

</xsl:template>
</xsl:transform>