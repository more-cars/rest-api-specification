@REQ_MCA-2884
Feature: Create MAGAZINE ISSUE-covers-car-model Relationship

  @RULE_MCA-2891
  Rule: The same ›covers-car-model‹ relationship between the same nodes can only be created once

    @TEST_MCA-2892
    Scenario: Trying to create the same ›covers-car-model‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      And there exists a "CAR MODEL" "Golf"
      And there exists a "covers car model" relationship between "50 Jahre GTI" and "Golf"
      When the user creates a "covers car model" relationship between "50 Jahre GTI" and "Golf"
      Then the response should return with status code 304
