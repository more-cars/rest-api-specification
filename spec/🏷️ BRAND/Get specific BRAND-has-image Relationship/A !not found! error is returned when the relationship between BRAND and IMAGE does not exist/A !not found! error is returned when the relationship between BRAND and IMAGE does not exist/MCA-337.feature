@REQ_MCA-284
Feature: Get specific BRAND-has-image Relationship
  As an API contributor\
  I want to be able to request the relationship between a BRAND and an IMAGE\
  So I can find out if they are already connected or not

  @RULE_MCA-334
  Rule: A "not found" error is returned when the relationship between BRAND and IMAGE does not exist

    @TEST_MCA-337 @implemented
    Scenario: A "not found" error is returned when the relationship between BRAND and IMAGE does not exist
      Given there exists a "BRAND" "Honda"
      And there exists an "IMAGE" "logo"
      And there exists NO "has image" relationship "R" between "Honda" and "logo"
      When the user requests the "has image" relationship between "Honda" and "logo"
      Then the response should return with status code 404
