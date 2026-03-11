@REQ_MCA-3754
Feature: Create CAR MODEL VARIANT-featured-in-programme-episode Relationship

  @RULE_MCA-3761
  Rule: The same ›featured-in-programme-episode‹ relationship between the same nodes can only be created once

    @TEST_MCA-3762
    Scenario: Trying to create the same ›featured-in-programme-episode‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "McLaren P1"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "featured in programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      When the user creates a "featured in programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      Then the response should return with status code 304
