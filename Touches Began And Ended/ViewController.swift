import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var red: UIView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let longPress = UILongPressGestureRecognizer(target: self,
                                                     action: #selector(selectorA))
        red.addGestureRecognizer(longPress)
    }
    
    @objc
    func selectorA ()
    {
        print("Long Pressed")
    }

}

