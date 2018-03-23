//
//  ViewController.swift
//  udemy_segueDemo
//
//  Created by Alan on 3/20/18.
//  Copyright © 2018 Alan Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToSecondScreen"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.data = textField.text!
            //become the delegate of the secondeViewController
            destinationVC.delegate = self
        }
    }
    
    //performce the function in protocol
    func dataReceived(data: String) {
        label.text = data
    }
}

