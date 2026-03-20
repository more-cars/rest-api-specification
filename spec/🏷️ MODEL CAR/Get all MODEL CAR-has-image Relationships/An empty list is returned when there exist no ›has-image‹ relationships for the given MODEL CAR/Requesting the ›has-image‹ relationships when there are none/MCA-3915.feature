@REQ_MCA-3911
Feature: Get all MODEL CAR-has-image Relationships

  @RULE_MCA-3914
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given MODEL CAR

    @TEST_MCA-3915 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exist 0 "has image" relationships for "F40 Scale Model"
      When the user requests all "has image" relationships for "F40 Scale Model"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
