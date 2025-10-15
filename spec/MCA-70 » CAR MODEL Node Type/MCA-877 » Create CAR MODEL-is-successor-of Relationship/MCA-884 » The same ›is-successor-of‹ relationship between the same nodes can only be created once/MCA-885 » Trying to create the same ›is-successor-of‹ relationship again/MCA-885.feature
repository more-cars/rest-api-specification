@REQ_MCA-877
Feature: Create CAR MODEL-is-successor-of Relationship

  @RULE_MCA-884
  Rule: The same ›is-successor-of‹ relationship between the same nodes can only be created once

    @TEST_MCA-885 @implemented
    Scenario: Trying to create the same ›is-successor-of‹ relationship again
      Given there exists a "CAR MODEL" "Golf IV"
      And there exists a "CAR MODEL" "Golf III"
      And there exists a "is successor of" relationship between "Golf IV" and "Golf III"
      When the user creates a "is successor of" relationship between "Golf IV" and "Golf III"
      Then the response should return with status code 304
