@REQ_MCA-283
Feature: Get specific CAR MODEL-has-image Relationship
  As an API contributor\
  I want to be able to request the relationship between a CAR MODEL and an IMAGE\
  So I can find out if they are already connected or not

  @RULE_MCA-320
  Rule: The relationship between CAR MODEL and IMAGE is returned when it exists

    @TEST_MCA-323 @implemented
    Scenario: Requesting the relationship between a specific CAR MODEL and a specific IMAGE
      Given there exists a "CAR MODEL" "Countach"
      And there exists an "IMAGE" "front-left"
      And there exists a "has image" relationship "R" between "Countach" and "front-left"
      When the user requests the "has image" relationship between "Countach" and "front-left"
      Then the response should return with status code 200
      And the response should return the relationship "R"
