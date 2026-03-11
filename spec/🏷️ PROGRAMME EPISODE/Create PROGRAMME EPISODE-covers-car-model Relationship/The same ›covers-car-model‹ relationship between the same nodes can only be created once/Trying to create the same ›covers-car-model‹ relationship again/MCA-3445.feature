@REQ_MCA-3437
Feature: Create PROGRAMME EPISODE-covers-car-model Relationship

  @RULE_MCA-3444
  Rule: The same ›covers-car-model‹ relationship between the same nodes can only be created once

    @TEST_MCA-3445
    Scenario: Trying to create the same ›covers-car-model‹ relationship again
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL" "LaFerrari"
      And there exists a "covers car model" relationship between "The Holy Trinity" and "LaFerrari"
      When the user creates a "covers car model" relationship between "The Holy Trinity" and "LaFerrari"
      Then the response should return with status code 304
