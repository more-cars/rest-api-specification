@REQ_MCA-1016
Feature: Get all RACE TRACK-has-image Relationships

  @RULE_MCA-1017
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-1018 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exist 3 "has image" relationships for "Hockenheimring"
      When the user requests all "has image" relationships for "Hockenheimring"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
