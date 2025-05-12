<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Basic
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Basic</sch:title>
    <sch:rule context="f:Basic">
      <sch:assert test="count(f:extension[@url = 'https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/transport-information']) &gt;= 1">extension with URL = 'https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/transport-information': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/transport-information']) &lt;= 2">extension with URL = 'https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/transport-information': maximum cardinality of 'extension' is 2</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
