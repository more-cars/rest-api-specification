@REQ_MCA-774
Feature: Create BRAND-has-prime-image Relationship

  @RULE_MCA-781
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-782
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "BRAND" "Bugatti"
      And there exists a "IMAGE" "logo"
      And there exists a "has-prime-image" relationship between "Bugatti" and "logo"
      When the user creates a "has-prime-image" relationship between "Bugatti" and "logo"
      Then the response should return with status code 304
