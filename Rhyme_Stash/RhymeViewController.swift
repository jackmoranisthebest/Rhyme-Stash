//
//  RhymeViewController.swift
//  Rhyme_Stash
//
//  Created by Dilip Rao on 5/3/17.
//  Copyright © 2017 The Bingo Boiz. All rights reserved.
//

import UIKit

class RhymeViewController: UIViewController {
    
    var rhymeWord = ""
    var count = 5
    var a = 0
    var b = 1
    var c = 2
    var d = 3
    var e = 4
    
    var word1 = ""
    var word2 = ""
    var word3 = ""
    var word4 = ""
    var word5 = ""
   
    
    @IBOutlet weak var RhymeZero: UIButton!
    @IBOutlet weak var RhymeOne: UIButton!
    @IBOutlet weak var RhymeTwo: UIButton!
    @IBOutlet weak var RhymeThree: UIButton!
    @IBOutlet weak var RhymeFour: UIButton!
    
    var rhymeWord = ""
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        navigationItem.title = rhymeWord

        // Do any additional setup after loading the view, typically from a nib.
        
        let urlString = "http://rhymebrain.com/talk?function=getRhymes&word=\(rhymeWord)"
        //"https://api.datamuse.com/words?rel_rhy=beat"
        
        if let url = NSURL(string: urlString)
        {
            if let myData = try? NSData(contentsOf: url as URL, options: [])//try cheks for url connection
            {
                let json = JSON(data: myData as Data)
                print(json[0]["word"].stringValue)
                parse(json: json)//function that lets me use the json data
            }
        }
        
        let urlString1 = "https://api.datamuse.com/words?rel_trg=\(rhymeWord)"
        //"https://api.datamuse.com/words?rel_rhy=beat"
        
        if let url1 = NSURL(string: urlString1)
        {
            if let myData = try? NSData(contentsOf: url1 as URL, options: [])//try cheks for url connection
            {
                let json1 = JSON(data: myData as Data)
                print(json1[0]["word"].stringValue)
                associate(json1: json1)//function that lets me use the json data
            }
        }
    }
    
    func parse(json: JSON)
    {
        word1 = json[a]["word"].stringValue
        word2 = json[b]["word"].stringValue
        word3 = json[c]["word"].stringValue
        word4 = json[d]["word"].stringValue
        word5 = json[e]["word"].stringValue

        RhymeZero.setTitle(word1, for: .normal)
        RhymeOne.setTitle(word2, for: .normal)
        RhymeTwo.setTitle(word3, for: .normal)
        RhymeThree.setTitle(word4, for: .normal)
        RhymeFour.setTitle(word5, for: .normal)
    }
    
    
    func associate(json1: JSON)
    {
        let word0 = json1[0]["word"].stringValue
        RhymeFour.setTitle(word0, for: .normal)
        print(json1[0]["word"].stringValue)
    }
    

    @IBAction func rhyme0(_ sender: UIButton) {
    }
    
    @IBAction func rhyme1(_ sender: UIButton) {
    }
    
    @IBAction func rhyme2(_ sender: UIButton) {
    }
    
    @IBAction func rhyme3(_ sender: UIButton) {
    }
    
    @IBAction func rhyme4(_ sender: UIButton) {
    }
    
    
    @IBAction func refreshSuggestions(_ sender: UIButton) {
        a = a + count
        b = b + count
        c = c + count
        d = d + count
        e = e + count
        
        func parse(json: JSON)
        {
            word1 = json[a]["word"].stringValue
            word2 = json[b]["word"].stringValue
            word3 = json[c]["word"].stringValue
            word4 = json[d]["word"].stringValue
            word5 = json[e]["word"].stringValue
            
            RhymeZero.setTitle(word1, for: .normal)
            RhymeOne.setTitle(word2, for: .normal)
            RhymeTwo.setTitle(word3, for: .normal)
            RhymeThree.setTitle(word4, for: .normal)
            RhymeFour.setTitle(word5, for: .normal)
        }
        viewDidLoad()
    }

    @IBAction func changeNumSyllables(_ sender: UIButton) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
