# Flutter To-Do List App

A simple, beginner-friendly To-Do List application built with Flutter. This project demonstrates the fundamentals of Flutter development, including state management, list handling, and user input.

## 📱 Screenshots

*(Add screenshots of your app running on your phone here)*

## ✨ Features

* **Add Tasks:** Users can input new tasks via a text field.
* **View Tasks:** Displays a scrollable list of all added tasks using `ListView.builder`.
* **Delete Tasks:** Remove completed or unwanted tasks with a single tap on the delete icon.
* **Dynamic UI:** The interface updates instantly when tasks are added or removed (using `setState`).

## 🛠️ Tech Stack

* **Framework:** Flutter
* **Language:** Dart
* **State Management:** `setState` (Local State)

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

* [Flutter SDK](https://flutter.dev/docs/get-started/install) installed.
* An IDE (VS Code or Android Studio) with Flutter extensions.
* An Android/iOS emulator or a physical device connected via USB/Wi-Fi.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/YOUR_USERNAME/flutter_todo_app.git](https://github.com/YOUR_USERNAME/flutter_todo_app.git)
    ```

2.  **Navigate to the project directory:**
    ```bash
    cd flutter_todo_app
    ```

3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

4.  **Run the app:**
    ```bash
    flutter run
    ```

## 📂 Project Structure

The main logic lies within `lib/main.dart`.

* `main()`: The entry point of the app.
* `MyApp`: Sets up the material app theme and home page.
* `TodoPage`: A `StatefulWidget` that manages the list of tasks.
    * `toDoList`: A list of strings storing the tasks.
    * `addTask()`: Function to add text from the input field to the list.
    * `deleteTask()`: Function to remove a task from the list by index.

## 🔮 Future Improvements

Here are some features planned for future updates (feel free to contribute!):

* **Data Persistence:** Save tasks locally using `Shared Preferences` or `Hive` so data isn't lost on restart.
* **Edit Tasks:** Ability to update existing tasks.
* **Task Completion:** Add a checkbox to mark tasks as done without deleting them.
* **Theming:** Add dark mode support.

## 🤝 Contributing

Contributions are welcome! If you have suggestions or want to improve the code, please:

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).

---

**Happy Coding! 💙**
