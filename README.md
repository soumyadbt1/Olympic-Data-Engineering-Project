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
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/source%20JSON.JPG)

2. The above is then used in an HTTP Linked Server in Copy Job Activity with parameters SourceBaseURL
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/HTTP%20API%20link%20service%20and%20dataset%20parameters.JPG)

3. Build a Pipeline where Lookup Activity passes on objects to a ForEachLoop Iterator with Copy Job action in it.
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/pipeline%20created.JPG)

4. Output result of Debugging Lookup Activity.
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/JSON%20created%20by%20the%20Lookup%20Activity.JPG)

5. Triggered the pipeline run and it ran successfully.
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/Pipeline%20run%20successful.JPG)

6. The pipeline run ingested the CSV files to the raw-data container.
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/ingested%20csv%20files.JPG)

7. Performed few Transformations using Spark in Databricks and write the transformed data to "transformed-data" container.
 https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Code/Tokyo%20Olympic%20Transformation.ipynb

8. Created Lake Database "TokyoOlympicDB" and External Tables using files in ADLSg2 via Synapse.
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/external%20table%20from%20data%20lake.JPG)
 
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/created%20all%20tables%20in%20lake%20database.JPG)

9. Query the tables and do some analysis using SQL
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/query%20the%20table%20successfully.JPG)

 SQL Code:
 https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Code/Tokyo%20Data%20Analysis.sql
 
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/SQL%20Data%20Analysis.JPG)

11. Use the tables in Power BI to create some basic level of reporting on top it.
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/connecting%20to%20PBI.JPG)
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/connected%20to%20PBI.JPG)
 ![Image](https://github.com/soumyadbt1/Olympic-Data-Engineering-Project/blob/main/Snapshots/Basic%20Reporting.JPG)

Thats End of Project!!

Thank You!


 


     

