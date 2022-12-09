//
//  ViewController.swift
//  countTaps
//
//  Created by Валерия Будник on 09.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    var counter = 0
    var date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.backgroundColor = .yellow
        self.view.backgroundColor = #colorLiteral(red: 0, green: 0.679944396, blue: 0.9359450936, alpha: 1)
        date = Date()
    }
    @IBAction func countOfClicks(_ sender: Any) {
    
        counter = counter + 1
                if counter == 10 {
                    let newDate = Date()
                    let timeInterval = newDate.timeIntervalSinceReferenceDate - date.timeIntervalSinceReferenceDate
                    let alert = UIAlertController(title: "", message: "Your result \(timeInterval) seconds", preferredStyle: UIAlertController.Style.alert)
                    
                    alert.addAction(UIAlertAction(title: "Exit", style: UIAlertAction.Style.destructive, handler: {
                        (_) in exit(0)
                    }))

                    self.present(alert, animated: true, completion: nil)
                } 
//
   }
//
    
    @IBAction func moveButton(_ button: UIButton) {
        
        let buttonWidth = button.frame.width
        let buttonHeight = button.frame.height

        let viewWidth = button.superview!.bounds.width
        let viewHeight = button.superview!.bounds.height

        let xwidth = viewWidth - buttonWidth
        let yheight = viewHeight - buttonHeight

        let xoffset = CGFloat(arc4random_uniform(UInt32(xwidth)))
        let yoffset = CGFloat(arc4random_uniform(UInt32(yheight)))
    
        button.center.x = xoffset + buttonWidth / 2
        button.center.y = yoffset + buttonHeight / 2
    }
}

