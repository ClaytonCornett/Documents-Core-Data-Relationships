

import UIKit

class NewExpenseViewController: UIViewController {
    
    @IBOutlet weak var textTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var category: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.delegate = self
        //textTextView.delegate = self as! UITextViewDelegate
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameTextField.resignFirstResponder()
        amountTextField.resignFirstResponder()
    }
    
    @IBAction func saveExpense(_ sender: Any) {
        let name = nameTextField.text
        let text = textTextView.text ?? ""
        //let date =
        
        if let document = Document(name: name, text: text){
            category?.addToRawDocuments(document)
            
            do{
                try document.managedObjectContext?.save()
                
                self.navigationController?.popViewController(animated: true)
            } catch{
                print("Document couldnt be created")
            }
        }
        
    }
}

extension NewExpenseViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
