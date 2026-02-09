@REQ_MCA-1955
Feature: Create LAP TIME-has-prime-image Relationship

  @RULE_MCA-1962
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1963 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "IMAGE" "track record"
      And there exists a "has prime image" relationship between "fastest lap" and "track record"
      When the user creates a "has prime image" relationship between "fastest lap" and "track record"
      Then the response should return with status code 304
