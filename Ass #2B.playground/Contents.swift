

//  Created by fawaz mezher
// Sept-27-2018
//  This code calculates height

import UIKit


import PlaygroundSupport

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel : UILabel!
    var seconds : UILabel!
    var secondsTextField : UITextField!
    
    var calculateButton : UIButton!
    var heightLabel : UILabel!
    var perimeterLabel : UILabel!
    
    override func viewDidLoad() {
        // create the UIView
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        // create all the UIElements
        instructionLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 500, height: 50))
        instructionLabel.text = "Calculate the area and perimeter of a rectangle"
        view.addSubview(instructionLabel)
        
        seconds = UILabel(frame: CGRect(x: 100, y: 200, width: 500, height: 50))
        seconds.text = "Enter seconds"
        view.addSubview(seconds)
        
        secondsTextField = UITextField(frame: CGRect(x: 200, y: 200, width: 200, height: 50))
        secondsTextField.borderStyle = UITextBorderStyle.roundedRect
        secondsTextField.placeholder = "In cm"
        view.addSubview(secondsTextField)
        
        calculateButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        calculateButton.addTarget(self, action: #selector(calculateAreaAndPerimeter), for: UIControlEvents.touchUpInside)
        view.addSubview(calculateButton)
        
        heightLabel = UILabel(frame: CGRect(x: 100, y: 500, width: 500, height: 50))
        heightLabel.text = nil
        view.addSubview(heightLabel)
        }
    
    @objc func calculateAreaAndPerimeter() {
        // calculate the area and perimeter
        
        let seconds
