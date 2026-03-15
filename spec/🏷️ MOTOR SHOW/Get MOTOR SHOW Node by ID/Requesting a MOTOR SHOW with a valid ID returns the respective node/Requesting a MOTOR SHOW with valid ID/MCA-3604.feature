@REQ_MCA-3602
Feature: Get MOTOR SHOW Node by ID
  As an API consumer
  I want to be able to request a specific MOTOR SHOW
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3603
  Rule: Requesting a MOTOR SHOW with a valid ID returns the respective node

    @TEST_MCA-3604 @implemented
    Scenario: Requesting a MOTOR SHOW with valid ID
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      When the user requests the "MOTOR SHOW" "IAA Frankfurt"
      Then the response should return with status code 200
      And the response should return the "MOTOR SHOW" "IAA Frankfurt"
