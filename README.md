
# Finding a suitable apartment in Mumbai at the best rental price near the specified locations. 

A spatial data analysis using Jupyter Notebook, QGIS and PostGIS functionalities.


## Introduction

Mumbai is one of the most populous big cities in India, with rising population. The city is also recognised as India's economic capital due to the large number of firms and the organisational offices there. 
Due to the wide range of educational and employment prospects in Mumbai, people move there from all over the country, which stimulates the real estate market and raises the price of apartments that are 
available for rent or lease.

So, I attempted to evaluate the Mumbai apartments that will be available for buy or rent in 2020 using Python, PostGIS and QGIS functionalities, and came to the decisions based on a specified set of criteria.
## Motivation

Consider a person trying to purchase a quality apartment in Mumbai. Additionally, he or she had a few parameters that allowed them to narrow their search from the entire city of Mumbai to a certain neighbourhood. These are the conditions.
## Implementation

To begin the analysis, I downloaded the "Mumbai House Price" dataset from Kaggle. To clean the data, I wrote a small Python script and removed a few columns with NULL values in order to keep the analysis very clear and simple.

After then, I converted a pandas dataframe into a GeoPandas dataframe in order to represent the spatial data in PostGIS environment. So, the data is then imported into a PostgreSQL database to perform spatial queries on the data.

## Analysis

Steps to perform the analysis & draw conclusions:

    1. Visualize raw data on the map
    2. Set conditions on the price range in the data to check availability of apartments
    3. Find suitable apartments within 5km radius of the Airport
    4. Check and select the apartments at the sea facing side
    5. Calculate the distance from the suitable apartment to the Naval Dockyard
## Conclusion

I was able to use a GIS technology to find out a suitable apartment in Mumbai and decide whether to buy or rent one that meets the criteria.  I also calculated the fastest and shortest routes from the selected apartment to the Naval Dockyard and found that the two routes differ little from one another.
## Project Details

    Kaggle: https://www.kaggle.com/jedipro/flats-for-rent-in-mumbai

    Tools Required: Python, PostgreSQL, PostGIS, QGIS

    List of generated layers:
    
        1. All the apartments available for sale.
        2. Apartments within the 5KM radius of the airport.
        3. Apartments within the 5KM radius of the airport and are facing west.
        4. The coastline of the area.
        5. Buffer zone of the coastline depicting 1000m from the coastline.
        6. Fastest route from the apartment to Naval Dockyards.
        7. Shortest route from the apartment to Naval Dockyards.
        
![Generated Map Showing Final Results](https://drive.google.com/file/d/1By8pbW1pL102bpGCWdq6pD_twSyiY8FA/view?usp=sharing)

## 🔗 Personal Links
[![portfolio](https://img.shields.io/badge/Portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://sites.google.com/view/prachi-sarode/home)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/prachi-sarode-448439167/)
[![medium](https://img.shields.io/badge/medium-000000?style=for-the-badge&logo=medium&logoColor=white)](https://prachisarode.medium.com/)


## Acknowledgements

 - [Medium Blog by Aveek Das](https://towardsdatascience.com/analyzing-houses-for-rent-in-mumbai-using-qgis-and-postgis-functions-7383e4223d0d)
