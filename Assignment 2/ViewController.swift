//
//  ViewController.swift
//  Assignment 2
//
//  Created by user252703 on 6/21/24.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonclick(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "No Monitors yet. Check back later!", preferredStyle: .alert)
               alert.addAction(UIAlertAction(title: "Ok", style:.cancel));
               present(alert, animated: true);
    }
    
}

