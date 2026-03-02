@REQ_MCA-2714
Feature: Create MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to create MAGAZINE ISSUES
  So I can fill gaps in the database

  @RULE_MCA-2720
  Rule: The response contains all specified properties when creating a MAGAZINE ISSUE

    @TEST_MCA-2722 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a MAGAZINE ISSUE
      When the user creates a "MAGAZINE ISSUE" "Sieger-Typen" with the following data
        | key   | value        | datatype |
        | title | Sieger-Typen | string   |
      Then the response should contain the following properties
        | key                    | value        | datatype |
        | title                  | Sieger-Typen | string   |
        | consecutive_number     |              | number   |
        | issue_number           |              | number   |
        | issue_year             |              | number   |
        | release_date           |              | string   |
        | single_copy_price      |              | number   |
        | single_copy_price_unit |              | string   |
        | pages                  |              | number   |
