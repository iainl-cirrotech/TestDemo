# Business Central Test Demo

This repository contains a sample Business Central AL project that demonstrates how to set up and run tests for AL code.

## Project Structure

- **Codeunits/**
  - `SalesDiscountHelper.al` - Contains the business logic for calculating sales discounts
  - `SalesDiscountHelperTests.al` - Contains unit tests for the discount helper
  - `TestRunner.al` - Test runner codeunit for executing tests

- **Pages/**
  - `TestRunner.al` - UI page for running tests from within Business Central

## Running Tests

There are two ways to run the tests in this project:

### 1. Using the Test Runner Page

1. Publish the extension to your Business Central environment
2. Open the Test Runner page (search for "Test Runner")
3. Enter the test codeunit ID (50141 for SalesDiscountHelperTests)
4. Optionally specify a test method name to run a specific test
5. Click "Run Test(s)"

### 2. Using AL Test Runner in VS Code

If you have the AL Test Runner extension installed in VS Code:

1. Open the Command Palette (Ctrl+Shift+P)
2. Type "AL Test Runner: Run Tests"
3. Select the test(s) to run

## Test Methodology

The tests in this project follow the Arrange-Act-Assert pattern, also known as Given-When-Then:

```al
// [GIVEN] Set up the test data
// [WHEN] Execute the code being tested
// [THEN] Verify the results
```

## License

This project is licensed under the MIT License.
