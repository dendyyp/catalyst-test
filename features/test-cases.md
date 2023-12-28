<h1> Test Cases Creation</h1>

 <h3> Login Feature </h3> 
<details>
<summary>Happy Flow</summary>
<br>
Feature: User Login in Jamtangan.com

    Scenario: Successful login with valid credentials
    
    Given the user is on the login page

    When the user enters valid username "john_doe" and password "secret123"

    And the user clicks the login button

    Then the user should be redirected to the dashboard

    And the user should see a welcome message
</details>

<details>
<summary>Negative Cases</summary>
<br>
This is how you dropdown.
</details>
