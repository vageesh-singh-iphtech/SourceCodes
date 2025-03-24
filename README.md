# STUDENT MANAGEMENT SYSTEM

This iOS application is built with Swift, Storyboard, and CoreData. It features a registration page for user sign-up, a view page for displaying stored data, and additional functionality to edit or delete user records.

# Requirements

Xcode: 14.2 Swift: 5.7 (or the version that comes with Xcode 14.2) iOS: 14.0+ macOS: Big Sur (11.0) or higher ToolS.

# Prerequisites

Ensure you have Xcode 14.2 or later installed. Confirm that your macOS is running Big Sur (11.0) or higher. Have an iOS Simulator or physical iOS device available for testing. 

# Steps
Follow these steps to set up and run the project:
# Clone the repository:

bash Copy Edit git clone https://github.com/vageesh-singh-iphtech/ios-registration-app.git cd ios-registration-app Open the project in Xcode:

bash Copy Edit open RegistrationApp.xcodeproj

# Install any dependencies:

If you are using additional dependency managers like CocoaPods or Swift Package Manager, run the necessary install commands. (This example does not include third-party libraries.) Build and Run the Project:

Choose your target device (iOS Simulator or a connected device). Press Cmd + R to build and run the app.

Usage

### Registering a User

- Launch the app. 
- Fill in the registration form with the required fields (e.g., name, email, etc.). 
- Tap the Register button to save the user details to CoreData.

### Viewing Users

- After registration, navigate to the View Users page. 
- A list of all registered users is displayed, fetched from the CoreData storage.

### Editing a User

- On the View Users page, select a user you wish to edit. 
- Tap the Edit button next to the user’s entry. Modify the user information in the presented form. 
- Save your changes to update the record in CoreData.

### Deleting a User

- In the View Users list, choose the user you want to delete. 
- Tap the Delete button associated with that user. 
- Confirm the deletion to remove the user record from CoreData.

### CoreData Module

- Entity: User 
- Attributes: 
- name: String 
- email: String -
- age: Int16 (Example field; add or modify fields as required) 
- User data is managed using a CoreData persistent container.
- When a user registers, their information is stored in the User entity. 
- The app provides functionality to update and remove these entries, ensuring the data remains current.

# Features

- User Registration: Allows new users to register by entering details. 
- View Users: Displays a list of registered users retrieved from CoreData. 
- Edit User: Modify existing user details directly from the app. 
- Delete User: Remove user entries from the app. 


# Frameworks

- Swift: The core programming language for the application. 
- Storyboard: UI built using Interface Builder. 
- CoreData: Local data storage framework used for persisting user data.

## Screenshots

