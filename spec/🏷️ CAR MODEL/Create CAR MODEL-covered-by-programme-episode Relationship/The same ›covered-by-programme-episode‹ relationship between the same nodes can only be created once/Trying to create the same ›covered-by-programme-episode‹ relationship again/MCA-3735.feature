@REQ_MCA-3727
Feature: Create CAR MODEL-covered-by-programme-episode Relationship

  @RULE_MCA-3734
  Rule: The same ›covered-by-programme-episode‹ relationship between the same nodes can only be created once

    @TEST_MCA-3735
    Scenario: Trying to create the same ›covered-by-programme-episode‹ relationship again
      Given there exists a "CAR MODEL" "McLaren P1"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "covered by programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      When the user creates a "covered by programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      Then the response should return with status code 304
