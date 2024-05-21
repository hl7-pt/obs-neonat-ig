  <blockquote class="stu-note">
    <p>The specification herewith documented is for the time being a proof of concept specification, and may not be used for any implementation purposes. 
    No liability can be inferred from the use or misuse of this specification, or its consequences.</p>
  </blockquote>


### Scope

The goal of this Implementation Guide is to specify how to represent in HL7 FHIR the "Notícia Nascimento" or Birth Notice.
The main focus of this Implementation Guide is to represent the communication established between Hospitals and Healthcare Institutions on the Birth Notice. Especially, the communication through a WebAPI developed by SPMS, and applied in hospitals without direct communication with others centrals healthcare information systems.

### Description

The Project "Notícia Nascimento" allows to register immediatly all newborn babies and the communication of a newborn in the proper form, becoming itself to be a communication tool between Hospitals and Primary Healthcare Institutions. This tool allows to a greater and faster care of newborn, as to communicate allerts. 
This project was developed and carried on the XXI Constitutional Government of Portugal, in the healthcare program with the purpose to expand and improve the network capacity of primary healthcare.
This resource has the purpose to integrate the birth notice into the Portuguese Health Data Plattform (PDS).
The creation of the Birth Notice has the main advantage of automatically create an electronic health registry of the infant/child through data included in the Birth Notice, as to notify the birth to local healthcare units. 
Soon after the send of the Birth Notice, this registry can be consulted in the professional area of the Health Data Plattform (PDS), or in the mother's profile or in the newborn profile (in case of the newborn already had national health service number). 




### WebAPI Manual

Details on the development of the webAPI are available in the <a href="https://spms.min-saude.pt/wp-content/uploads/2017/01/ET-PDS-WebAPI_v1.3.pdf">SPMS Website</a>.

### Dependencies

{% include dependency-table.xhtml %}


### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP statements

{% include ip-statements.xhtml %}


### Authors and Contributors

| Role  | Name | Organization | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Andre Oliveira | ProChild CoLAB | andre.oliveira@prochildcolab.pt |
| **Primary Editor** | Samuel Frade | Virtual Care | samuel.frade@virtualcare.pt |
| **Primary Editor** | Tiago Costa | Virtual Care | tcosta@virtualcare.pt 
| **Contributor** | João Almeida | President, HL7 Portugal | joaofilipe90@gmail.com |