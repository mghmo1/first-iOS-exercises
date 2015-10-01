//
//  ViewController.swift
//  TableViewTask
//
//  Created by Maximilian Ott on 27.05.15.
//  Copyright (c) 2015 Maximilian Ott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    
    var dataPassed:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        detailLabel.text = dataPassed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

