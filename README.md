# Swift Asynchronous Operation with Result Type: Handling Success and Failure

This example demonstrates an asynchronous operation in Swift using the `Result` type, focusing on proper error handling. It showcases a common scenario where developers might overlook error handling, resulting in unexpected behavior or crashes.

## Bug

The original `fetchData` function simulates a network request. The `completion` handler uses a `Result` type to return either success data or an error.  However, the provided example only handles the success case.  If the simulated network request encounters an issue (which is not demonstrated in the provided code), the error case will not be handled, potentially leading to a silent failure or an unhandled exception.   This is a common issue when dealing with asynchronous operations.