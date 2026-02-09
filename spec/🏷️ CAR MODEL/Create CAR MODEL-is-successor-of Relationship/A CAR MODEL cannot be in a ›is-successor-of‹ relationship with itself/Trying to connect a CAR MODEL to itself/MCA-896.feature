@REQ_MCA-877
Feature: Create CAR MODEL-is-successor-of Relationship

  @RULE_MCA-888
  Rule: A CAR MODEL cannot be in a ›is-successor-of‹ relationship with itself

    @TEST_MCA-896 @implemented
    Scenario: Trying to connect a CAR MODEL to itself
      Given there exists a "CAR MODEL" "Golf IV"
      When the user creates a "is successor of" relationship between "Golf IV" and "Golf IV"
      Then the request should be rejected with status code 422
