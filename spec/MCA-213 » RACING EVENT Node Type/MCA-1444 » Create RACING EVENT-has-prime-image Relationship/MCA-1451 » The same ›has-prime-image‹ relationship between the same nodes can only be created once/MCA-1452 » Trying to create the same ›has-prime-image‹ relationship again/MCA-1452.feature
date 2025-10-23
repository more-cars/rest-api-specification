@REQ_MCA-1444
Feature: Create RACING EVENT-has-prime-image Relationship

  @RULE_MCA-1451
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1452 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "IMAGE" "Race Start"
      And there exists a "has prime image" relationship between "GP Monaco" and "Race Start"
      When the user creates a "has prime image" relationship between "GP Monaco" and "Race Start"
      Then the response should return with status code 304
