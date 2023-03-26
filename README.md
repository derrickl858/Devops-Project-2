# Overview
This is a Python-based machine learning web application used to perform housing prices prediction in Boston given the pre-trained model. This project is also configured to use CI/CD integration to enhance the development process.

## Project Plan
The link to Trello board can be found [here](https://trello.com/b/dlQki6Lj/ml-housing-prediction)

The link to spreadsheet project planning can be found [here](https://docs.google.com/spreadsheets/d/19llKXC8RdFs9Ft9dTgM1rKpMnxMJeXlthlQD8qQkTPU/edit?usp=sharing)


## Pre-Requisites
To build and run this application on your own Azure Cloud using CI/CD pipeline, it is expected that you fulfil the following requirements:
* Have access to Azure Portal with a valid subscription
* Have a VM setup as Agent in Azure DevOps Agent Pool to run the automation in the pipeline.
* Configured and setup Azure DevOps Organization and linked the organization 

## Instructions
Architectural Diagram

![image](https://user-images.githubusercontent.com/43820257/227758351-9135cc10-953f-456b-a8fe-dd8461e640d9.png)

### Running in local environment
1. After cloning the project to your environment, run `make install` to install all dependencies.

2. Run `./app.py` to start the application.

3. Using a different shell session, run `./make_prediction.sh` to query the local application.

### Running in Azure App Service
1. Using Azure Cloud Shell, clone the git repository.

![image](https://user-images.githubusercontent.com/43820257/227762084-043e509e-b7f2-404f-8e58-eff1ac48f14c.png)

2. Execute `./commands.sh` to create an Azure App Service and deploy the application.

3. In Azure Cloud Shell, run `./make_predict_azure_app.sh` to make the prediction call to the application on App Service.

Note: You can change the App Service named in the `commands.sh` script when you crearte and deploy the application. Then, you will also need to modify the `make_predict_azure_app.sh` to your application name.

### Using Azure Pipeline to Integrate CI/CD
This repository is also configured with Github Actions & Azure DevOps to automate CI/CD into the development. When a new commit is pushed into the master branch, Github Action will be triggered to perform testing and linting of the project.  Another series of action will also be triggered in Azure DevOps to perform the similar action, with an additional step to build and deploy to the Azure App Service if all steps are passed.


* Project running on Azure App Service

![image](https://user-images.githubusercontent.com/43820257/227762050-a5e3633f-6508-41e0-87ea-6c43db60ae5f.png)

* Output of a test run

![image](https://user-images.githubusercontent.com/43820257/227766124-c66a422c-f413-4dd9-99a8-26691dcdef6c.png)

* Passing tests that are displayed after running the `make all` command from the `Makefile`

![image](https://user-images.githubusercontent.com/43820257/227762344-48449433-5145-41b9-a818-007f4aafa773.png)

* Successful deploy of the project in Azure Pipelines. 

![image](https://user-images.githubusercontent.com/43820257/227766144-58d842ee-30ba-4082-9be3-9cf39dc444b4.png)

* Running Azure App Service from Azure Pipelines automatic deployment

![image](https://user-images.githubusercontent.com/43820257/227766168-d986f7cb-3c4b-4fd4-a20d-ef3b162d951d.png)

* Successful prediction from deployed flask app in Azure Cloud Shell.  

![image](https://user-images.githubusercontent.com/43820257/227766204-09e7eccb-4dff-471c-8642-b3b9e1ccef26.png)

### Load testing with locust
![image](https://user-images.githubusercontent.com/43820257/227801681-50b6a7f6-9517-4a9f-9238-85e4db7e88ff.png)

![image](https://user-images.githubusercontent.com/43820257/227801713-a794bdc9-6765-4db8-9587-4c724bb51655.png)



### Output of streamed log files from deployed application
```
Starting Live Log Stream ---
2023-03-26T09:16:08.871477556Z /tmp/8db2dcf5d5d9f1d/antenv/lib/python3.8/site-packages/sklearn/base.py:329: UserWarning: Trying to unpickle estimator LinearRegression from version 1.1.3 when using version 1.0.2. This might lead to breaking code or invalid results. Use at your own risk. For more info please refer to:
2023-03-26T09:16:08.871978077Z https://scikit-learn.org/stable/modules/model_persistence.html#security-maintainability-limitations
2023-03-26T09:16:08.872012179Z   warnings.warn(
2023-03-26T09:16:08.872018679Z [2023-03-26 09:16:08,870] INFO in app: JSON payload: %s json_payload
2023-03-26T09:16:08.881969893Z [2023-03-26 09:16:08,881] INFO in app: inference payload DataFrame: %s inference_payload
2023-03-26T09:16:08.882909632Z [2023-03-26 09:16:08,882] INFO in app: Scaling Payload: %s payload
2023-03-26T09:16:08.920279588Z 169.254.129.1 - - [26/Mar/2023:09:16:08 +0000] "POST /predict HTTP/1.1" 200 35 "-" "curl/7.86.0"
```

## Enhancements
Things to improve in future enhancement:
* Setup more test cases
* Have a global and centralized configuration to store and modify variables (eg: App Service name)
* Setting up App Service, VM Instance for agent, Azure DevOps Organization using Terraform

## Demo 
https://youtu.be/O6Tg7O4nhJo
