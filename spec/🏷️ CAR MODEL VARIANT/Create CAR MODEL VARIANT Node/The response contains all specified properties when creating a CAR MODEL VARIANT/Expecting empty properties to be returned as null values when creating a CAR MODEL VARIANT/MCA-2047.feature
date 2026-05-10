@REQ_MCA-2039
Feature: Create CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to create CAR MODEL VARIANTS
  So I can fill gaps in the database

  @RULE_MCA-2045
  Rule: The response contains all specified properties when creating a CAR MODEL VARIANT

    @TEST_MCA-2047 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a CAR MODEL VARIANT
      When the user creates a "CAR MODEL VARIANT" "BMW M3" with the following data
        | key  | value  |
        | name | BMW M3 |
      Then the response should contain the following properties
        | key                    | value  |
        | name                   | BMW M3 |
        | internal_code          |        |
        | built_from             |        |
        | built_to               |        |
        | body_style             |        |
        | drag_coefficient       |        |
        | doors                  |        |
        | weight                 |        |
        | weight_unit            |        |
        | max_power              |        |
        | max_power_unit         |        |
        | max_torque             |        |
        | max_torque_unit        |        |
        | cylinders              |        |
        | engine_configuration   |        |
        | displacement           |        |
        | displacement_unit      |        |
        | air_induction          |        |
        | engine_type            |        |
        | energy_source          |        |
        | energy_source_2        |        |
        | consumption            |        |
        | consumption_unit       |        |
        | consumption_2          |        |
        | consumption_2_unit     |        |
        | energy_capacity        |        |
        | energy_capacity_unit   |        |
        | energy_capacity_2      |        |
        | energy_capacity_2_unit |        |
        | transmission           |        |
        | gears                  |        |
        | drivetrain             |        |
        | sprint_time_0_100_kmh  |        |
        | top_speed              |        |
        | top_speed_unit         |        |
        | total_production       |        |
