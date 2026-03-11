@REQ_MCA-3321
Feature: Create PROGRAMME-has-episode Relationship

  @RULE_MCA-3328
  Rule: The same ›has-episode‹ relationship between the same nodes can only be created once

    @TEST_MCA-3329
    Scenario: Trying to create the same ›has-episode‹ relationship again
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "has episode" relationship between "The Grand Tour" and "The Holy Trinity"
      When the user creates a "has episode" relationship between "The Grand Tour" and "The Holy Trinity"
      Then the response should return with status code 304
