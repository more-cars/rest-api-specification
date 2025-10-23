@REQ_MCA-1184
Feature: Create RACING SERIES-has-racing-event Relationship

  @RULE_MCA-1191
  Rule: The same ›has-racing-event‹ relationship between the same nodes can only be created once

    @TEST_MCA-1192 @implemented
    Scenario: Trying to create the same ›has-racing-event‹ relationship again
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "RACING EVENT" "GP Monaco"
      And there exists a "has racing event" relationship between "Formula 1" and "GP Monaco"
      When the user creates a "has racing event" relationship between "Formula 1" and "GP Monaco"
      Then the response should return with status code 304
