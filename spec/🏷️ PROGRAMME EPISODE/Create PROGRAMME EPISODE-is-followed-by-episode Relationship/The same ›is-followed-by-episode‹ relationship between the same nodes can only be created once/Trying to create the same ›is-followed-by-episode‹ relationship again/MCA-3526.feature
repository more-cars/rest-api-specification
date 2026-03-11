@REQ_MCA-3518
Feature: Create PROGRAMME EPISODE-is-followed-by-episode Relationship

  @RULE_MCA-3525
  Rule: The same ›is-followed-by-episode‹ relationship between the same nodes can only be created once

    @TEST_MCA-3526
    Scenario: Trying to create the same ›is-followed-by-episode‹ relationship again
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME EPISODE" "Operation Desert Stumble"
      And there exists a "is followed by episode" relationship between "The Holy Trinity" and "Operation Desert Stumble"
      When the user creates a "is followed by episode" relationship between "The Holy Trinity" and "Operation Desert Stumble"
      Then the response should return with status code 304
