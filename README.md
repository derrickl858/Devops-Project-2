# Overview
This is a Python-based machine learning web application used to perform housing prices prediction in Boston given the pre-trained model. This project is also configured to use CI/CD integration to enhance the development process.

## Project Plan
The link to Trello board can be found here https://trello.com/b/dlQki6Lj/ml-housing-prediction
*** Excel attached

## Instructions
###Architectural Diagram
![image](https://user-images.githubusercontent.com/43820257/227758351-9135cc10-953f-456b-a8fe-dd8461e640d9.png)

### Running in local environment
1. After cloning the project to your environment, run `make install` to install all dependencies.
2. Run `./app.py` to start the application.
3. Using a different shell session, run `./make_prediction.sh` to query the local application.

### Running in Azure App Service
<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

* Project running on Azure App Service
* ![image](https://user-images.githubusercontent.com/43820257/227762050-a5e3633f-6508-41e0-87ea-6c43db60ae5f.png)

* Project cloned into Azure Cloud Shell
* ![image](https://user-images.githubusercontent.com/43820257/227762084-043e509e-b7f2-404f-8e58-eff1ac48f14c.png)

* Passing tests that are displayed after running the `make all` command from the `Makefile`
![image](https://user-images.githubusercontent.com/43820257/227762344-48449433-5145-41b9-a818-007f4aafa773.png)

* Output of a test run
![image](https://user-images.githubusercontent.com/43820257/227766124-c66a422c-f413-4dd9-99a8-26691dcdef6c.png)

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).
* ![image](https://user-images.githubusercontent.com/43820257/227766144-58d842ee-30ba-4082-9be3-9cf39dc444b4.png)

* Running Azure App Service from Azure Pipelines automatic deployment
* ![image](https://user-images.githubusercontent.com/43820257/227766168-d986f7cb-3c4b-4fd4-a20d-ef3b162d951d.png)


* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:
![image](https://user-images.githubusercontent.com/43820257/227766204-09e7eccb-4dff-471c-8642-b3b9e1ccef26.png)


* Output of streamed log files from deployed application
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

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


