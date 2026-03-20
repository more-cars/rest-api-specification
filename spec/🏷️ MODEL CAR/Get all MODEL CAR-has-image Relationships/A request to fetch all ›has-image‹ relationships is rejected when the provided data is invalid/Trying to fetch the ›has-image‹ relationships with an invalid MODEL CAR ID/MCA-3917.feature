@REQ_MCA-3911
Feature: Get all MODEL CAR-has-image Relationships

  @RULE_MCA-3916
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3917 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid MODEL CAR ID
      Given "MODEL CAR" "F40 Scale Model" does NOT exist
      When the user requests all "has image" relationships for "F40 Scale Model"
      Then the request should be rejected with status code 404
