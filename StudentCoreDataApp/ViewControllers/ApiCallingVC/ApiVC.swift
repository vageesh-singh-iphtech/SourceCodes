//
//  ApiVC.swift
//  StudentCoreDataApp
//
//  Created by iPHTech 35 on 17/03/25.
//

import UIKit

struct Todo:Codable{
    let userId:Int
    let id:Int
    let title:String
    let completed:Bool
}

struct userResponse:Codable{
    let page:Int
    let per_page:Int
    let total:Int
    
    let data: [userInfo]
    
}
struct userInfo:Codable{
    let id:Int
    let email:String
    
    
}

class ApiVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var userIdLabel:UILabel!
    @IBOutlet weak var completedLabel:UILabel!
    @IBOutlet weak var loadingIndicatr:UIActivityIndicatorView!
    @IBOutlet weak var tableView:UITableView!
    
    private var todos:[Todo] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TodoCell")
        
        
        titleLabel.isHidden = true
        userIdLabel.isHidden = true
        completedLabel.isHidden = true
        loadingIndicatr.hidesWhenStopped = true
        loadingIndicatr.startAnimating()
        
        tableView.delegate=self
        tableView.dataSource=self
        
        fetchData()
        
        
        
    }
    // MARK: - Navigation
    
    @IBAction func fetchButtonTapped(_ sender: UIButton){
        loadingIndicatr.startAnimating()
        
        titleLabel.text = ""
        userIdLabel.text = ""
        completedLabel.text = ""
        titleLabel.isHidden = true
        userIdLabel.isHidden = true
        completedLabel.isHidden=true
        
        DispatchQueue.global().async{
            self.fetchData()
        }
    }
    
    // MARK: - API Call
    
    func fetchData() {
        loadingIndicatr.startAnimating()
        todos = []
        tableView.reloadData()
        titleLabel.text = ""
        titleLabel.isHidden = true
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            print("Invalid URL")
            loadingIndicatr.stopAnimating()
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
           DispatchQueue.main.async {
                self.loadingIndicatr.stopAnimating()
                
                if let error = error {
                    print("Error fetching data: \(error)")
                    self.titleLabel.text = "Error: Unable to fetch data"
                    self.titleLabel.isHidden = false
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse,
                      (200...299).contains(httpResponse.statusCode) else {
                    print("Invalid HTTP response")
                    self.titleLabel.text = "Error: Invalid HTTP Response"
                    self.titleLabel.isHidden = false
                    return
                }
                
                guard let data = data else {
                    print("No data received")
                    self.titleLabel.text = "Error: No data received"
                    self.titleLabel.isHidden = false
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    let todos = try decoder.decode([Todo].self, from: data)
                    self.todos = todos
                    self.tableView.reloadData()
                    
                } catch {
                    print("Error decoding JSON: \(error)")
                    self.titleLabel.text = "Error: JSON Decoding Failed"
                    self.titleLabel.isHidden = false
                    
                }
            }
        }
        
        task.resume()
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo.title
        
        return cell
    }
    
    // MARK: - UITableViewDelegate (Optional)
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedTodo = todos[indexPath.row]
        print("Selected Todo: \(selectedTodo)")
    }
}
