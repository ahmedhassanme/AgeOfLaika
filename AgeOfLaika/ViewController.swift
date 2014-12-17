import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let humanYears = Double((humanYearsTextField.text as NSString).doubleValue)
        let conversionConstant = 7.0
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(humanYears * conversionConstant)" + " human years"
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertToDogYearsAccurateButtonPressed(sender: UIButton) {
        let humanYears = Double((humanYearsTextField.text as NSString).doubleValue)
        dogYearsLabel.hidden = false
        if humanYears <= 2.0 {
            dogYearsLabel.text = "\(humanYears * 10.5)" + " human years"
        }
        else {
            dogYearsLabel.text = "\((2 * 10.5) + ((humanYears - 2) * 4))" + " human years"
        }
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }

}

