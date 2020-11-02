//
//  NewEmojiTableViewController.swift
//  Emoji Reader
//
//  Created by Миша Москвичев on 02.11.2020.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    @IBOutlet weak var emojiTextField: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func textChanged(_ sender: UITextField) {
    }
    
  
}
