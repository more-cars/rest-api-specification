@REQ_MCA-3366
Feature: Create PROGRAMME-has-prime-image Relationship

  @RULE_MCA-3373
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3374
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "IMAGE" "TGT logo"
      And there exists a "has prime image" relationship between "The Grand Tour" and "TGT logo"
      When the user creates a "has prime image" relationship between "The Grand Tour" and "TGT logo"
      Then the response should return with status code 304
