<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Employee Data</title>
            </head>
            <body>
                <h1>Employee personal Information</h1>
                <table border="1">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>dateofbirth</th>
                        <th>Gender</th>
                    </tr>
                    <xsl:apply-templates select="employees/employee/personalInfo"/>
                </table>
                <h1>Employee Status</h1>
                <table border="1">
                    <tr>
                        <th>Position</th>
                        <th>Salary</th>
                    </tr>
                    <xsl:apply-templates select="employees/employee/employmentInfo"/>
                </table>
                <h1>Contact Information</h1>
                <table border="1">
                    <tr>
                        <th>Email</th>
                        <th>Phone Number</th>
                    </tr>
                    <xsl:apply-templates select="employees/employee/contactInfo"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="personalInfo">
        <tr>
            <td><xsl:value-of select="firstName"/></td>
            <td><xsl:value-of select="lastName"/></td>
            <td><xsl:value-of select="dateOfBirth"/></td>
            <td><xsl:value-of select="gender"/></td>
        </tr>
    </xsl:template>
    <xsl:template match="employmentInfo">
        <tr>
            <td><xsl:value-of select="position"/></td>
            <td><xsl:value-of select="salary"/></td>
        </tr>
    </xsl:template>
        <xsl:template match="contactInfo">
        <tr>
            <td><xsl:value-of select="email"/></td>
            <td><xsl:value-of select="phoneNumber"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
