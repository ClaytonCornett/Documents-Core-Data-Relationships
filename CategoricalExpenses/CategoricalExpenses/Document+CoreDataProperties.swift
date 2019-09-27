//
//  Document+CoreDataProperties.swift
//  CategoricalExpenses
//
//  Created by Clayton Cornett on 9/27/19.
//  Copyright © 2019 Shawn Moore. All rights reserved.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var name: String?
    @NSManaged public var text: String?
    //@NSManaged public var filesize: Int64
    @NSManaged public var rawDate: NSDate?
    @NSManaged public var category: Category?

}
