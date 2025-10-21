@REQ_MCA-1086
Feature: Create TRACK LAYOUT-has-image Relationship

  @RULE_MCA-1093
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1094 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exists a "IMAGE" "circuit map"
      And there exists a "has image" relationship between "GP Circuit" and "circuit map"
      When the user creates a "has image" relationship between "GP Circuit" and "circuit map"
      Then the response should return with status code 304
