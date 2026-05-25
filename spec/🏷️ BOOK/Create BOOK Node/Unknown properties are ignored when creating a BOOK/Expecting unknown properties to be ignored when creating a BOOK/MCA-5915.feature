@REQ_MCA-5905
Feature: Create BOOK Node
  As an API contributor
  I want to be able to create BOOKS
  So I can fill gaps in the database

  @RULE_MCA-5914
  Rule: Unknown properties are ignored when creating a BOOK

    @TEST_MCA-5915 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a BOOK
      When the user creates a "BOOK" "F1 in Numbers" with the following data
        | key                 | value                     |
        | title               | Living the Supercar Dream |
        | author              | Tim Burton                |
        | publisher           | Blink Publishing          |
        | year_of_publication | 2016                      |
        | isbn                | 9783868528893             |
        | pages               | 256                       |
        | language            | en                        |
        | thimbleweed         | park                      |
      Then the response should contain the following properties
        | key                 | value                     |
        | title               | Living the Supercar Dream |
        | author              | Tim Burton                |
        | publisher           | Blink Publishing          |
        | year_of_publication | 2016                      |
        | isbn                | 9783868528893             |
        | pages               | 256                       |
        | language            | en                        |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
