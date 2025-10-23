@REQ_MCA-1211
Feature: Create RACING SERIES-has-image Relationship

  @RULE_MCA-1214
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1215 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid RACING SERIES ID
      Given "RACING SERIES" "DTM" does NOT exist
      And there exists a "IMAGE" "BMW M4 DTM poster"
      When the user creates a "has image" relationship between "DTM" and "BMW M4 DTM poster"
      Then the request should be rejected with status code 404
