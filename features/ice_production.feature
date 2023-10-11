Feature: Get daily report

    Generate report

    Scenario: Get daily ice production report

        In order to see how much ice my factories are producing, I need to be able to
        get a daily ice production report.

        Given I run a company that owns two factories with two cameras each
        And each camera has reported events today
        And I am logged in
        When I visit the "daily ice production report" page
        Then I should see today's ice production