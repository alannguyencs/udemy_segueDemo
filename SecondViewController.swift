//
//  SecondViewController.swift
//  udemy_segueDemo
//
//  Created by Alan on 3/20/18.
//  Copyright © 2018 Alan Nguyen. All rights reserved.
//

import UIKit

protocol CanReceive{
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {

    var delegate: CanReceive?
    var data = ""
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendBackward(_ sender: Any) {
        //if delegate can perform without error, it will pass the textField.text to data
        
        //when the button is pressed, perform the delegate action (CanRecieved protocol)
        delegate?.dataReceived(data: textField.text!)
        
        //then dismiss the secondViewController to come back the first ViewController
        dismiss(animated: true, completion: nil)
    }
    
}
