@REQ_MCA-3918
Feature: Delete MODEL CAR-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3925
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3926
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "IMAGE" "Trabbi photo"
      And there exists NO "has image" relationship between "F40 Scale Model" and "Trabbi photo"
      When the user deletes the "has image" relationship between "F40 Scale Model" and "Trabbi photo"
      Then the request should be rejected with status code 404
