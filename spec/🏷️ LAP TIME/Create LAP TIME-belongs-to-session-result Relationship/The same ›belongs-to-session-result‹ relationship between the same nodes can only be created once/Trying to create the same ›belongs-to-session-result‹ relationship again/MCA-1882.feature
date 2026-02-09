@REQ_MCA-1874
Feature: Create LAP TIME-belongs-to-session-result Relationship

  @RULE_MCA-1881
  Rule: The same ›belongs-to-session-result‹ relationship between the same nodes can only be created once

    @TEST_MCA-1882 @implemented
    Scenario: Trying to create the same ›belongs-to-session-result‹ relationship again
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "SESSION RESULT" "Grand Prix"
      And there exists a "belongs to session result" relationship between "fastest lap" and "Grand Prix"
      When the user creates a "belongs to session result" relationship between "fastest lap" and "Grand Prix"
      Then the response should return with status code 304
