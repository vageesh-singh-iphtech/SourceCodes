//
//  SignupVC.swift
//  StudentCoreDataApp
//
//  Created by iPHTech 35 on 17/03/25.
//

import UIKit

class SignupVC: UIViewController {
    
    
    @IBOutlet weak var txtusername: UITextField!
    
    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
            // Validate input fields
            guard let username = txtusername.text, !username.isEmpty,
                  let email = txtemail.text, !email.isEmpty,
                  let password = txtpassword.text, !password.isEmpty else {
                showAlert(title: "Error", message: "All fields are required.")
                return
            }
        
        guard let url = URL(string: "http://localhost:8080/api/auth/register") else {
                    showAlert(title: "Error", message: "Invalid URL")
                    return
                }
        
        var request = URLRequest(url: url)
                request.httpMethod = "POST"
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                
                // Prepare JSON body for registration
                let json: [String: Any] = [
                    "username": username,
                    "email": email,
                    "password": password
                ]
                
                do {
                    let jsonData = try JSONSerialization.data(withJSONObject: json, options: [])
                    request.httpBody = jsonData
                } catch {
                    showAlert(title: "Error", message: "Error creating JSON data")
                    return
                }
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
                    // Handle any errors
                    if let error = error {
                        DispatchQueue.main.async {
                            self.showAlert(title: "Error", message: error.localizedDescription)
                        }
                        return
                    }
                    
                    // Ensure data was received
                    guard let data = data else {
                        DispatchQueue.main.async {
                            self.showAlert(title: "Error", message: "No data received")
                        }
                        return
                    }
            do {
                            if let jsonResponse = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                                // Print the raw response (for debugging)
                                print(jsonResponse)
                                
                                let isSuccess = jsonResponse["isSuccess"] as? Bool ?? false
                                let message = jsonResponse["message"] as? String ?? "No message"
                                
                                // Display the result in an alert on the main thread
                                DispatchQueue.main.async {
                                    self.showAlert(title: isSuccess ? "Success" : "Error", message: message)
                                }
                            }
                        } catch {
                            DispatchQueue.main.async {
                                self.showAlert(title: "Error", message: "Error parsing response")
                            }
                        }
                    }
                    task.resume()
                }
    func showAlert(title: String, message: String) {
            let alertController = UIAlertController(title: title,
                                                    message: message,
                                                    preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
