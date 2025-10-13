@REQ_MCA-293
Feature: Delete CAR MODEL-has-prime-image Relationship
  As an API contributor\
  I want to be able to detach the prime IMAGE from a CAR MODEL\
  So I can clean up bad data or test data

  @RULE_MCA-405
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-423 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "CAR MODEL" "Mondeo"
      And there exists an "IMAGE" "front-left.jpg"
      And there exists a "has prime image" relationship "R" between "Mondeo" and "front-left.jpg"
      When the user deletes the "has prime image" relationship between "Mondeo" and "front-left.jpg"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
