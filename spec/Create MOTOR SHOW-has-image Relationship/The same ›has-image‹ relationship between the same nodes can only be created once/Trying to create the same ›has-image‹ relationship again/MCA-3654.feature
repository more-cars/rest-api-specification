@REQ_MCA-3646
Feature: Create MOTOR SHOW-has-image Relationship

  @RULE_MCA-3653
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3654
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "IMAGE" "BMW Stand"
      And there exists a "has image" relationship between "IAA Frankfurt" and "BMW Stand"
      When the user creates a "has image" relationship between "IAA Frankfurt" and "BMW Stand"
      Then the response should return with status code 304
