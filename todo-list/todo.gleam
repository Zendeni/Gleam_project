import gleam/list
import gleam/io
import gleam/option.{Optional, some, none}

pub type Todo {
  Todo(
    id: Int,
    description: String,
    completed: Bool,
  )
}

type Todos = List(Todo)

/// Create a new to-do item
pub fn create(todos: Todos, description: String) -> Todos {
  let id = list.length(todos) + 1
  let new_todo = Todo(id, description, False)
  list.append(todos, new_todo)
}

/// Read all to-do items
pub fn read(todos: Todos) -> Todos {
  todos
}

/// Update a to-do item by ID
pub fn update(todos: Todos, id: Int, description: String, completed: Bool) -> Todos {
  list.map(todos, fn (todo) {
    case todo {
      Todo(id_t, _, _) if id_t == id -> Todo(id, description, completed)
      _ -> todo
    }
  })
}

/// Delete a to-do item by ID
pub fn delete(todos: Todos, id: Int) -> Todos {
  list.filter(todos, fn (todo) {
    case todo {
      Todo(id_t, _, _) if id_t == id -> False
      _ -> True
    }
  })
}

/// Print the to-do list
pub fn print_todos(todos: Todos) {
  io.println("To-Do List:")
  list.each(todos, fn (todo) {
    case todo {
      Todo(id, description, completed) -> 
        let status = if completed { "completed" } else { "not completed" }
        io.println(#(id, description, status))
    }
  })
}

pub fn main() {
  let todos = []
  let todos = create(todos, "Buy milk")
  let todos = create(todos, "Walk the dog")
  let todos = update(todos, 1, "Buy almond milk", True)
  let todos = delete(todos, 2)
  
  print_todos(todos)
}
