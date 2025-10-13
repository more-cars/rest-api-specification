@REQ_MCA-292
Feature: Create CAR MODEL-has-prime-image-IMAGE Relationship
  As an API contributor\
  I want to be able to select one IMAGE for a CAR MODEL to be used as prime image\
  So the node has an ideal visual representation in any frontend application

  @RULE_MCA-398
  Rule: Creating the same has-prime-image relationship again returns the already existing one

    @TEST_MCA-410 @implemented
    Scenario: Connecting the same IMAGE as prime image to the same CAR MODEL again
      Given there exists a "CAR MODEL" "Mondeo"
      And there exists an "IMAGE" "front-left.jpg"
      And there exists a "has prime image" relationship between "Mondeo" and "front-left.jpg"
      When the user creates a "has prime image" relationship between "Mondeo" and "front-left.jpg"
      Then the response should return with status code 304
