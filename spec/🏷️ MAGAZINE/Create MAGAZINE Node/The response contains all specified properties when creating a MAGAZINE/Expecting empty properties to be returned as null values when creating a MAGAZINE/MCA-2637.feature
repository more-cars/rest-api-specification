@REQ_MCA-2629
Feature: Create MAGAZINE Node
  As an API contributor
  I want to be able to create MAGAZINES
  So I can fill gaps in the database

  @RULE_MCA-2635
  Rule: The response contains all specified properties when creating a MAGAZINE

    @TEST_MCA-2637 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a MAGAZINE
      When the user creates a "MAGAZINE" "Top Gear" with the following data
        | key  | value    |
        | name | Top Gear |
      Then the response should contain the following properties
        | key                    | value    |
        | name                   | Top Gear |
        | founded                |          |
        | defunct                |          |
        | focus                  |          |
        | publication_frequency  |          |
        | single_copy_price      |          |
        | single_copy_price_unit |          |
        | publication_format     |          |
        | circulation            |          |
        | circulation_year       |          |
        | publisher              |          |
        | issn                   |          |
        | country_code           |          |
