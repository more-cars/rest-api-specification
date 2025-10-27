@REQ_MCA-292
Feature: Create CAR MODEL-has-prime-image Relationship
  As an API contributor\
  I want to be able to select one IMAGE for a CAR MODEL to be used as prime image\
  So the node has an ideal visual representation in any frontend application

  @RULE_MCA-394
  Rule: The has-prime-image relationship is created when provided with valid data

    @TEST_MCA-408 @implemented
    Scenario: Connecting an IMAGE as prime image to a CAR MODEL
      Given there exists a "CAR MODEL" "Mondeo"
      And there exists an "IMAGE" "front-left.jpg"
      When the user creates a "has prime image" relationship between "Mondeo" and "front-left.jpg"
      Then the request should be confirmed with status code 201
