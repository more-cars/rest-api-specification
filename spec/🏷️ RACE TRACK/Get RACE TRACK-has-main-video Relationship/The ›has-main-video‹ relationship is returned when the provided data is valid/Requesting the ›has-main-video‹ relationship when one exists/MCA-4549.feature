@REQ_MCA-4547
Feature: Get RACE TRACK-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACE TRACK
  So I can instantly load the VIDEO that best represents the RACE TRACK

  @RULE_MCA-4548
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-4549
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "RACE TRACK" "Nürburgring"
      And there exists a "has-main-video" relationship "R" for "Nürburgring"
      When the user requests the "has-main-video" relationship for "Nürburgring"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
