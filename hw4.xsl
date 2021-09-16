<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>

<xsl:template match="/">
 <html><head><title>ABC Startup</title></head>
 
  <body>
   <h1>ABC Financial Startup</h1>
   <img src="financialstartup.jpg" alt="Financial startup logo" width="230" height="142" style="display:block; margin-left:auto; margin-right:auto;"/>
   
    <p> We are very young financial manager company and we are proud of our clients</p>
	<p>We have started with 1 client a little bit more then 10 years ago and now we have 
	  <xsl:value-of select="count(Accounts/Client)"/><xsl:text> clients!</xsl:text></p>
	  
    <p>These are our clients:
     <xsl:for-each select="Accounts/Client">
      <xsl:value-of select="Name/First" /><xsl:text> </xsl:text><xsl:value-of select="Name/Last" />
	  <xsl:choose>
	     <xsl:when test="position()=last()">.</xsl:when>
		 <xsl:when test="position()=last() - 1">, and </xsl:when>
		 <xsl:otherwise>, </xsl:otherwise>
	  </xsl:choose>
   </xsl:for-each>
   </p>
   <p><xsl:value-of select="count(Accounts/Client/Years[.&gt;7])"/><xsl:text> of our clients are with us for more than 7 years</xsl:text> !</p>
  </body>
 </html>
</xsl:template>
</xsl:stylesheet>