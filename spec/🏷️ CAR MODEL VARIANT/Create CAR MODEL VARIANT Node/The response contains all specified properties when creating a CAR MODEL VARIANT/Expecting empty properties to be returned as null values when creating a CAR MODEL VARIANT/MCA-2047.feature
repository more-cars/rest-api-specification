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
        | key  | value  | datatype |
        | name | BMW M3 | string   |
      Then the response should contain the following properties
        | key                    | value  | datatype |
        | name                   | BMW M3 | string   |
        | internal_code          |        | string   |
        | built_from             |        | number   |
        | built_to               |        | number   |
        | body_style             |        | string   |
        | drag_coefficient       |        | number   |
        | doors                  |        | number   |
        | weight                 |        | number   |
        | weight_unit            |        | string   |
        | max_power              |        | number   |
        | max_power_unit         |        | string   |
        | max_torque             |        | number   |
        | max_torque_unit        |        | string   |
        | cylinders              |        | number   |
        | engine_configuration   |        | string   |
        | displacement           |        | number   |
        | displacement_unit      |        | string   |
        | air_induction          |        | string   |
        | engine_type            |        | string   |
        | energy_source          |        | string   |
        | energy_source_2        |        | string   |
        | consumption            |        | number   |
        | consumption_unit       |        | string   |
        | consumption_2          |        | number   |
        | consumption_2_unit     |        | string   |
        | energy_capacity        |        | number   |
        | energy_capacity_unit   |        | string   |
        | energy_capacity_2      |        | number   |
        | energy_capacity_2_unit |        | string   |
        | transmission           |        | string   |
        | gears                  |        | number   |
        | drivetrain             |        | string   |
        | sprint_time_0_100_kmh  |        | number   |
        | top_speed              |        | number   |
        | top_speed_unit         |        | string   |
        | total_production       |        | number   |
