@REQ_MCA-3954
Feature: Get MODEL CAR BRAND Node by ID
  As an API consumer
  I want to be able to request a specific MODEL CAR BRAND
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3955
  Rule: Requesting a MODEL CAR BRAND with a valid ID returns the respective node

    @TEST_MCA-3956 @implemented
    Scenario: Requesting a MODEL CAR BRAND with valid ID
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      When the user requests the "MODEL CAR BRAND" "Hot Wheels"
      Then the response should return with status code 200
      And the response should return the "MODEL CAR BRAND" "Hot Wheels"
