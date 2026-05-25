@REQ_MCA-5928
Feature: Update BOOK Node
  As an API contributor
  I want to be able to update a BOOK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5937
  Rule: The response contains all properties that are officially specified when updating a BOOK

    @TEST_MCA-5938 @implemented
    Scenario: Expecting all properties to be returned when updating a BOOK
      Given there exists a "BOOK" "F1 in Numbers"
      When the user updates the node "F1 in Numbers" with the following data
        | key                 | value                       |
        | title               | Living the Supercar Dream_2 |
        | author              | Tim Burton_2                |
        | publisher           | Blink Publishing_2          |
        | year_of_publication | 2018                        |
        | isbn                | 9783868528893_2             |
        | pages               | 258                         |
        | language            | en_2                        |
      Then the request should be confirmed with status code 200
      And the response should contain the following properties
        | key                 | value                       |
        | title               | Living the Supercar Dream_2 |
        | author              | Tim Burton_2                |
        | publisher           | Blink Publishing_2          |
        | year_of_publication | 2018                        |
        | isbn                | 9783868528893_2             |
        | pages               | 258                         |
        | language            | en_2                        |
