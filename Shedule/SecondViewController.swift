//
//  SecondViewController.swift
//  Shedule
//
//  Created by Артем Жорницкий on 24.05.15.
//  Copyright (c) 2015 Артем Жорницкий. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    @IBOutlet weak var LessonName: UITextField!
    @IBOutlet weak var TeacherName: UITextField!
    @IBAction func AddButt(sender: AnyObject) {
        LessMgr.Addlesson(LessonName.text,teacher: TeacherName.text)
        self.view.endEditing(true)
        //self.tabBarController?.selectedIndex=0
        
    }

   // @IBOutlet weak var PickerView: UIPickerView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    // info that was fetched and cached from the data source and delegate


    
    // Reloading whole view or single component
   

}

