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

- **Journals**:  RDM is critical in providing the supporting data that journals are requiring more and more often.  Provision of data is critical to reproducability and credibility.  

- **Funders**:  Funding agencies, particularly public funding agencies are under pressure to increase their accountability and show value for their investment in research.  They also understand that data that is discoverable/reusable may prevent duplication of effort and accelerate new research. 

- **Science/Body of Knowledge**:  Well managed data will be discoverable, accessible and understandable making it ultimitely reusable for new science or study!  

### Drivers of RDM - Data as a Research Output

The policies of funding agencies around the world have increased their focus on data management in recent years.  In Canada, the Tri-Agency (SSHRC, NSERC, CIHR) have great influence.

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

### DRAFT:  [Tri-Agency Policy on Research Data Management](http://www.science.gc.ca/eic/site/063.nsf/eng/h_97610.html)
**Acceptance of funds indicated the acceptance of the the terms of the policy**

**Calls upon institutions a strategy to "provide its researchers with an environment that enables and supports world-class research data management practices including:**
 - Recognizing data as a research output
 - Supporting the implementation of data management practices in accordance with ethical/legal/commercial obligations
 - promotion of the importance os data management to researchers, staff and students
 - Providing guidance on managing data in accordance with principles outlined in TASPDDM
 - Development of institutional data management policies and standards for data management plans
 - Ensuring researchers have data management plans in place
 - Providing access/support for preservation/curation platforms
 
 **Calls on Researchers to:**
  - Complete Data Management Plans
  - Deposit data in recognized digital repository
  
  **This document is still in draft and will be implemented gradually to allow capacity to build

Similar calls for action are seen beyond funders.

Journals: 

Science:  
> After publication, all data and materials necessary to understand, assess, and extend the conclusions of the manuscript must be available to any reader of a Science Journal. After publication, all reasonable requests for data, code, or materials must be fulfilled

Sage - Big Data and Society
> ...we are committed to facilitating openness, transparency and reproducibility of research. Where relevant, Big Data & Society encourages authors to share their research data in a suitable public repository subject to ethical considerations and to include a data accessibility statement in their manuscript file. 

### FAIR (Findability, Accessibility, Interoperability, and Reusability) Data Principles

- The term FAIR was coined at a Lorentz workshop in 2014.  These principles have a focus on making digital assets discoverable in a machine driven way.
- The paper "[The FAIR Guiding Principles for scientific data management and stewardship](The FAIR Guiding Principles for scientific data management and stewardship)" was published in Nature: Scientific Data in 2016
- Outlines a set of 14 principles to be addressed in making data FAIR:

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

### Portage Network

The Portage Network was launched in 2015 by the Canadian Association of Research Libraries (CARL) and it works within the library community to foster a national research data culture and facilitate shared stewardship of research data in Canada.  This mandate spans sectors, domains, and jurisdictions, requiring national coordination of RDM services and infrastructure. Portage seeks to contribute to this goal through:

- The coordination of RDM expertise, services, and technology
- Collaboration with other research data management stakeholders
- Education and training

The DMPAssistant is one part of their service. The DMPAssistant is similar to tools offered through other jurisdictions (e.g. DMPTool (U.S.)).  The tool serves as a guide to help researchers develop a comprehensive snapshot of the data involved in their project.  

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

[DataONE Primer on Data Management:   (https://www.dataone.org/sites/all/documents/DataONE_BP_Primer_020212.pdf)

