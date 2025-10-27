@REQ_MCA-241
Feature: Get all CAR MODEL-has-image Relationships
  As an API consumer\
  I want to get all IMAGEs that are attached to a CAR MODEL\
  So I can get a visual representation of it

  @RULE_MCA-264
  Rule: An empty list is returned when there are no IMAGEs attached

    @TEST_MCA-267 @implemented
    Scenario: Requesting the attached IMAGEs when there are none
      Given there exists a "CAR MODEL" "Jetta"
      And there exist 0 "has image" relationships for "Jetta"
      When the user requests all "has image" relationships for "Jetta"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
