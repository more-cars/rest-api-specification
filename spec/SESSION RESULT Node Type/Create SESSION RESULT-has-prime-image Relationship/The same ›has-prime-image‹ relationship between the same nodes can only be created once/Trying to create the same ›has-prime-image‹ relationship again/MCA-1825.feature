@REQ_MCA-1817
Feature: Create SESSION RESULT-has-prime-image Relationship

  @RULE_MCA-1824
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1825 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "IMAGE" "finish line"
      And there exists a "has prime image" relationship between "1st place" and "finish line"
      When the user creates a "has prime image" relationship between "1st place" and "finish line"
      Then the response should return with status code 304
