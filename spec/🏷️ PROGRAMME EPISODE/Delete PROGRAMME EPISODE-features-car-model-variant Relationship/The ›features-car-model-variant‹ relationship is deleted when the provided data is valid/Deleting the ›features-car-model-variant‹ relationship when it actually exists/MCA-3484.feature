@REQ_MCA-3482
Feature: Delete PROGRAMME EPISODE-features-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from PROGRAMME EPISODES
  So I can clean up bad data or test data

  @RULE_MCA-3483
  Rule: The ›features-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3484 @implemented
    Scenario: Deleting the ›features-car-model-variant‹ relationship when it actually exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL VARIANT" "Lada Samara"
      And there exists a "features car model variant" relationship "R" between "The Holy Trinity" and "Lada Samara"
      When the user deletes the "features car model variant" relationship between "The Holy Trinity" and "Lada Samara"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
