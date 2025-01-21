# Match Plus Data Warehouse

## Summary
For my Data Warehousing capstone project at UNT, I developed a complete solution to analyze and visualize key metrics for a dating application. The goal was to turn raw data into meaningful insights that could help improve the platform's performance and user experience.
The project included three parts:
- **Data Modeling:** Building conceptual and logical models to organize the data structure.
- **SQL Data Warehouse:** Creating a centralized database to store and manage the app's data efficiently.
- **Power BI Dashboard:** Designing an interactive dashboard to showcase key performance indicators in a clear and actionable way.

## Technical Skills - **Data Modeling, SQL, SSMS, Data Warehousing, PowerBI, Dashboard Development, ETL, Data Visualization**


## Modeling
**[The full report submitted as my assignment can be found here](https://media.licdn.com/dms/document/media/v2/D562DAQFsjdY7YoJFQw/profile-treasury-document-pdf-analyzed/profile-treasury-document-pdf-analyzed/0/1729224219141?e=1738195200&v=beta&t=9KWDbhDM-wRWjfvk7bVIOBPiUJxzb7w0bqn-OHyPS4k)**

- Initial mapping and planning was done through Excel to generate important entities, attributes and assign primary/foriegn keys.
![alt text](https://github.com/SimpleStepper/MatchPlusWarehouse/blob/main/assets/MatchPlusExelPlanner.png)
- ERD modeling was done through ERDPlus to generate a conceptual map of interconnected entities and cardinal relationships for the creation of a database.
![alt text](https://github.com/SimpleStepper/MatchPlusWarehouse/blob/main/assets/MatchPlusERDPlus%20Diagram.png)
- Finally a logical map was created to show the relational schema used in the database and link the primary and foriegn keys.
![alt text](https://github.com/SimpleStepper/MatchPlusWarehouse/blob/main/assets/MatchPlusRelationalDiagram.png)

## SQL Data Warehouse
**[The entire SQL source code I made can be found here](https://github.com/SimpleStepper/MatchPlusWarehouse/blob/main/MatchplusCode.sql)** 
- With the relational schema created, we are able to create the data warehouse using SQL. The full
SQL code is provided in the attached file with comments, however, here is the core table formula
used to create each table in the data warehouse. SSMS was used to create the database.
![alt text](https://github.com/SimpleStepper/MatchPlusWarehouse/blob/main/assets/MatchPlusSQLExample.png)
This showcases the initial code of the database in SSMS and fictional data generated to populate the tables. SQL database diagram which matches our planned relational schema, which means our data is properly linked with primary keys and relates to the core "User" table.

## Data Visualization 
[The full interactive PowerBI Dashboard can be found here](https://app.powerbi.com/groups/me/reports/1fc12281-522e-46fc-ba79-153c268183cf/ReportSection?ctid=70de1992-07c6-480f-a318-a1afcba03983&experience=power-bi)

Using PowerBI, the interactive dashboard was created to **highlight key statistics** within our data base for fast and easy decision making. The dashboard highlights KPI's such as **age, gender, education levels, ethnicity, location and Interest** for analytical decision making. The goal of this dashboard was to create something that matched the websites color scheme, allow data to be **easily interpreted and provide filters** (such as male or female) to allow quick analysis over the dating applications userbase. 
![alt text](https://github.com/SimpleStepper/MatchPlusWarehouse/blob/main/assets/MatchPlusDashboard.png)
Due to PowerBI interacting with our logical dataset, the dashboard is interactable and can be analyzed further by clicking on any given category 


