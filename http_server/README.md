# Gleam HTTP Server Example

This is a simple HTTP server example written in Gleam, demonstrating basic request handling and server setup.

## Prerequisites

- [Gleam](https://gleam.run/getting-started/) (Follow the link for installation instructions)

## Running the Server

1. **Clone the repository or create a new project:**

    ```sh
    gleam new my_project
    cd my_project
    ```

2. **Replace the contents of `src/my_project.gleam` with the provided Gleam code.**

3. **Build the project:**

    ```sh
    gleam build
    ```

4. **Run the server:**

    ```sh
    gleam run
    ```

5. **Access the server:**

    - Open a web browser and go to `http://127.0.0.1:4000/` to see "Welcome to Gleam!"
    - Go to `http://127.0.0.1:4000/hello` to see "Hello, World!"
    - Go to `http://127.0.0.1:4000/goodbye` to see "Goodbye, World!"
    - Any other path will return a 404 Not Found response.
