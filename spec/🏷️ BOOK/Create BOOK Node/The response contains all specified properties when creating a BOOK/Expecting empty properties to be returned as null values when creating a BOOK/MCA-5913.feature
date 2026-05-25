@REQ_MCA-5905
Feature: Create BOOK Node
  As an API contributor
  I want to be able to create BOOKS
  So I can fill gaps in the database

  @RULE_MCA-5911
  Rule: The response contains all specified properties when creating a BOOK

    @TEST_MCA-5913 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a BOOK
      When the user creates a "BOOK" "F1 in Numbers" with the following data
        | key   | value                     |
        | title | Living the Supercar Dream |
      Then the response should contain the following properties
        | key                 | value                     |
        | title               | Living the Supercar Dream |
        | author              |                           |
        | publisher           |                           |
        | year_of_publication |                           |
        | isbn                |                           |
        | pages               |                           |
        | language            |                           |
