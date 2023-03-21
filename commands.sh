#!/bin/bash

az webapp up --name ml-flask-webapp --resource-group Azuredevops --location southeastasia --sku B1 --runtime "PYTHON:3.8"
