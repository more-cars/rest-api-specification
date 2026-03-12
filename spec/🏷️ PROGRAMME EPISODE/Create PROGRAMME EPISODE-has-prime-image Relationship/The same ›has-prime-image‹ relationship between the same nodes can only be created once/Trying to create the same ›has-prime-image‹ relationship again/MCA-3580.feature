@REQ_MCA-3572
Feature: Create PROGRAMME EPISODE-has-prime-image Relationship

  @RULE_MCA-3579
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3580 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "IMAGE" "TGT logo"
      And there exists a "has prime image" relationship between "The Holy Trinity" and "TGT logo"
      When the user creates a "has prime image" relationship between "The Holy Trinity" and "TGT logo"
      Then the response should return with status code 304
