@REQ_MCA-3918
Feature: Delete MODEL CAR-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3921
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3923
    Scenario: Trying to delete a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And "IMAGE" "Trabbi photo" does NOT exist
      When the user deletes the "has image" relationship between "F40 Scale Model" and "Trabbi photo"
      Then the request should be rejected with status code 404
