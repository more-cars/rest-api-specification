@REQ_MCA-3141
Feature: Get RATING-for-car-model-variant Relationship

  @RULE_MCA-3146
  Rule: Requests to fetch the ›for-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3147 @implemented
    Scenario: Trying to fetch the ›for-car-model-variant‹ relationship with an invalid RATING ID
      Given "RATING" "93 Percent" does NOT exist
      When the user requests the "for car model variant" relationship for "93 Percent"
      Then the request should be rejected with status code 404
