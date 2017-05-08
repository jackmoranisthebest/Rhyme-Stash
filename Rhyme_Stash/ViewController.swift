//
//  ViewController.swift
//  Rhyme_Stash
//
//  Created by jmoran2 on 4/24/17.
//  Copyright © 2017 The Bingo Boiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
   var startingWord = ""
    
    @IBOutlet weak var startingWordText: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlString = "http://rhymebrain.com/talk?function=getRhymes&word=hello"
        
        
        
        if let url = NSURL(string: urlString)
        {
            if let myData = try? NSData(contentsOf: url as URL, options: [])//try cheks for url connection
            {
                let json = JSON(data: myData as Data)
                print(json[0]["word"].stringValue)
                parse(json: json)//function that lets me use the json data
            }
        }
    }
    
    func parse(json: JSON)
    {
        let word1 = json[0]["word"].stringValue
        print(json["word"].stringValue)
        
    }
    @IBAction func findRhymez(_ sender: UIButton) {
    }
    
}

