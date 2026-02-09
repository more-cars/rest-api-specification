@REQ_MCA-1790
Feature: Create SESSION RESULT-has-image Relationship

  @RULE_MCA-1797
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1798 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "IMAGE" "podium"
      And there exists a "has image" relationship between "1st place" and "podium"
      When the user creates a "has image" relationship between "1st place" and "podium"
      Then the response should return with status code 304
