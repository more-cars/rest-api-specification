@REQ_MCA-2150
Feature: Create CAR MODEL VARIANT-has-image Relationship

  @RULE_MCA-2157
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2158 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "M3 poster"
      And there exists a "has image" relationship between "BMW M3" and "M3 poster"
      When the user creates a "has image" relationship between "BMW M3" and "M3 poster"
      Then the response should return with status code 304
