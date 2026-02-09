@REQ_MCA-1901
Feature: Create SESSION RESULT-has-lap-time Relationship

  @RULE_MCA-1908
  Rule: The same ›has-lap-time‹ relationship between the same nodes can only be created once

    @TEST_MCA-1909 @implemented
    Scenario: Trying to create the same ›has-lap-time‹ relationship again
      Given there exists a "SESSION RESULT" "Grand Prix"
      And there exists a "LAP TIME" "fastest lap"
      And there exists a "has lap time" relationship between "Grand Prix" and "fastest lap"
      When the user creates a "has lap time" relationship between "Grand Prix" and "fastest lap"
      Then the response should return with status code 304
