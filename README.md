# Best-Buy Automated Testing Solution
Interview project for the Best-Buy API.
# Installation
Just copy the project from GITHUB: https://github.com/PaymentGeek/serenity-rest-starter.git
# Running
Setup a Maven configuration with the following command line parameters: clean verify
# Test Reporting
Run the project, and there is a summary of the execution in the console. I've added some verbosing in the console
for a first layer of feedback. However, for a more detailed situation, please consult the generated report by opening it
in your browser.
file:///C:/Users/<local_User>/IdeaProjects/serenity-rest-starter/target/site/serenity/index.html
# Test planning
For the purpose of this assignment, I have selected one endpoint(Product) which I will cover with all basic CRUD operations.
I have implemented a lightweight set of validations.
# Test Cases
Feature: Best Buy Products Feature
Scenario 1: I get a list of products from Best Buy
Scenario Outline 2( 3 x tests ): I get a product based on an ID
Scenario Outline 3( 3 x tests ): I get a product based on an invalid ID

