//
//  LoginVC.swift
//  StudentCoreDataApp
//
//  Created by iPHTech 35 on 13/03/25.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var loginUserNameTxt: UITextField!
    
    @IBOutlet weak var loginPassWordTxt: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtnClick(_ sender: Any) {
        guard let username = loginUserNameTxt.text, !username.isEmpty,
                      let password = loginPassWordTxt.text, !password.isEmpty else {
                    showAlert(title: "Error", message: "Please enter both username and password.")
                    return
    }
        
        guard let url = URL(string: "http://localhost:8080/api/auth/login") else {
                    showAlert(title: "Error", message: "Invalid URL")
                    return
                }
        var request = URLRequest(url: url)
                request.httpMethod = "POST"
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
                
                // Create JSON payload for login
                let json: [String: Any] = [
                    "username": username,
                    "password": password
                ]
        
        do {
                    let jsonData = try JSONSerialization.data(withJSONObject: json, options: [])
                    request.httpBody = jsonData
                } catch {
                    showAlert(title: "Error", message: "Error creating JSON data")
                    return
                }
        
        //network call
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
                    // Handle error scenario
                    if let error = error {
                        DispatchQueue.main.async {
                            self.showAlert(title: "Error", message: error.localizedDescription)
                        }
                        return
                    }
            
            // Ensure data is received
                       guard let data = data else {
                           DispatchQueue.main.async {
                               self.showAlert(title: "Error", message: "No data received")
                           }
                           return
                       }
            
            do {
                           if let jsonResponse = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                               print("Login Response: \(jsonResponse)")
                               let isSuccess = jsonResponse["isSuccess"] as? Bool ?? false
                               let message = jsonResponse["message"] as? String ?? "No message"
                               
                               DispatchQueue.main.async {
                                   if isSuccess {
                                       let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                           
                                           if let nextVC = storyboard.instantiateViewController(withIdentifier: "ApiVC") as? ApiVC {
                                              
                                               self.navigationController?.pushViewController(nextVC, animated: true)
                                           } else {
                                               // If the view controller could not be instantiated, you can show an error alert.
                                               self.showAlert(title: "Navigation Error", message: "Unable to find the next page.")
                                           }
                                   } else {
                                       self.showAlert(title: "Login Failed", message: message)
                                   }
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
    
    // Helper function to display alerts
        func showAlert(title: String, message: String) {
            let alertController = UIAlertController(title: title,
                                                    message: message,
                                                    preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    
    

    /*
    // MARK: - Navigation

    */

}
