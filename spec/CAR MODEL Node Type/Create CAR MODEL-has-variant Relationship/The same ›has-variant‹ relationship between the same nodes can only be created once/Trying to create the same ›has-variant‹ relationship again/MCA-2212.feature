@REQ_MCA-2204
Feature: Create CAR MODEL-has-variant Relationship

  @RULE_MCA-2211
  Rule: The same ›has-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-2212 @implemented
    Scenario: Trying to create the same ›has-variant‹ relationship again
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "CAR MODEL VARIANT" "VW Golf GTI"
      And there exists a "has variant" relationship between "Golf" and "VW Golf GTI"
      When the user creates a "has variant" relationship between "Golf" and "VW Golf GTI"
      Then the response should return with status code 304
