@REQ_MCA-5928
Feature: Update BOOK Node
  As an API contributor
  I want to be able to update a BOOK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5937
  Rule: The response contains all properties that are officially specified when updating a BOOK

    @TEST_MCA-5939 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a BOOK
      Given there exists a "BOOK" "F1 in Numbers"
      When the user updates the node "F1 in Numbers" with the following data
        | key                 | value                       |
        | title               | Living the Supercar Dream_2 |
        | author              |                             |
        | publisher           |                             |
        | year_of_publication |                             |
        | isbn                |                             |
        | pages               |                             |
        | language            |                             |
      Then the response should contain the following properties
        | key                 | value                       |
        | title               | Living the Supercar Dream_2 |
        | author              |                             |
        | publisher           |                             |
        | year_of_publication |                             |
        | isbn                |                             |
        | pages               |                             |
        | language            |                             |
