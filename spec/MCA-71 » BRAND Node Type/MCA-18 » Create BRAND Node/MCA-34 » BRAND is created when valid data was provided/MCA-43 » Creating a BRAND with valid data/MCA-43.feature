@REQ_MCA-18
Feature: Create BRAND Node
  As an API contributor\
  I want to be able to create BRANDs\
  So I can fill gaps in the database

  @RULE_MCA-34
  Rule: BRAND is created when valid data was provided

    @TEST_MCA-43 @implemented
    Scenario: Creating a BRAND with valid data
      When the user creates a "BRAND" "DKW" with the following data
        | key       | value           | datatype |
        | name      | DKW             | string   |
        | full_name | Dampfkraftwagen | string   |
        | founded   | 1916            | number   |
        | defunct   | 1966            | number   |
        | wmi       | -               | string   |
        | hsn       | 0010            | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "BRAND" "DKW"
      When the user requests the "BRAND" "DKW"
      Then the response should return the "BRAND" "DKW"
