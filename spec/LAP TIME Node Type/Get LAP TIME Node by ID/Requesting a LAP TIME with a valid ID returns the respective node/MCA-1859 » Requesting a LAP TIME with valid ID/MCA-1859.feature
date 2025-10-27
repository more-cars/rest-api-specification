@REQ_MCA-1857
Feature: Get LAP TIME Node by ID
  As an API consumer
  I want to be able to request a specific LAP TIME
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1858
  Rule: Requesting a LAP TIME with a valid ID returns the respective node

    @TEST_MCA-1859
    Scenario: Requesting a LAP TIME with valid ID
      Given there exists a "LAP TIME" "AVUS record"
      When the user requests the "LAP TIME" "AVUS record"
      Then the response should return with status code 200
      And the response should return the "LAP TIME" "AVUS record"
