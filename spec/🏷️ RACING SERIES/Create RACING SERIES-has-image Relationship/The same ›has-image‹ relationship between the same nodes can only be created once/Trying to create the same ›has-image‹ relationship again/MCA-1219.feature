@REQ_MCA-1211
Feature: Create RACING SERIES-has-image Relationship

  @RULE_MCA-1218
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-1219 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "IMAGE" "BMW M4 DTM poster"
      And there exists a "has image" relationship between "DTM" and "BMW M4 DTM poster"
      When the user creates a "has image" relationship between "DTM" and "BMW M4 DTM poster"
      Then the response should return with status code 304
