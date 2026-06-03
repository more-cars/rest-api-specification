@REQ_MCA-5760
Feature: Update MAGAZINE Node
  As an API contributor
  I want to be able to update a MAGAZINE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5761
  Rule: Requests to update a MAGAZINE are accepted when the provided data is valid

    @TEST_MCA-5762 @implemented
    Scenario: Updating a MAGAZINE with valid data
      Given there exists a "MAGAZINE" "sport auto"
      When the user updates the node "sport auto" with the following data
        | key                    | value                     |
        | name                   | Top Gear_2                |
        | founded                | 1995                      |
        | defunct                |                           |
        | focus                  | sports-cars               |
        | publication_frequency  | monthly                   |
        | single_copy_price      | 7.99                      |
        | single_copy_price_unit | EUR                       |
        | publication_format     | print                     |
        | circulation            | 150886                    |
        | circulation_year       | 2015                      |
        | publisher              | Immediate Media Company_2 |
        | issn                   | 1350-9624                 |
        | country_code           | DE                        |
      Then the request should be confirmed with status code 200
