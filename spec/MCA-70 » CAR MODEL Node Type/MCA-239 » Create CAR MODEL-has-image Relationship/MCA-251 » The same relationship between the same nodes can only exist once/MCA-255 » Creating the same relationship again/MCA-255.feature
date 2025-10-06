@REQ_MCA-239
Feature: Create CAR MODEL-has-image Relationship
  As an API contributor\
  I want to be able to attach IMAGES to CAR MODELS\
  So an API consumer can illustrate CAR MODEL nodes in a frontend application

  @RULE_MCA-251
  Rule: The same relationship between the same nodes can only exist once

    @TEST_MCA-255 @implemented
    Scenario: Creating the same relationship again
      Given there exists a "CAR MODEL" "Impreza"
      And there exists an "IMAGE" "rear spoiler"
      And there exists a relationship "R" between "CAR MODEL" "Impreza" and "IMAGE" "rear spoiler"
      When the user connects "IMAGE" "rear spoiler" to "CAR MODEL" "Impreza"
      And the response should contain the id of relationship "R"
