//
//  FirstViewController.swift
//  Shedule
//
//  Created by Артем Жорницкий on 24.05.15.
//  Copyright (c) 2015 Артем Жорницкий. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   // @IBOutlet weak var Table2: UITableView!
    
    @IBOutlet weak var Table2: UITableView!
    
    @IBOutlet weak var Table1: UITableView!
    //@IBOutlet weak var Table1: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return LessMgr.Lessons.count
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        Table1.reloadData()
        //Table2.reloadData()
    }
        
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    //
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        cell.textLabel.text = LessMgr.Lessons[indexPath.row].Name
        cell.detailTextLabel?.text=LessMgr.Lessons[indexPath.row].Teacher;
        return cell
   }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

