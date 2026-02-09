@REQ_MCA-1211
Feature: Create RACING SERIES-has-image Relationship

  @RULE_MCA-1214
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1216 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING SERIES" "DTM"
      And "IMAGE" "BMW M4 DTM poster" does NOT exist
      When the user creates a "has image" relationship between "DTM" and "BMW M4 DTM poster"
      Then the request should be rejected with status code 404
