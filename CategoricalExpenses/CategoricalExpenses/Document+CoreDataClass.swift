//
//  Document+CoreDataClass.swift
//  CategoricalExpenses
//
//  Created by Clayton Cornett on 9/27/19.
//  Copyright © 2019 Shawn Moore. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Document)
public class Document: NSManagedObject {
    
    
    convenience init?(name: String?, text: String?){
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else{
            return nil
        }
        
        self.init(entity: Document.entity(), insertInto: context)
        
        self.name = name
        self.text = text
        //self.date = date
        //self.filesize = filesize
    }

}
