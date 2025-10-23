@REQ_MCA-1238
Feature: Create RACING SERIES-has-prime-image Relationship

  @RULE_MCA-1245
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1246 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "IMAGE" "DTM logo"
      And there exists a "has prime image" relationship between "DTM" and "DTM logo"
      When the user creates a "has prime image" relationship between "DTM" and "DTM logo"
      Then the response should return with status code 304
