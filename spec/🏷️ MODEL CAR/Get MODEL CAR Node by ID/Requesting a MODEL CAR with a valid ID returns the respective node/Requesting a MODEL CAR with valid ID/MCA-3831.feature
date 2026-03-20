@REQ_MCA-3829
Feature: Get MODEL CAR Node by ID
  As an API consumer
  I want to be able to request a specific MODEL CAR
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3830
  Rule: Requesting a MODEL CAR with a valid ID returns the respective node

    @TEST_MCA-3831 @implemented
    Scenario: Requesting a MODEL CAR with valid ID
      Given there exists a "MODEL CAR" "F40 Matchbox"
      When the user requests the "MODEL CAR" "F40 Matchbox"
      Then the response should return with status code 200
      And the response should return the "MODEL CAR" "F40 Matchbox"
