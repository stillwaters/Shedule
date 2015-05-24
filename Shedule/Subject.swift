//
//  Subject.swift
//  Shedule
//
//  Created by Артем Жорницкий on 24.05.15.
//  Copyright (c) 2015 Артем Жорницкий. All rights reserved.
//

import UIKit

struct Lesson {
       // let int Time=
    var Name="1"
    var Teacher="2"
    
}

var LessMgr = LessonManager()


class LessonManager: NSObject{
        
       var Lessons = [Lesson]()
        
        func Addlesson(name: String, teacher: String){
            Lessons.append(Lesson(Name: name,Teacher: teacher))
        }
        
    }
   
