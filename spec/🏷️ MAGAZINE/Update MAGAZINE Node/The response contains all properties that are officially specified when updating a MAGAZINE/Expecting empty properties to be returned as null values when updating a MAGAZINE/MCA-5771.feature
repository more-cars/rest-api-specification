@REQ_MCA-5760
Feature: Update MAGAZINE Node
  As an API contributor
  I want to be able to update a MAGAZINE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5769
  Rule: The response contains all properties that are officially specified when updating a MAGAZINE

    @TEST_MCA-5771 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a MAGAZINE
      Given there exists a "MAGAZINE" "sport auto"
      When the user updates the node "sport auto" with the following data
        | key                    | value      |
        | name                   | Top Gear_2 |
        | founded                |            |
        | defunct                |            |
        | focus                  |            |
        | publication_frequency  |            |
        | single_copy_price      |            |
        | single_copy_price_unit |            |
        | publication_format     |            |
        | circulation            |            |
        | circulation_year       |            |
        | publisher              |            |
        | issn                   |            |
        | country_code           |            |
      Then the response should contain the following properties
        | key                    | value      |
        | name                   | Top Gear_2 |
        | founded                |            |
        | defunct                |            |
        | focus                  |            |
        | publication_frequency  |            |
        | single_copy_price      |            |
        | single_copy_price_unit |            |
        | publication_format     |            |
        | circulation            |            |
        | circulation_year       |            |
        | publisher              |            |
        | issn                   |            |
        | country_code           |            |