![App Screenshot](https://chat.google.com/u/0/api/get_attachment_url?url_type=FIFE_URL&content_type=image%2Fpng&attachment_token=AOo0EEVfzO9DWqvBA25H6N0E92uR%2Fk6fRN1viwLRCbIrVKZmbefl54Jjw06qcfCiIlPx2pzE4GNAKdquVGLp%2B8%2BSw8na%2FLFYZ6q%2BDXcVajQVMrXufA3lPSsnWJFMWx4zS0%2FX2HLkKly7bj1GdxxKOXQG1rDzx1w7xksEBVjRKkoyOqYHAv3ug5XAK3%2F%2F6cjvpdgj%2Fd3Ya0xpj8BGIviEKEttHQfMgshvE%2FePtl7qJbd0mkn48gAmtluNpet7jX1aWN7SYuuSNGQgT8QNVh4upJlxOCCxFVRdl6WjtfenyoUjX7VIoTkl7CgzYc5pPGCgCjmPpQpNUEc76s0emsYRdgk4Aa6r0onAqy2oFgbWPNPsLnAsXaXg7Z7WG%2B7q%2F77W8wSipkmwWzhAp6%2BgEcfB%2Fl7Ztia0Flrik2%2FMC79%2By1eNCnH09%2FduIQ9Q29jWeCf2rlpepyDH%2BOk3fdHnigNjCcymuFiCtlI6Jdw5BYOEYFpel7tELgG6%2FiIgsOJjkf1Za8uSjM550ZRcGxCCjPbXCBr8WkMBGum%2BMhCryx6rJpiKjHkBwdeefCs1AArpEOQ5qrfiBElmhz5JBSwvubaEvY9mgLW1Fkd9PoNRrmtBwG81fwMhMe4y54x3rAmgHoeJnxLCd6X6OLBqYd%2B3Jg%3D%3D&sz=s330-c)

![App Screenshot](https://chat.google.com/u/0/api/get_attachment_url?url_type=FIFE_URL&content_type=image%2Fpng&attachment_token=AOo0EEUowuca9lW17S1XntNfw3MBGhWuCecMo7hWpRtsJJW%2Bfaww0Ac1fdYC63XzPKWKEeOTTpTF7ywz30o5aTJ6OjiGYktd9rHi0Teog%2FzOYB8%2BIPOL%2FiKWREJrqFHzslbbJnrTSJWMGrjsPNm72NNwJV6j1Mqf72AA1Pgz%2B6F7ukC5VQoAdRZ4VxUB5B6Ihv%2BvL1H33dGDz127RFU9iY8DTog6PymccnMdBp%2B2Gj8BtPN10yFR8FAJbVFWHFWmtAiEnb0NPTmY4l4isEv2Tg0SKXJa0lJ%2FJxQAws6yrxD%2BYX%2BIAkNXulQqBtENbjmtNGQc7bYQWBjP41B2zyacSpF9CqgDwuQ4PsgeDuGxxGR7rdAax0oG2Q72tpeGIIbGDFrIIqz1LcLQOdxcEOyMtQboXCfdSoSjR5EM2YY8X6abuZaBQQReHShbyxgpCRhE%2BayE%2FeczFCdLvDm0%2BICi0y2f04P55bTkPwMUU4B3yWn%2BtdGDEipFLsMK8DUBHgQct8MGoIMdXiSiwSCQMSlxeEZZGgLi9YzKzapGcmfgUYpBuo1g%2Fjz1rsISTDbHdVm8NioGv%2FUct6U7zs%2FUc%2BQpqUr2KqTdrcLOL0ukfoYSnz4snq5M8jUGDSeL5QVpdXXn%2FwGjLZ3AUV4kdHv6PA%3D%3D&sz=s330-c)

![App Screenshot](https://chat.google.com/u/0/api/get_attachment_url?url_type=FIFE_URL&content_type=image%2Fpng&attachment_token=AOo0EEVoVtKUgDUN46CJHyXQnRoiLtmjiHL7aDVTLXZlpv4rCURFCYvdMruBgInSHeACifx8QjeiQQ66GHJ3fau%2FxJhkSbmdC996ZdNyy7KQ7gWTCjEiRdqFpks%2FDCgUswR8vcfkLnShTJXOtmh2R16ABfl30qvvd3LpmZ9ZdbToCe%2BbSd1Ve8f9YBwUP0f%2FFDOXbRftIrbbyoTPW%2BWTZV6UZs91ACr6JWhdADy%2Fd3Q%2FIUQQ7Jt%2B%2BX2DfQtvCMSQI0AO9tURPRva%2BrC6NSNuvs5fQfLHck7EzwgyZy%2B6OkFyxDCZXsLePCFZTPKU%2B9iE10825%2FCG4iFFreRAbCa96uB0Z4jS6ZtfEPWeJqmlxCnMojLeZ8jaT71IjGvX2c8oaBAOHG1C5THw0btkLU324gDf7PLAfogWKFh1CMmSFVat6wJGOz%2Fl0iJyYtNk5mSdDECvDLTRiXWxIoE1duRKhEd1BlV51gtok2rF7%2FK1HuGCFBmVmKj1Q6kze09dxmAjD0Gs%2Bq%2FQYO3taQ0nstwGS8E5vUgrcsxiYo1%2FIVnP6AWvc5pVDliAARVFXcGlgQ%2BdYDYtn05IDZHl%2FWi20pi3XcpIt2UQfkMlEDkxS0jQEWgvV8NiNIRhXWDQOyOa8Ke8m949T66t5%2F6FQxMf&sz=s330-c)



# Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the issues page for any suggestions or improvements.


# Xcode: 

Development environment. Swift: Programming language. CoreData: Framework for data persistence. iOS Community: Inspiration and guidance.
