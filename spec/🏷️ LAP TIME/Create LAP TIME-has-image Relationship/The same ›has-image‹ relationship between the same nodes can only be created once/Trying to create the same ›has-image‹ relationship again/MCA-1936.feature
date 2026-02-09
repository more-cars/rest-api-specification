@REQ_MCA-1928
Feature: Create LAP TIME-has-image Relationship

  @RULE_MCA-1935
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1936 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "IMAGE" "track record"
      And there exists a "has image" relationship between "fastest lap" and "track record"
      When the user creates a "has image" relationship between "fastest lap" and "track record"
      Then the response should return with status code 304
