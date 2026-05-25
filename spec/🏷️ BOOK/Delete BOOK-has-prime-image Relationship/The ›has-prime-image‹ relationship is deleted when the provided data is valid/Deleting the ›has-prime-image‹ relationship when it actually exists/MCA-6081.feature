@REQ_MCA-6079
Feature: Delete BOOK-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect the prime IMAGE from a BOOK
  So I can clean up bad data or test data

  @RULE_MCA-6080
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-6081 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      And there exists a "has-prime-image" relationship "R" between "F1 in Numbers" and "Detail photo"
      When the user deletes the "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
