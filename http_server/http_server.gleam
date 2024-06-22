import gleam/http.{Request, Response, Server}
import gleam/erlang

// Define a function to handle HTTP requests
fn handle_request(request: Request) -> Response {
  // Use pattern matching on the request path to determine the response
  case request.path {
    "/" -> 
      // If the path is "/", return a response with "Welcome to Gleam!"
      Response.ok("Welcome to Gleam!")

    "/hello" -> 
      // If the path is "/hello", return a response with "Hello, World!"
      Response.ok("Hello, World!")

    "/goodbye" -> 
      // If the path is "/goodbye", return a response with "Goodbye, World!"
      Response.ok("Goodbye, World!")

    _ -> 
      // For any other path, return a 404 Not Found response
      Response.not_found()
  }
}

// Start the HTTP server
pub fn main() {
  // Create a new HTTP server with the request handler function
  let server = Server.new(handle_request)
  // Bind to the localhost interface on port 4000
  let _ = Server.listen(server, "127.0.0.1", 4000)
  // Keep the process running indefinitely
  erlang.sleep_forever()
}
