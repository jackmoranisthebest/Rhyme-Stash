//
//  RhymeViewController.swift
//  Rhyme_Stash
//
//  Created by Dilip Rao on 5/3/17.
//  Copyright © 2017 The Bingo Boiz. All rights reserved.
//

import UIKit

class RhymeViewController: UIViewController {
    @IBOutlet weak var rhyme0: UIButton!

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
