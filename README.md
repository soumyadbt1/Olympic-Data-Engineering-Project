# Olympic-Data-Engineering-Project

## Project Overview :
This project aims to create an end-to-end data engineering pipeline for processing and analyzing Olympic data. The key components of the project include:

**Data Ingestion** :
    
   - Source: Olympic data is retrieved from a GitHub repository using API call from ADF.
   - Tool: Azure Data Factory (ADF) is utilized to orchestrate the data ingestion process via pipeline.
   - Destination: The ingested raw data is stored in an Azure Data Lake Gen2 raw container.
    
**Data Transformation** :
    
   - Tool: Azure Databricks is used to perform data transformations on the raw data.
   - Process: The raw data is cleaned, structured, and prepared for analysis.
   - Output: Transformed data is written back to a separate container in Azure Data Lake.
    
**Data Analysis and Reporting**
   - Tool: Azure Synapse Analytics is employed to load the transformed data into database tables for further analysis.
   - SQL Analysis: Various SQL queries and analysis are conducted on the data to generate insights.
   - Reporting: Power BI connects to Azure Synapse to create visual reports and dashboards, providing comprehensive insights into the Olympic data.
     
**Technologies Used** :
   - Azure Data Factory
   - Azure Data Lake Gen2
   - Azure Databricks
   - Azure Synapse Analytics
   - Power BI

This project showcases the integration of Azure services to build a scalable, efficient data pipeline from data ingestion to visualization.

### Architecture Of Project : 
![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/Project%20Architecture.JPG)

#### Dataset Used :
https://github.com/darshilparmar/tokyo-olympic-azure-data-engineering-project/tree/main/data
![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/source%20data.JPG)

#### STEPS FOLLOWED : 

1. Created a JSON file to put in the items SourceBaseURL, SourceRelativeURL and sinkFileName which are used in the pipeline.
     

