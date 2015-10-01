//
//  GreeterViewController.swift
//  GreeterApp
//
//  Created by Maximilian Ott on 27.05.15.
//  Copyright (c) 2015 Maximilian Ott. All rights reserved.
//

import UIKit

class GreeterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var Label: UILabel!

    @IBAction func setName(sender: AnyObject) {
        Label.text = "Hello, " + textField.text
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
