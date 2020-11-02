//
//  EmojiTableViewController.swift
//  Emoji Reader
//
//  Created by Миша Москвичев on 01.11.2020.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var objects = [
        Emoji(emoji: "🥶", name: "Cold", description: "It's cold right now", isFavourite: false),
        Emoji(emoji: "🥵", name: "Hot", description: "It's hot right now", isFavourite: false),
        Emoji(emoji: "🤢", name: "Puke", description: "I think I might puke.", isFavourite: false),
        Emoji(emoji: "😡", name: "Angry", description: "I'm so abngry right now", isFavourite: false),
        Emoji(emoji: "😈", name: "Devil Smile", description: "I want to do something nasty", isFavourite: false)

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.title = "Emoji Reader"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath) as! EmojiTabaleViewCell
        
        let object = objects[indexPath.row]
        cell.set(object: object)
        return cell
    }
    
    // realisation delete objects
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedEmoji = objects.remove(at: sourceIndexPath.row)
        objects.insert(movedEmoji, at: destinationIndexPath.row)
        tableView.reloadData()
    }
    
}
