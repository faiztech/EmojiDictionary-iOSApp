//
//  ViewController.swift
//  Emoji Dictionary iOS App
//
//  Created by Mohammed Faizuddin on 9/9/17.
//  Copyright © 2017 Mohammed Faizuddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var emojis :[Emoji] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        
        let emoji =  emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)

        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let defVC = segue.destination as! emojiDefinitionViewController
        
        defVC.emoji = sender as! Emoji
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        emojis = makeEmojiArray()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func makeEmojiArray() -> [Emoji]{
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😁"
        emoji1.definition = "Grin with eyes closed"
        emoji1.category = "Smiley"
        emoji1.birthyear = 2010
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😝"
        emoji2.definition = "Tongue out and tightly closed eyes"
        emoji2.category = "Smiley"
        emoji2.birthyear = 2010
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😇"
        emoji3.definition = "Angel"
        emoji3.category = "Smiley"
        emoji3.birthyear = 2010
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤡"
        emoji4.definition = "Joker"
        emoji4.category = "Smiley"
        emoji4.birthyear = 2010
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🙏"
        emoji5.definition = "Namaste"
        emoji5.category = "Smiley"
        emoji5.birthyear = 2010
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "👣"
        emoji6.definition = "Footprints"
        emoji6.category = "Action"
        emoji6.birthyear = 2010
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "☂️"
        emoji7.definition = "Umbrella"
        emoji7.category = "Thing"
        emoji7.birthyear = 2010
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🌕"
        emoji8.definition = "Moon"
        emoji8.category = "Space"
        emoji8.birthyear = 2010
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🌏"
        emoji9.definition = "Earth"
        emoji9.category = "Space"
        emoji9.birthyear = 2010
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "🐿"
        emoji10.definition = "Squirrel"
        emoji10.category = "Animal"
        emoji10.birthyear = 2010
        
        let emoji11 = Emoji()
        emoji11.stringEmoji = "🌈"
        emoji11.definition = "Rainbow"
        emoji11.category = "World"
        emoji11.birthyear = 2010
        
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5,emoji6, emoji7, emoji8,emoji9, emoji10,emoji11]
        
        
    }
    
    

}

