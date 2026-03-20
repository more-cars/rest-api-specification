@REQ_MCA-4069
Feature: Create PRICE-for-car-model-variant Relationship

  @RULE_MCA-4078
  Rule: At the same time, each PRICE can only be in a ›for-car-model-variant‹ relationship with one CAR MODEL VARIANT

    @TEST_MCA-4079 @implemented
    Scenario: Creating a ›for-car-model-variant‹ relationship with a different CAR MODEL VARIANT
      Given there exists a "PRICE" "Brand New"
      And there exists a "CAR MODEL VARIANT" "Porsche Carrera GT"
      And there exists a "CAR MODEL VARIANT" "Porsche Carrera GT (Alternative)"
      When the user creates a "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      Then there should exist a "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      When the user creates a "for car model variant" relationship between "Brand New" and "Porsche Carrera GT (Alternative)"
      Then there should exist a "for car model variant" relationship between "Brand New" and "Porsche Carrera GT (Alternative)"
      But there should exist NO "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
