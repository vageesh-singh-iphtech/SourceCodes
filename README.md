**iOS Registration App**

This iOS application is built with Swift, Storyboard, and CoreData. It features a registration page for user sign-up, a view page for displaying stored data, and additional functionality to edit or delete user records.

**Features**

User Registration: Allows new users to register by entering details.
View Users: Displays a list of registered users retrieved from CoreData.
Edit User: Modify existing user details directly from the app.
Delete User: Remove user entries from the app.
**Requirements**

Xcode: 14.2
Swift: 5.7 (or the version that comes with Xcode 14.2)
iOS: 14.0+
macOS: Big Sur (11.0) or higher
**Tools and Frameworks**

Swift: The core programming language for the application.
Storyboard: UI built using Interface Builder.
CoreData: Local data storage framework used for persisting user data.
**Installation**

Follow these steps to set up and run the project:

**Prerequisites**

Ensure you have Xcode 14.2 or later installed.
Confirm that your macOS is running Big Sur (11.0) or higher.
Have an iOS Simulator or physical iOS device available for testing.
Steps

**Clone the repository:**


bash
Copy
Edit
git clone https://github.com/vageesh-singh-iphtech/ios-registration-app.git
cd ios-registration-app
**Open the project in Xcode:**

bash
Copy
Edit
open RegistrationApp.xcodeproj

**Install any dependencies:**

If you are using additional dependency managers like CocoaPods or Swift Package Manager, run the necessary install commands. (This example does not include third-party libraries.)
**Build and Run the Project:**

Choose your target device (iOS Simulator or a connected device).
Press Cmd + R to build and run the app.

**Usage**

**Registering a User**

Launch the app.
Fill in the registration form with the required fields (e.g., name, email, etc.).
Tap the Register button to save the user details to CoreData.

**Viewing Users**

After registration, navigate to the View Users page.
A list of all registered users is displayed, fetched from the CoreData storage.

**Editing a User**

On the View Users page, select a user you wish to edit.
Tap the Edit button next to the user’s entry.
Modify the user information in the presented form.
Save your changes to update the record in CoreData.

**Deleting a User**

In the View Users list, choose the user you want to delete.
Tap the Delete button associated with that user.
Confirm the deletion to remove the user record from CoreData.

**CoreData Module**

Entity: User
Attributes:
name: String
email: String
age: Int16 (Example field; add or modify fields as required)
User data is managed using a CoreData persistent container. When a user registers, their information is stored in the User entity. The app provides functionality to update and remove these entries, ensuring the data remains current.

**Contributing**

Contributions, issues, and feature requests are welcome! Feel free to check the issues page for any suggestions or improvements.

**License**

This project is licensed under the MIT License. See the LICENSE file for details.

**Acknowledgements**

Xcode: Development environment.
Swift: Programming language.
CoreData: Framework for data persistence.
iOS Community: Inspiration and guidance.
