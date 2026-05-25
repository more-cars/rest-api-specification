@REQ_MCA-5918
Feature: Get BOOK Node by ID
  As an API consumer
  I want to be able to request a specific BOOK
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-5919
  Rule: Requesting a BOOK with a valid ID returns the respective node

    @TEST_MCA-5920 @implemented
    Scenario: Requesting a BOOK with valid ID
      Given there exists a "BOOK" "F1 in Numbers"
      When the user requests the "BOOK" "F1 in Numbers"
      Then the response should return with status code 200
      And the response should return the "BOOK" "F1 in Numbers"
