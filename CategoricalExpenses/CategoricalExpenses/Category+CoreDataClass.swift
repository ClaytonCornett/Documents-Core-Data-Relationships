

import UIKit
import CoreData

@objc(Category)
public class Category: NSManagedObject {

    var documents: [Document]? {
        return self.rawDocuments?.array as? [Document]
    }
    
    convenience init?(title: String){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate? .persistentContainer.viewContext else{
            return nil
        }
        self.init(entity: Category.entity(), insertInto: context)
        
        self.title = title
    }
}
