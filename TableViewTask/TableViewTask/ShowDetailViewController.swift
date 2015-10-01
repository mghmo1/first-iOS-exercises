//
//  ShowDetailViewController.swift
//  TableViewTask
//
//  Created by Maximilian Ott on 09.06.15.
//  Copyright (c) 2015 Maximilian Ott. All rights reserved.
//

import UIKit

class ShowDetailViewController: UIViewController {

    @IBOutlet weak var detailNameLabel: UILabel!
    
    var detailName = String()
    
    override func viewWillAppear(animated: Bool) {
        detailNameLabel.text = "Here you can see the details for " + detailName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
