# OMOP CDM API

## Introduction

Observation Medical Outcomes Partnership (OMOP) Common data model (CDM) is an open community data standard, designed to standardize the structure 
and content of observational data and to enable efficient analyses that can produce reliable evidence. 

### Category of OMOP CDM Tables

The OMOP CDM output tables are in the following categories:

- Clinical data tables
- Health System data tables
- Health Economics data tables
- Standardized derived elements
- Metadata tables

This repository contains a Rest API for OMOP CDM version 5.4 standard clinical and health systems data tables only. More information on OMOP CDM is 
found here: [info](https://www.ohdsi.org/data-standardization/the-common-data-model/)

### Rest API

The Rest API is developed using django restframework. The Observational Health Data Science and Informatics (OHDSI) has a community of open source 
OMOP developer tools ranging from data profiling to analytics. I developed this Rest API to make it easy for those who want to come up with a 
customized dashboard for their OMOP analytics.
