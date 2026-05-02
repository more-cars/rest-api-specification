@REQ_MCA-206
Feature: Create REVISION on NODE update
  As a webmaster \
  I want a copy to be created whenever a user updates a node \
  So I am able to restore data when it was accidentally removed or overwritten

  @RULE_MCA-5417
  Rule: A revision contains the data of the original node

    @TEST_MCA-5419 @deactivated @implemented
    Scenario: Expecting a REVISION to contain the data of the original node
      Given there exists a "CAR MODEL" "Passat"
      When the user updates the "Passat"
      Then the request should be accepted with status code "201"
      And a revision should have been created containing the original data of "Passat"
