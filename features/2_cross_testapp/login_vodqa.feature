Feature: Login
  As a QA user,
  I want to login to test the cross platform app

  @android_test @ios_test
  Scenario: Login credentials (Only one Page Object)
    Given the user sees the login screen
    When the 'admin' user wants to login with password 'admin'
    Then he should be redirected to the Samples List screen
