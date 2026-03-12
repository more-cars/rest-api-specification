@REQ_MCA-3348
Feature: Create PROGRAMME-has-image Relationship

  @RULE_MCA-3355
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-3356 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "IMAGE" "TGT logo"
      And there exists a "has image" relationship between "The Grand Tour" and "TGT logo"
      When the user creates a "has image" relationship between "The Grand Tour" and "TGT logo"
      Then the response should return with status code 304
