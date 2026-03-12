@REQ_MCA-3410
Feature: Create PROGRAMME EPISODE-belongs-to-programme Relationship

  @RULE_MCA-3417
  Rule: The same ›belongs-to-programme‹ relationship between the same nodes can only be created once

    @TEST_MCA-3418 @implemented
    Scenario: Trying to create the same ›belongs-to-programme‹ relationship again
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour"
      When the user creates a "belongs to programme" relationship between "The Holy Trinity" and "The Grand Tour"
      Then the response should return with status code 304
