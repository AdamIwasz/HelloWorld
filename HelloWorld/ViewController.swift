//
//  ViewController.swift
//  HelloWorld
//
//  Created by Adam Iwaszkiewicz UCTI on 12/09/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.red
    }

    @IBAction func showMessage(sender: UIButton){
        let emojiDict: [String:String] = ["💩":"Kupsko",
                                          "🫥":"Dziwna morda",
                                          "😀":"Uśmiechięta mordka",
                                          "🤡":"Clown"]
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text{
            let meaning = emojiDict[wordToLookup]
            
            let alertController = UIAlertController(title: "Znaczenie emotki",
                                                    message: meaning,
                                                    preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: UIAlertAction.Style.default,
                                                    handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    
}

