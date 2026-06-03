@REQ_MCA-2629
Feature: Create MAGAZINE Node
  As an API contributor
  I want to be able to create MAGAZINES
  So I can fill gaps in the database

  @RULE_MCA-2635
  Rule: The response contains all specified properties when creating a MAGAZINE

    @TEST_MCA-2636 @implemented
    Scenario: Expecting all properties to be returned when creating a MAGAZINE
      When the user creates a "MAGAZINE" "Top Gear" with the following data
        | key                    | value                   |
        | name                   | Top Gear                |
        | founded                | 1993                    |
        | defunct                |                         |
        | focus                  | sports-cars             |
        | publication_frequency  | monthly                 |
        | single_copy_price      | 5.99                    |
        | single_copy_price_unit | GBP                     |
        | publication_format     | print                   |
        | circulation            | 150884                  |
        | circulation_year       | 2013                    |
        | publisher              | Immediate Media Company |
        | issn                   | 1350-9624               |
        | country_code           | GB                      |
      Then the response should contain the following properties
        | key                    | value                   |
        | name                   | Top Gear                |
        | founded                | 1993                    |
        | defunct                |                         |
        | focus                  | sports-cars             |
        | publication_frequency  | monthly                 |
        | single_copy_price      | 5.99                    |
        | single_copy_price_unit | GBP                     |
        | publication_format     | print                   |
        | circulation            | 150884                  |
        | circulation_year       | 2013                    |
        | publisher              | Immediate Media Company |
        | issn                   | 1350-9624               |
        | country_code           | GB                      |
