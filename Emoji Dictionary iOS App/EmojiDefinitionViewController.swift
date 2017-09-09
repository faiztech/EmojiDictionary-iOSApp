//
//  emojiDefinitionViewController.swift
//  Emoji Dictionary iOS App
//
//  Created by Mohammed Faizuddin on 9/9/17.
//  Copyright © 2017 Mohammed Faizuddin. All rights reserved.
//

import UIKit

class emojiDefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDef: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
        
        
        if emoji == "😁"
        {
            emojiDef.text = "A grin with closed eyes"

        }else if emoji == "😝"
        {
            emojiDef.text = "Tongue out and tightly closed eyes"
            
        }else if emoji == "😇"
        {
            emojiDef.text = "Angel"
            
        }else if emoji == "🤡"
        {
            emojiDef.text = "Joker"
            
        }else if emoji == "🙏"
        {
            emojiDef.text = "Namaste"
            
        }else if emoji == "👣"
        {
            emojiDef.text = "Footprints"
            
        }else if emoji == "☂️"
        {
            emojiDef.text = "Umbrella"
            
        }else if emoji == "🌕"
        {
            emojiDef.text = "Full Moon"
            
        }else if emoji == "🌏"
        {
            emojiDef.text = "Earth"
            
        }else if emoji == "🐿"
        {
            emojiDef.text = "Squirrel"
            
        }else if emoji == "🌈"
        {
            emojiDef.text = "A Rainbow"
            
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
