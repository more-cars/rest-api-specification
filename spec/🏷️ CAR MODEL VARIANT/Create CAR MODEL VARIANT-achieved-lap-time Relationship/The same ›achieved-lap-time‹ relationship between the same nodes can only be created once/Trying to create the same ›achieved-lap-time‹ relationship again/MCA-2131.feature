@REQ_MCA-2123
Feature: Create CAR MODEL VARIANT-achieved-lap-time Relationship

  @RULE_MCA-2130
  Rule: The same ›achieved-lap-time‹ relationship between the same nodes can only be created once

    @TEST_MCA-2131 @implemented
    Scenario: Trying to create the same ›achieved-lap-time‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "LAP TIME" "fastest lap"
      And there exists a "achieved lap time" relationship between "BMW M3 GTR" and "fastest lap"
      When the user creates a "achieved lap time" relationship between "BMW M3 GTR" and "fastest lap"
      Then the response should return with status code 304
