@REQ_MCA-3998
Feature: Create MODEL CAR BRAND-has-image Relationship

  @RULE_MCA-4005
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-4006
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Hot Wheels logo"
      And there exists a "has image" relationship between "Hot Wheels" and "Hot Wheels logo"
      When the user creates a "has image" relationship between "Hot Wheels" and "Hot Wheels logo"
      Then the response should return with status code 304
