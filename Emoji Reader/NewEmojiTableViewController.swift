//
//  NewEmojiTableViewController.swift
//  Emoji Reader
//
//  Created by Миша Москвичев on 02.11.2020.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateSabeButtonState()
    }
    
    // реализация функцианала кнопки SAVE (горит тогда когда все 3 графы заполнены)
    private func updateSabeButtonState() {
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    
    @IBAction func textChanged(_ sender: UITextField) {
       updateSabeButtonState()
    }
    
    
  
}
