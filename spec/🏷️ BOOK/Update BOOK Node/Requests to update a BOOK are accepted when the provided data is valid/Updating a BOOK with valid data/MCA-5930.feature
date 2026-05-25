@REQ_MCA-5928
Feature: Update BOOK Node
  As an API contributor
  I want to be able to update a BOOK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5929
  Rule: Requests to update a BOOK are accepted when the provided data is valid

    @TEST_MCA-5930 @implemented
    Scenario: Updating a BOOK with valid data
      Given there exists a "BOOK" "F1 in Numbers"
      When the user updates the node "F1 in Numbers" with the following data
        | key                 | value                       |
        | title               | Living the Supercar Dream_2 |
        | author              | Tim Burton_2                |
        | publisher           | Blink Publishing_2          |
        | year_of_publication | 2018                        |
        | isbn                | 978-3-86-852889-3           |
        | pages               | 258                         |
        | language            | en                          |
      Then the request should be confirmed with status code 200
