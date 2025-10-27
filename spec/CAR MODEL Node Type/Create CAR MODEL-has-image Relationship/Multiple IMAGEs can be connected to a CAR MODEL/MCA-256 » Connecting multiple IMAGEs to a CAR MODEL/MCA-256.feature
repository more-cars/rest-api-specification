@REQ_MCA-239
Feature: Create CAR MODEL-has-image Relationship
  As an API contributor\
  I want to be able to attach IMAGES to CAR MODELS\
  So an API consumer can illustrate CAR MODEL nodes in a frontend application

  @RULE_MCA-252
  Rule: Multiple IMAGEs can be connected to a CAR MODEL

    @TEST_MCA-256 @implemented
    Scenario: Connecting multiple IMAGEs to a CAR MODEL
      Given there exists a "CAR MODEL" "Impreza"
      And there exists an "IMAGE" "rear spoiler"
      And there exists an "IMAGE" "bonnet"
      And there exists an "IMAGE" "interior"
      When the user creates a "has image" relationship between "Impreza" and "rear spoiler"
      And the user creates a "has image" relationship between "Impreza" and "bonnet"
      And the user creates a "has image" relationship between "Impreza" and "interior"
      Then there should exist a "has image" relationship between "Impreza" and "rear spoiler"
      And there should exist a "has image" relationship between "Impreza" and "bonnet"
      And there should exist a "has image" relationship between "Impreza" and "interior"
