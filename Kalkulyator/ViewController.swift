

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnsRadius: [UIButton]!
    @IBOutlet weak var screenLbl: UILabel!
    
    var first : String = ""
    var second : String = ""
    var isright : Bool = true
    var mark : String = ""
    var k = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for btn in btnsRadius {
            btn.layer.cornerRadius = btn.frame.height / 2
        }
    }

    
    @IBAction func zeroBtn(_ sender: Any) {
        
        if isright {
            first += "0"
            screenLbl.text = first
        }else{
            second += "0"
            screenLbl.text = second
        }
        
    }
    
    @IBAction func oneBtn(_ sender: Any) {
        if isright {
            first += "1"
            screenLbl.text = first
        }else{
            second += "1"
            screenLbl.text = second
        }
    }
    
    @IBAction func twoBtn(_ sender: Any) {
        if isright{
            second += "2"
            screenLbl.text = second
        }else{
            second += "2"
            screenLbl.text = "2"
        }
    }
    
    @IBAction func threeBtn(_ sender: Any) {
        if isright{
            first += "3"
            screenLbl.text = first
        }else{
            second += "3"
            screenLbl.text = second
        }
    }
    
    @IBAction func fourBtn(_ sender: Any) {
        
        if isright{
            first += "4"
            screenLbl.text = first
        }else{
            second += "4"
        }
        
        
    }
    
    @IBAction func fiveBtn(_ sender: Any) {
        if isright{
            first += "5"
            screenLbl.text = first
        }else{
            second += "5"
            screenLbl.text = second
        }
        
    }
    
    @IBAction func sixBtn(_ sender: Any) {
        if isright{
            first += "6"
            screenLbl.text = first
        }else{
            second += "6"
            screenLbl.text = second
        }
        
    }
    
    @IBAction func sevenBtn(_ sender: Any) {
        if isright{
            first += "7"
            screenLbl.text = first
        }else {
            second += "7"
            screenLbl.text = second
        }
    }
    
    @IBAction func eightBtn(_ sender: Any) {
        if isright{
            first += "8"
            screenLbl.text = first
        }else{
            second += "8"
            screenLbl.text = second
        }
    }
    
    @IBAction func nineBtn(_ sender: Any) {
        if isright{
            first += "9"
            screenLbl.text = first
        }else {
            second += "9"
            screenLbl.text = second
        }
    }
    
    @IBAction func qualBtn(_ sender: Any) {
        
        if !isright{
            if mark == "/"{
                screenLbl.text = "\(Double(first)! / Double(second)!)"
                first = ""
                second = ""
                isright = true
            }
            else if mark == "+"{
                screenLbl.text = "\(Double(first)! + Double(second)!)"
                first = ""
                second = ""
                isright = true
            }
            else if mark == "-"{
                screenLbl.text = "\(Double(first)! - Double(second)!)"
                first = ""
                second = ""
                isright = true
            }else if mark == "*"{
                screenLbl.text = "\(Double(first)! * Double(second)!)"
                first = ""
                second = ""
                isright = true
            }
            
        }
        
        
    }
    
    
    @IBAction func plusBtn(_ sender: Any) {
        
        isright = false
        mark = "+"
    }
    @IBAction func minusBtn(_ sender: Any) {
        isright = false
        mark = "-"
    }
    
    @IBAction func xBtn(_ sender: Any) {
        isright = false
        mark = "x"
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        isright = false
        mark = "/"
        
    }
    
    @IBAction func clearBtn(_ sender: Any) {
        first = ""
        second = ""
        isright = true
        mark = ""
        screenLbl.text = ""
    }
    
    
}

