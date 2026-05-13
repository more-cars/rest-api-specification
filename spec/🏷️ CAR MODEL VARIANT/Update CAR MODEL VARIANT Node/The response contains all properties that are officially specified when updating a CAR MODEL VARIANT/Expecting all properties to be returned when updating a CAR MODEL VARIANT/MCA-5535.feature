@REQ_MCA-5525
Feature: Update CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to update a CAR MODEL VARIANT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5534
  Rule: The response contains all properties that are officially specified when updating a CAR MODEL VARIANT

    @TEST_MCA-5535 @implemented
    Scenario: Expecting all properties to be returned when updating a CAR MODEL VARIANT
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      When the user updates the node "BMW M3 CSL" with the following data
        | key                    | value                 |
        | name                   | BMW M3_2              |
        | internal_code          | E46_2                 |
        | built_from             | 2002                  |
        | built_to               | 2008                  |
        | body_style             | coupe_2               |
        | drag_coefficient       | 2.31                  |
        | doors                  | 4                     |
        | weight                 | 1551                  |
        | weight_unit            | kg_2                  |
        | max_power              | 345                   |
        | max_power_unit         | PS_2                  |
        | max_torque             | 367                   |
        | max_torque_unit        | Nm_2                  |
        | cylinders              | 8                     |
        | engine_configuration   | inline_2              |
        | displacement           | 3248                  |
        | displacement_unit      | ccm_2                 |
        | air_induction          | naturally aspirated_2 |
        | engine_type            | otto_2                |
        | energy_source          | petrol_2              |
        | energy_source_2        |                       |
        | consumption            | 13.9                  |
        | consumption_unit       | l_2                   |
        | consumption_2          |                       |
        | consumption_2_unit     |                       |
        | energy_capacity        | 65                    |
        | energy_capacity_unit   | l_2                   |
        | energy_capacity_2      |                       |
        | energy_capacity_2_unit |                       |
        | transmission           | sequential_2          |
        | gears                  | 8                     |
        | drivetrain             | rwd_2                 |
        | sprint_time_0_100_kmh  | 7.2                   |
        | top_speed              | 252                   |
        | top_speed_unit         | km/h_2                |
        | total_production       | 50002                 |
      Then the request should be confirmed with status code 201
      And the response should contain the following properties
        | key                    | value                 |
        | name                   | BMW M3_2              |
        | internal_code          | E46_2                 |
        | built_from             | 2002                  |
        | built_to               | 2008                  |
        | body_style             | coupe_2               |
        | drag_coefficient       | 2.31                  |
        | doors                  | 4                     |
        | weight                 | 1551                  |
        | weight_unit            | kg_2                  |
        | max_power              | 345                   |
        | max_power_unit         | PS_2                  |
        | max_torque             | 367                   |
        | max_torque_unit        | Nm_2                  |
        | cylinders              | 8                     |
        | engine_configuration   | inline_2              |
        | displacement           | 3248                  |
        | displacement_unit      | ccm_2                 |
        | air_induction          | naturally aspirated_2 |
        | engine_type            | otto_2                |
        | energy_source          | petrol_2              |
        | energy_source_2        |                       |
        | consumption            | 13.9                  |
        | consumption_unit       | l_2                   |
        | consumption_2          |                       |
        | consumption_2_unit     |                       |
        | energy_capacity        | 65                    |
        | energy_capacity_unit   | l_2                   |
        | energy_capacity_2      |                       |
        | energy_capacity_2_unit |                       |
        | transmission           | sequential_2          |
        | gears                  | 8                     |
        | drivetrain             | rwd_2                 |
        | sprint_time_0_100_kmh  | 7.2                   |
        | top_speed              | 252                   |
        | top_speed_unit         | km/h_2                |
        | total_production       | 50002                 |
