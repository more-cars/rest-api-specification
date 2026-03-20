@REQ_MCA-3911
Feature: Get all MODEL CAR-has-image Relationships

  @RULE_MCA-3912
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-3913 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exist 3 "has image" relationships for "F40 Scale Model"
      When the user requests all "has image" relationships for "F40 Scale Model"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
