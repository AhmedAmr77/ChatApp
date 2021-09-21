//
//  ChatViewController.swift
//  ChatApp
//
//  Created by Ahmd Amr on 20/09/2021.
//  Copyright © 2021 ahmdamr. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var chatTableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages = [
        Message(sender: "a@a.com", body: "Hi"),
        Message(sender: "b@b.com", body: "Hello"),
        Message(sender: "a@a.com", body: "Whats up")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatTableView.dataSource = self
        navigationItem.title = K.appName
        navigationItem.hidesBackButton = true
        
        chatTableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
          
    }
    
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        cell.messageLabel.text = messages[indexPath.row].body
        return cell
    }
    
    
}
