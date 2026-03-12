@REQ_MCA-3455
Feature: Delete PROGRAMME EPISODE-covers-car-model Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3456
  Rule: The ›covers-car-model‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3457 @implemented
    Scenario: Deleting the ›covers-car-model‹ relationship when it actually exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL" "Twingo"
      And there exists a "covers car model" relationship "R" between "The Holy Trinity" and "Twingo"
      When the user deletes the "covers car model" relationship between "The Holy Trinity" and "Twingo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
