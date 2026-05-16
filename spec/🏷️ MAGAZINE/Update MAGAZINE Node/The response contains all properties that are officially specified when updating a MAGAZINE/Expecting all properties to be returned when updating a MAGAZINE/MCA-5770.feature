@REQ_MCA-5760
Feature: Update MAGAZINE Node
  As an API contributor
  I want to be able to update a MAGAZINE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5769
  Rule: The response contains all properties that are officially specified when updating a MAGAZINE

    @TEST_MCA-5770 @implemented
    Scenario: Expecting all properties to be returned when updating a MAGAZINE
      Given there exists a "MAGAZINE" "sport auto"
      When the user updates the node "sport auto" with the following data
        | key                    | value                     |
        | name                   | Top Gear_2                |
        | founded                | 1995                      |
        | defunct                |                           |
        | focus                  | sports cars_2             |
        | publication_frequency  | monthly_2                 |
        | single_copy_price      | 7.99                      |
        | single_copy_price_unit | EUR                       |
        | publication_format     | print_2                   |
        | circulation            | 150886                    |
        | circulation_year       | 2015                      |
        | publisher              | Immediate Media Company_2 |
        | issn                   | 1350-9624                 |
        | country_code           | DE                        |
      Then the request should be confirmed with status code 201
      And the response should contain the following properties
        | key                    | value                     |
        | name                   | Top Gear_2                |
        | founded                | 1995                      |
        | defunct                |                           |
        | focus                  | sports cars_2             |
        | publication_frequency  | monthly_2                 |
        | single_copy_price      | 7.99                      |
        | single_copy_price_unit | EUR                       |
        | publication_format     | print_2                   |
        | circulation            | 150886                    |
        | circulation_year       | 2015                      |
        | publisher              | Immediate Media Company_2 |
        | issn                   | 1350-9624                 |
        | country_code           | DE                        |
