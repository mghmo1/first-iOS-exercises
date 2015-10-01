//
//  QuestionController.swift
//  quizApp
//
//  Created by Maximilian Ott on 23.06.15.
//  Copyright (c) 2015 Maximilian Ott. All rights reserved.
//

import UIKit

class QuestionController: UIViewController {
    
    
    var question : Question?
    
    var name = ""
    
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = question!.name!
        
        self.title = name
        
        questionText.text = question!.text
        
        var random = Int(arc4random_uniform(12))
        
        switch random {
          case 0,1:
            button1.setTitle( question!.answer, forState: UIControlState.Normal)
            button2.setTitle( question!.option1, forState: UIControlState.Normal)
            button3.setTitle( question!.option2, forState: UIControlState.Normal)
          case 2,3:
            button1.setTitle( question!.answer, forState: UIControlState.Normal)
            button2.setTitle( question!.option2, forState: UIControlState.Normal)
            button3.setTitle( question!.option1, forState: UIControlState.Normal)
         case 4,5:
            button1.setTitle( question!.option1, forState: UIControlState.Normal)
            button2.setTitle( question!.answer, forState: UIControlState.Normal)
            button3.setTitle( question!.option2, forState: UIControlState.Normal)
        case 6,7:
            button1.setTitle( question!.option1, forState: UIControlState.Normal)
            button2.setTitle( question!.option2, forState: UIControlState.Normal)
            button3.setTitle( question!.answer, forState: UIControlState.Normal)
        case 8,9:
            button1.setTitle( question!.option2, forState: UIControlState.Normal)
            button2.setTitle( question!.answer, forState: UIControlState.Normal)
            button3.setTitle( question!.option1, forState: UIControlState.Normal)
        case 10,11:
            button1.setTitle( question!.option2, forState: UIControlState.Normal)
            button2.setTitle( question!.option1, forState: UIControlState.Normal)
            button3.setTitle( question!.answer, forState: UIControlState.Normal)
        default:
            button1.setTitle( question!.answer, forState: UIControlState.Normal)
            button2.setTitle( question!.option1, forState: UIControlState.Normal)
            button3.setTitle( question!.option2, forState: UIControlState.Normal)
        }

        // Do any additional setup after loading the view.
    }

    @IBAction func selectButton1(sender: UIButton) {
        if sender.titleLabel!.text == question!.answer {
            sender.backgroundColor = UIColor.greenColor()
        } else {
            sender.backgroundColor = UIColor.redColor()
        }
    }
    
    @IBAction func selectButton2(sender: UIButton) {
        if sender.titleLabel!.text == question!.answer {
            sender.backgroundColor = UIColor.greenColor()
        } else {
            sender.backgroundColor = UIColor.redColor()
        }
    }
    
    @IBAction func selectButton3(sender: UIButton) {
        if sender.titleLabel!.text == question!.answer {
            sender.backgroundColor = UIColor.greenColor()
        } else {
            sender.backgroundColor = UIColor.redColor()
        }
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
