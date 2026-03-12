@REQ_MCA-3545
Feature: Create PROGRAMME EPISODE-has-image Relationship

  @RULE_MCA-3552
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3553 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "IMAGE" "TGT logo"
      And there exists a "has image" relationship between "The Holy Trinity" and "TGT logo"
      When the user creates a "has image" relationship between "The Holy Trinity" and "TGT logo"
      Then the response should return with status code 304
