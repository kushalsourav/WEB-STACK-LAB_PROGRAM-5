from lxml import etree

xml_file = "employee_data.xml"
xslt_file = "employee_transform.xsl"
xsd_file = "employee_schema.xsd"

xml_tree = etree.parse(xml_file)
xsd = etree.XMLSchema(file=xsd_file)

if xsd.validate(xml_tree):
    xslt = etree.parse(xslt_file)
    transform = etree.XSLT(xslt)
    html_output = transform(xml_tree)
    with open("employee_output.html", "wb") as output_file:
        output_file.write(html_output)
    print("Conversion successful. HTML output saved.")
else:
    print("XML data validation failed.")
