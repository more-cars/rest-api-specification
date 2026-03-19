@REQ_MCA-3954
Feature: Get MODEL CAR BRAND Node by ID
  As an API consumer
  I want to be able to request a specific MODEL CAR BRAND
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3957
  Rule: Requests are rejected when there exists no MODEL CAR BRAND with the provided ID

    @TEST_MCA-3958
    Scenario: Requesting a MODEL CAR BRAND with invalid ID
      When the user requests a non-existing "MODEL CAR BRAND"
      Then the request should be rejected with status code 404
