@REQ_MCA-5905
Feature: Create BOOK Node
  As an API contributor
  I want to be able to create BOOKS
  So I can fill gaps in the database

  @RULE_MCA-5916
  Rule: Read-only properties cannot be overridden by the user when creating a BOOK

    @TEST_MCA-5917 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a BOOK
      When the user creates a "BOOK" "F1 in Numbers" with the following data
        | key                 | value                     |
        | title               | Living the Supercar Dream |
        | author              | Tim Burton                |
        | publisher           | Blink Publishing          |
        | year_of_publication | 2016                      |
        | isbn                | 978-3-86-852889-3         |
        | pages               | 256                       |
        | language            | en                        |
        | id                  | 1234                      |
        | created_at          | 2025-01-01                |
        | updated_at          | 2025-01-01                |
      Then the response should contain an ID
      And the response should contain the following keys
        | key        |
        | created_at |
        | updated_at |
      But the response should NOT contain the ID 1234
      And the response should NOT contain the following properties
        | key        | value      |
        | created_at | 2025-01-01 |
        | updated_at | 2025-01-01 |
