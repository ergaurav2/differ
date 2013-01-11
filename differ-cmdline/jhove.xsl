<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:jhove="http://hul.harvard.edu/ois/xml/ns/jhove"
  xmlns:mix="http://www.loc.gov/mix/v20"
  xmlns:str="http://exslt.org/strings"
  exclude-result-prefixes="jhove mix"
  >

  <xsl:output method="xml" indent="yes" encoding="iso-8859-1"/>

  <xsl:template match="text()"/>

  <xsl:template match="/jhove:jhove">
      <properties>
      <property name = "File last modified"><xsl:value-of select="jhove:repInfo/jhove:lastModified"/></property>
      <property name = "File path"><xsl:value-of select="jhove:repInfo/@uri"/></property>
      <property name = "File size"><xsl:value-of select="jhove:repInfo/jhove:size"/></property>
      <property name = "MIME type"><xsl:value-of select="jhove:repInfo/jhove:mimeType"/></property>
      <property name = "Image width (Pixels)"><xsl:value-of select=".//mix:mix/mix:BasicImageInformation/mix:BasicImageCharacteristics/mix:imageWidth"/></property>
      <property name = "Image height (Pixels)"><xsl:value-of select=".//mix:mix/mix:BasicImageInformation/mix:BasicImageCharacteristics/mix:imageHeight"/></property>
      <property name = "Color depth"><xsl:value-of select="//mix:ImageColorEncoding/mix:BitsPerSample/mix:bitsPerSampleValue"/></property>
      <property name = "Number of channels"><xsl:value-of select="//mix:ImageColorEncoding/mix:samplesPerPixel"/></property>
      <property name = "Color space"><xsl:value-of select=".//jhove:property[./jhove:name/text()='EnumCS']/jhove:values/jhove:value"/></property>
      <property name = "Validation (well formed and valid)"><xsl:value-of select="jhove:repInfo/jhove:status"/></property>
      <property name = "Type of format"><xsl:value-of select="jhove:repInfo/jhove:format"/></property>
      <property name = "Universal unique identifier (UUID)"><xsl:value-of select="str:concat(.//jhove:property[./jhove:name/text()='UUID' and position()=1]/jhove:values/jhove:value)"/></property>
      <property name = "Tile size X (Pixels)"><xsl:value-of select="//jhove:property[./jhove:name/text()='XTSize']/jhove:values/jhove:value"/></property>
      <property name = "Tile size Y (Pixels)"><xsl:value-of select="//jhove:property[./jhove:name/text()='YTSize']/jhove:values/jhove:value"/></property>
      <property name = "Number of tiles"><xsl:value-of select="count(.//jhove:name[text()='TilePart'])"/></property>
      <property name = "Transformation"><xsl:value-of select="//jhove:property[./jhove:name/text()='Transformation']/jhove:values/jhove:value"/></property>
      <property name = "Compression"><xsl:value-of select=".//mix:Compression/mix:compressionScheme"/></property>
      <property name = "Number of decomposition levels"><xsl:value-of select=".//jhove:property[./jhove:name/text()='NumberDecompositionLevels']/jhove:values/jhove:value"/></property>
      <property name = "Number of quality layers"><xsl:value-of select=".//jhove:property[./jhove:name/text()='NumberOfLayers']/jhove:values/jhove:value"/></property>
      <property name = "Multiple Component Transformation"><xsl:value-of select=".//property[./name/text()='MultipleComponentTransformation']/values/value"/></property>
      <property name = "Progression order"><xsl:value-of select=".//property[./name/text()='ProgressionOrder']/values/value"/></property>
      <property name = "Code block width (Pixels)"><xsl:value-of select=".//property[./name/text()='CodeBlockWidth']/values/value"/></property>
      <property name = "Code block height (Pixels)"><xsl:value-of select=".//property[./name/text()='CodeBlockHeight']/values/value"/></property>
      <property name = "Quantization style"><xsl:value-of select=".//property[./name/text()='QuantizationStyle']/values/value"/></property>
   </properties>  
   </xsl:template>
</xsl:stylesheet>