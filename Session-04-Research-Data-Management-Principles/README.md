# GEOG 712 Reproducible Research

## Session 4.  Research Data Management Principles

### What is Research Data Management (RDM)?


From the [McMaster ROADS](https://roads.mcmaster.ca/research-data-management-at-mcmaster) website:

> RDM is the active organization and maintenance of data throughout its lifecycle, from its collection, interpretation, dissemination, and the archiving of valuable results. RDM enables reliable verification of research results, and permits innovative, interdisciplinary research built on existing information. The application of RDM improves cumulative research efficiency, and reduces the overall cost of research

### Key Notions

 - Active
 - On-going (Throughout the research process)
 
 **Add:** 
 - Best Practices and Standards

### The Case for RDM?

[Data Sharing and Management Snafu in 3 Short Acts](https://www.youtube.com/watch?v=N2zK3sAtr-4)

### Who Benefits from Research Data Management?

- **You and your Collaborators**:  Setting up processes and standards for how you collect, document and organize your data will mean that you spend less time on data management over the course of your research.  You will spend less time searching for files and trying to "figure things out" when you have properly managed your data.  Collaborators (including your future self) will have an easier time understanding and using the data too!  Additionally, getting data to a point where it is accessible by others will increase impact and citations.

- **Journals**:  RDM practices make it easier to compile and provide the supporting data that many journals now require alongside submitted articles.  Provision of data is critical to reproducability and credibility.  

- **Funders**:  Funding agencies, particularly public funding agencies are under pressure to increase their accountability and show value for their investment in research.  They also understand that data that is discoverable/reusable may prevent duplication of effort and accelerate new research. 

- **Science/Body of Knowledge**:  Well managed data will be discoverable, accessible and understandable making it ultimitely reusable for new science or study!  

### Drivers of RDM - Data as a Research Output

#### 1. Funder Policy:
The policies of funding agencies around the world have increased their focus on data management in recent years.  In Canada, the Tri-Agency (SSHRC, NSERC, CIHR) have great influence. The following Tri-Agency policies highlight expectations for RDM excellence.

**[Tri-Agency Statement of Principles on Digital Data Management (TASPDDM)](http://www.science.gc.ca/eic/site/063.nsf/eng/h_83F7624E.html?OpenDocument)**: Promotes excellence in digital data management practices and data stewardship in agency-funded research

**Expectations:**

- Data Management Planning
- Constraints and obligation (commercial, legal, ethical)
- Adherence to Standards
- Collection and Storage
- Metadata
- Preservation, Retention and Sharing
- Timeliness
- Acknowledgement and Citation
- Efficient and Cost Effective

**Responsibilities:**

**Researchers**
- Incorporating best practices
- Developing DMPs
- Adhering to policies and standards

**Research Communities**
- Developing & promoting standards
- Fostering excellence
- Selecting repositories

**Research Institutions**
- Supporting best practices
- Providing access to resources
- Creating guidance and policies

**Research Funders**
- Developing policies & guidance
- Promoting data management
- Providing peer reviewers

**[Tri-Agency Policy on Research Data Management](http://www.science.gc.ca/eic/site/063.nsf/eng/h_97610.html)** (published March 15, 2021 - gradual implementation through 2022/2023)

**Policy excerpts:**

**Policy objective:**	 ‘The objective of this policy is to support Canadian research excellence by promoting sound RDM and data stewardship practices. This policy is not an open data policy’.

**Goal excerpts:**	
"‘The agencies believe that **research data collected through the use of public funds should be responsibly and securely managed and be, where ethical, legal and commercial obligations allow, available for reuse by others.** To this end, the agencies **support the findable, accessible, interoperable, and reusable (FAIR) guiding principles for research data management and stewardship’."**

"[‘(T)]he agencies **recognize that data related to research by and with the First Nations, Métis, or Inuit whose traditional and ancestral territories are in Canada must be managed in accordance with data management principles developed and approved by these communities**, and on the basis of free, prior and informed consent. This includes, but is not limited to, considerations of Indigenous data sovereignty, as well as data collection, ownership, protection, use, and sharing."

**Requirements:	**
**Institutional Strategy:** Institutions eligible for Tri-Agency funds must develop and post an institutional RDM strategy that recognizes the importance of data as a research output and describes institutional ability to support and build capacity in RDM. (Implementation date: Posted by March 2023)

**Data Management Planning:** Grants will be required to include demonstration of RDM methods that align with best practices. Some funding opportunities will require full data management plans (DMPs) be submitted for inclusion in the adjudication process. (Implementation date: Initial set of funding opportunities requiring a DMP will be identified by Spring 2022)

**Data Deposit by Researchers:** All digital research data, metadata, and code that directly support research conclusions in journal publications and pre‐prints must be deposited in a digital repository (preferably with a persistent digital identifier). ‘Grant recipients are not required to share their data [but are expected to] provide appropriate access to the data where ethical, cultural, legal and commercial requirements allow, and in accordance with the FAIR principles and stands of their discipline’ (Implementation date: Current requirements exist for CIHR‐funded research and will be updated to include other cohorts in the future)

**Indigenous peoples:**	Data related to research by and with Indigenous stakeholders must be managed with RDM principles developed and approved by these communities, and on the basis of free, prior and informed consent. 

**Notable that acceptance of funds indicates the acceptance of the the terms of the policy**


Similar calls for action are seen beyond funders.

#### 2. Journals 

Science:  
> After publication, all data and materials necessary to understand, assess, and extend the conclusions of the manuscript must be available to any reader of a Science Journal. After publication, all reasonable requests for data, code, or materials must be fulfilled

Sage - Big Data and Society
> ...we are committed to facilitating openness, transparency and reproducibility of research. Where relevant, Big Data & Society encourages authors to share their research data in a suitable public repository subject to ethical considerations and to include a data accessibility statement in their manuscript file. 

#### 3. Research Community Initiatives

There are numerous initiatives that aim to increase the reusability of data and strengthen the ethical use of data. Some examples include:


### FAIR (Findability, Accessibility, Interoperability, and Reusability) Data Principles

- A broadly applied set of principles that have a focus on making digital assets discoverable in a machine driven way.
- The paper [_The FAIR Guiding Principles for scientific data management and stewardship_](https://www.nature.com/articles/sdata201618) was published in Nature: Scientific Data in 2016
- Outlines a set of 14 principles to be addressed in making data FAIR. The following table is a summary of the FAIR Guiding Principles adapted from Wilkinson et al 2016 and presented on the [FAIR Toolkit webiste](https://fairtoolkit.pistoiaalliance.org/fair-guiding-principles/)

![https://fairtoolkit.pistoiaalliance.org/wp-content/uploads/2020/05/FAIR-Life-Science-Industry-Picture1-768x655.png](FAIR-Life-Science-Industry-Picture1-768x655.png)

### Indigenous Data Management/Stewardship Frameworks - OCAP and CARE

### OCAP(Ownership, Control, Access, Possession) Principles: A framework developed by the First Nations Information Governance Centre to establish guidance for the collection, protection, use and sharing of First Nations data and information. The following excerpt from the ![FNIGC website](https://fnigc.ca/ocap-training/) outline the OCAP Principles aimed to establish rules around the collection, protection, use and sharing of First Nations data and information:

"**Ownership** refers to the relationship of First Nations to their cultural knowledge, data, and information. This principle states that a community or group owns information collectively in the same way that an individual owns his or her personal information.

**Control** affirms that First Nations, their communities, and representative bodies are within their rights in seeking to control over all aspects of research and information management processes that impact them. First Nations control of research can include all stages of a particular research project-from start to finish. The principle extends to the control of resources and review processes, the planning process, management of the information and so on.

**Access** refers to the fact that First Nations must have access to information and data about themselves and their communities regardless of where it is held. The principle of access also refers to the right of First Nations’ communities and organizations to manage and make decisions regarding access to their collective information. This may be achieved, in practice, through standardized, formal protocols.

**Possession** While ownership identifies the relationship between a people and their information in principle, possession or stewardship is more concrete: it refers to the physical control of data. Possession is the mechanism by which ownership can be asserted and protected.


## These are the goals - but how do we achieve excellence in RDM?

### The Research Data Lifecycle

The Research Data Lifecycle is portrayed in different ways by different organizations but the general flow is:

![https://biblio.uottawa.ca/sites/biblio.uottawa.ca/files/data_life_cycle.png](data_life_cycle.png)

Stage | Description
-|-
PLAN  |Survey available/existing data; define data needs/collection plan; review ethics and legal constraints; review necessary resources (storage, instrumentation, time, money); data responsibility and stewardship   | 
CREATE| Produce data:  Derive, experiment, observe, measure, model, survey, obtain from third party sources. Capture metadata and documentation.
PROCESS | Digitize, qualtiy assurance, validation, recoded, versioned etc. Processes must be documented. Keep raw data raw.
ANALYZE | Conduct your analysis and interpretation to produce publications and research findings.  
PRESERVE | Ensure data is saved according best practices (i.e. open formats, well documented). Article publications and/or data publications should have a digital object identifier (DOI).  
SHARE | Determine appropriate access rights/licensing/citation and a proper long-term storage location for the data (e.g. Domain specific repository, on a controlled access server with open metadata and well defined access procedure).
REUSE | Data can be reanalysed, secondary analysis can take place, data can be used by others.

The cornerstone of the lifecycle is the Plan.  It is difficult to create excellent data as an afterthought.

The Canadian research community is working towards builind capacity in researchers, one way is through the Portage Network.

### Portage Network - now part of Canada's New Digital Research Infrastructure Organization (NDRIO)

The Portage Network was launched in 2015 by the Canadian Association of Research Libraries (CARL) and it works largely through the library community to foster a national research data culture and facilitate shared stewardship of research data in Canada.  This mandate spans sectors, domains, and jurisdictions, requiring national coordination of RDM services and infrastructure. Portage seeks to contribute to this goal through:

- The coordination of RDM expertise, services, and technology
- Collaboration with other research data management stakeholders
- Education and training

The DMPAssistant is one part of their service. The DMPAssistant is similar to Data Management Plan creation tools offered through other jurisdictions (e.g. DMPTool (U.S.)).  The tool serves as a guide to help researchers develop a comprehensive snapshot of the data involved in their project.  

Data Management Plans are living documents and can evolve over time.

Put yourself in the shoes of an end user.  What would you want to know about data that you are considering using?

![Questions](Data_Questions.png)

### Quick Hits for Data Management

**Backup**

![BackupPic](Backup.png)

**File Format**

Work with or translate to open formats where possible

![Format](formats.png)

**File Naming**

Create and document a convention for your file naming to store with data
![FileNaming](FileNaming.png)

**Standards**

Identify or create standards

![Standards](Standards.png)

### Activity

1. Reflect on the data in your project 
    - Have others collected similar data?
    - Are you aware of any standards and best practices in your lab?  Field?
    - Are you doing primary data creation or using building upon/deriving something new from existing datasets?
    - Who else might be interested in the data you are working with?
    
  
### Suggested readings

[The FAIR Guiding Principles for scientific data management and stewardship](https://www.nature.com/articles/sdata201618)

[DataONE Primer on Data Management:   ](https://www.dataone.org/sites/all/documents/DataONE_BP_Primer_020212.pdf)

