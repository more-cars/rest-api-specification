@REQ_MCA-2039
Feature: Create CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to create CAR MODEL VARIANTS
  So I can fill gaps in the database

  @RULE_MCA-2048
  Rule: Unknown properties are ignored when creating a CAR MODEL VARIANT

    @TEST_MCA-2049 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a CAR MODEL VARIANT
      When the user creates a "CAR MODEL VARIANT" "BMW M3" with the following data
        | key                    | value               |
        | name                   | BMW M3              |
        | internal_code          | E46                 |
        | built_from             | 2000                |
        | built_to               | 2006                |
        | body_style             | coupe               |
        | drag_coefficient       | 0.31                |
        | doors                  | 2                   |
        | weight                 | 1549                |
        | weight_unit            | kg                  |
        | max_power              | 343                 |
        | max_power_unit         | PS                  |
        | max_torque             | 365                 |
        | max_torque_unit        | Nm                  |
        | cylinders              | 6                   |
        | engine_configuration   | inline              |
        | displacement           | 3246                |
        | displacement_unit      | ccm                 |
        | air_induction          | naturally-aspirated |
        | engine_type            | otto                |
        | energy_source          | petrol              |
        | energy_source_2        |                     |
        | consumption            | 11.9                |
        | consumption_unit       | L/100 km            |
        | consumption_2          |                     |
        | consumption_2_unit     |                     |
        | energy_capacity        | 63                  |
        | energy_capacity_unit   | l                   |
        | energy_capacity_2      |                     |
        | energy_capacity_2_unit |                     |
        | transmission           | sequential          |
        | gears                  | 6                   |
        | drivetrain             | RWD                 |
        | sprint_time_0_100_kmh  | 5.2                 |
        | top_speed              | 250                 |
        | top_speed_unit         | km/h                |
        | total_production       | 50000               |
        | thimbleweed            | park                |
      Then the response should contain the following properties
        | key                    | value               |
        | name                   | BMW M3              |
        | internal_code          | E46                 |
        | built_from             | 2000                |
        | built_to               | 2006                |
        | body_style             | coupe               |
        | drag_coefficient       | 0.31                |
        | doors                  | 2                   |
        | weight                 | 1549                |
        | weight_unit            | kg                  |
        | max_power              | 343                 |
        | max_power_unit         | PS                  |
        | max_torque             | 365                 |
        | max_torque_unit        | Nm                  |
        | cylinders              | 6                   |
        | engine_configuration   | inline              |
        | displacement           | 3246                |
        | displacement_unit      | ccm                 |
        | air_induction          | naturally-aspirated |
        | engine_type            | otto                |
        | energy_source          | petrol              |
        | energy_source_2        |                     |
        | consumption            | 11.9                |
        | consumption_unit       | L/100 km            |
        | consumption_2          |                     |
        | consumption_2_unit     |                     |
        | energy_capacity        | 63                  |
        | energy_capacity_unit   | l                   |
        | energy_capacity_2      |                     |
        | energy_capacity_2_unit |                     |
        | transmission           | sequential          |
        | gears                  | 6                   |
        | drivetrain             | RWD                 |
        | sprint_time_0_100_kmh  | 5.2                 |
        | top_speed              | 250                 |
        | top_speed_unit         | km/h                |
        | total_production       | 50000               |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
