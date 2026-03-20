@REQ_MCA-3829
Feature: Get MODEL CAR Node by ID
  As an API consumer
  I want to be able to request a specific MODEL CAR
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3832
  Rule: Requests are rejected when there exists no MODEL CAR with the provided ID

    @TEST_MCA-3833 @implemented
    Scenario: Requesting a MODEL CAR with invalid ID
      When the user requests a non-existing "MODEL CAR"
      Then the request should be rejected with status code 404
