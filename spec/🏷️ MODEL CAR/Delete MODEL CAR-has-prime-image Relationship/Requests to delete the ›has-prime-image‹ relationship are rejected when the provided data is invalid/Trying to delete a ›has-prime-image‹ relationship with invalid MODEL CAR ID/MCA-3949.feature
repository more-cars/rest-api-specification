@REQ_MCA-3945
Feature: Delete MODEL CAR-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3948
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3949
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid MODEL CAR ID
      Given "MODEL CAR" "F40 Scale Model" does NOT exist
      And there exists a "IMAGE" "Trabbi photo"
      When the user deletes the "has prime image" relationship between "F40 Scale Model" and "Trabbi photo"
      Then the request should be rejected with status code 404
