//
//  myTableViewController.swift
//  quizApp
//
//  Created by Maximilian Ott on 23.06.15.
//  Copyright (c) 2015 Maximilian Ott. All rights reserved.
//

import UIKit

class myTableViewController: UITableViewController {
    
    var questions = [Question]();
    
    let ident = "myCell"
    
    var correct = false
    
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = NSURL(string: "http://mail.splico.co/questions.json")
        
        if let JSONData = NSData(contentsOfURL: url!) {
            if let json = NSJSONSerialization.JSONObjectWithData(JSONData, options: nil, error: nil) as? NSArray {
                if let reposArray = json as? [NSDictionary] {
                    for item in reposArray {
                        questions.append(Question(json: item))
                    }
                }
            }
        }
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            self.tableView.reloadData()
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return questions.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(ident, forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...
        
        let row = indexPath.row
        
        var name: String! = questions[row].name
        var text: String! = questions[row].text
        var answer: String! = questions[row].answer
        var option1: String! = questions[row].option1
        var option2: String! = questions[row].option2
        
        
        cell.textLabel?.text = name
        
        cell.detailTextLabel?.font = UIFont.fontAwesomeOfSize(24)
        if correct {
            cell.detailTextLabel?.text = String.fontAwesomeIconWithName(FontAwesome.CheckCircle)
        } else {
            cell.detailTextLabel?.text = String.fontAwesomeIconWithName(FontAwesome.TimesCircle)
        }

        return cell
    }
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let row = indexPath.row
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showQuestion" {
            
            var destination = segue.destinationViewController as! QuestionController
            
            var question : Question = Question()
            
            var index = tableView.indexPathForSelectedRow()
            
            if var i = index {
                question = questions[i.row]
            }
            
            destination.question = question
            
        }
        
        

    }
    
}
