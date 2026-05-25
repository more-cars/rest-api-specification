@REQ_MCA-5905
Feature: Create BOOK Node
  As an API contributor
  I want to be able to create BOOKS
  So I can fill gaps in the database

  @RULE_MCA-5906
  Rule: Requests to create a BOOK are accepted when the provided data is valid

    @TEST_MCA-5907 @implemented
    Scenario: Creating a BOOK with valid data
      When the user creates a "BOOK" "F1 in Numbers" with the following data
        | key                 | value                     |
        | title               | Living the Supercar Dream |
        | author              | Tim Burton                |
        | publisher           | Blink Publishing          |
        | year_of_publication | 2016                      |
        | isbn                | 978-3-86-852889-3         |
        | pages               | 256                       |
        | language            | en                        |
      Then the request should be confirmed with status code 201
      And the response should return the "BOOK" "F1 in Numbers"
