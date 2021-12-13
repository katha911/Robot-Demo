*** Settings ***

#Librarys
Library     AppiumLibrary

#Keywords Frontend
Resource    Resources/Frontend/Keyword/keyword-register.robot
Resource    Resources/Frontend/Keyword/keyword-setup.robot

#Object Frontend
Resource    Resources/Frontend/Object/variable-setup.robot
