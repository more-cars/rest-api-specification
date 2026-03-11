@REQ_MCA-3464
Feature: Create PROGRAMME EPISODE-features-car-model-variant Relationship

  @RULE_MCA-3471
  Rule: The same ›features-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-3472
    Scenario: Trying to create the same ›features-car-model-variant‹ relationship again
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL VARIANT" "Ferrari LaFerrari"
      And there exists a "features car model variant" relationship between "The Holy Trinity" and "Ferrari LaFerrari"
      When the user creates a "features car model variant" relationship between "The Holy Trinity" and "Ferrari LaFerrari"
      Then the response should return with status code 304
