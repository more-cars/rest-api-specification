@REQ_MCA-5905
Feature: Create BOOK Node
  As an API contributor
  I want to be able to create BOOKS
  So I can fill gaps in the database

  @RULE_MCA-5911
  Rule: The response contains all specified properties when creating a BOOK

    @TEST_MCA-5912 @implemented
    Scenario: Expecting all properties to be returned when creating a BOOK
      When the user creates a "BOOK" "F1 in Numbers" with the following data
        | key                 | value                     |
        | title               | Living the Supercar Dream |
        | author              | Tim Burton                |
        | publisher           | Blink Publishing          |
        | year_of_publication | 2016                      |
        | isbn                | 978-3-86-852889-3         |
        | pages               | 256                       |
        | language            | en                        |
      Then the response should contain the following properties
        | key                 | value                     |
        | title               | Living the Supercar Dream |
        | author              | Tim Burton                |
        | publisher           | Blink Publishing          |
        | year_of_publication | 2016                      |
        | isbn                | 978-3-86-852889-3         |
        | pages               | 256                       |
        | language            | en                        |
