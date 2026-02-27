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
        | key  | value    | datatype |
        | name | Top Gear | string   |
      Then the response should contain the following properties
        | key                    | value    | datatype |
        | name                   | Top Gear | string   |
        | founded                |          | number   |
        | defunct                |          | number   |
        | focus                  |          | string   |
        | publication_frequency  |          | string   |
        | single_copy_price      |          | number   |
        | single_copy_price_unit |          | string   |
        | publication_format     |          | string   |
        | circulation            |          | number   |
        | circulation_year       |          | number   |
        | publisher              |          | string   |
        | issn                   |          | string   |
