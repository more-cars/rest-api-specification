@REQ_MCA-821
Feature: Create CAR MODEL-has-successor Relationship

  @RULE_MCA-828
  Rule: The same ›has-successor‹ relationship between the same nodes can only be created once

    @TEST_MCA-829
    Scenario: Trying to create the same ›has-successor‹ relationship again
      Given there exists a "CAR MODEL" "Countach"
      And there exists a "CAR MODEL" "Diablo"
      And there exists a "has successor" relationship between "Countach" and "Diablo"
      When the user creates a "has successor" relationship between "Countach" and "Diablo"
      Then the response should return with status code 304
