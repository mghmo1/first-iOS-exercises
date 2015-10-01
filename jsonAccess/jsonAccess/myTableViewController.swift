//
//  myTableViewController.swift
//  jsonAccess
//
//  Created by Maximilian Ott on 23.06.15.
//  Copyright (c) 2015 Maximilian Ott. All rights reserved.
//

import UIKit

class myTableViewController: UITableViewController {
    
    
    

    @IBOutlet var table: UITableView!
    
    var episodes = [Episode]();

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "https://www.hdm-stuttgart.de/~fankhauser/api/episodes.json")
        
        if let JSONData = NSData(contentsOfURL: url!) {
            if let json = NSJSONSerialization.JSONObjectWithData(JSONData, options: nil, error: nil) as? NSArray {
                if let reposArray = json as? [NSDictionary] {
                    for item in reposArray {
                        episodes.append(Episode(json: item))
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
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return episodes.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! UITableViewCell
        
        let row = indexPath.row
        
        let section = indexPath.section
        
        var season: Int! = episodes[row].season
        var number: Int! = episodes[row].number
        var name: String! = episodes[row].name
        var title: String! = episodes[row].title
        
        var textContent = "S" + String(season) + "E" + String(number) + ": " + name
        
        cell.textLabel?.text = textContent
        cell.detailTextLabel?.text = title

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        let section = indexPath.section
        
    }
}
