//
//  EmojiTabaleViewCell.swift
//  Emoji Reader
//
//  Created by Миша Москвичев on 01.11.2020.
//

import UIKit

class EmojiTabaleViewCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set(object : Emoji) {
        self.emojiLabel.text = object.emoji
        self.nameLabel.text = object.name
        self.descriptionLabel.text = object.description
      
    }

}
