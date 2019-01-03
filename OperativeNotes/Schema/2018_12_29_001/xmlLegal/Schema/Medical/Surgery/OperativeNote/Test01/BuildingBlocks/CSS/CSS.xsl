<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Head="http://www.xmllegal.org/Schema/BuildingBlocks/Head/01/" xmlns:CSS="http://www.xmllegal.org/Schema/Document/02/BuildingBlocks/CSS/01/" xmlns:CSSValues="http://www.xmllegal.org/Schema/Document/02/BuildingBlocks/CSS/Values/01/">
<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
<!-- Head:Stylesheet -->
<xsl:template match="/">
<xsl:apply-templates select="//CSS:Element"/>
</xsl:template>
<xsl:template match="CSS:Element">
SPAN.<xsl:value-of select="CSS:Name"/><xsl:if test="CSS:Class">-<xsl:value-of select="CSS:Class"/></xsl:if> {
	<xsl:apply-templates select="CSS:Styles"/>}
</xsl:template>
<xsl:template match="CSS:Styles">
	<xsl:for-each select="*">
	<xsl:value-of select="local-name()"/>: <xsl:value-of select="."/>;
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>