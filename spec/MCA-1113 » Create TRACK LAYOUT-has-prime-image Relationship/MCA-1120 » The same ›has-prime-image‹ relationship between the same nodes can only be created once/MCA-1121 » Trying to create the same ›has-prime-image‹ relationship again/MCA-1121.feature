@REQ_MCA-1113
Feature: Create TRACK LAYOUT-has-prime-image Relationship

  @RULE_MCA-1120
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1121 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "latest circuit map"
      And there exists a "has prime image" relationship between "GP Circuit" and "latest circuit map"
      When the user creates a "has prime image" relationship between "GP Circuit" and "latest circuit map"
      Then the response should return with status code 304
