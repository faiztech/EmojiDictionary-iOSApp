//
//  emojiDefinitionViewController.swift
//  Emoji Dictionary iOS App
//
//  Created by Mohammed Faizuddin on 9/9/17.
//  Copyright © 2017 Mohammed Faizuddin. All rights reserved.
//

import UIKit

class emojiDefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDef: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthyearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji.stringEmoji
        birthyearLabel.text = "BirthYear: \(emoji.birthyear)"
        categoryLabel.text = "Categor: \(emoji.category)"
        emojiDef.text = emoji.definition
        
       
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
