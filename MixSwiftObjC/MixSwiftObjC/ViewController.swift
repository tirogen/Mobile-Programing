//
//  ViewController.swift
//  MixSwiftObjC
//
//  Created by Ni Tu on 15/3/2562 BE.
//  Copyright © 2562 CatDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myText: UITextField!

    @IBOutlet weak var studentId: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSecond" {
            let dest : secondViewController? = segue.destination as? secondViewController;
            dest?.castText = myText.text!;
        }
        if segue.identifier == "studentData" {
            let dest : studentTableViewController? = segue.destination as? studentTableViewController;
            dest?.studentId = studentId.text!;
        }
    }

}
