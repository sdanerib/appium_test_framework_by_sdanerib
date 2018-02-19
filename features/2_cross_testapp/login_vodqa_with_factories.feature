Feature: Login
  As a QA user,
  I want to login to test the cross platform app

  @android_test @ios_test
  Scenario: Login credentials
    Given the user sees the login screen (v2)
    When the 'admin' user wants to login with password 'admin' (v2)
    Then he should be redirected to the Samples List screen (v2)
