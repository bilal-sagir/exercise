import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myView: UIView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        myView.layer.cornerRadius = 20.0
        myView.layer.borderWidth = 10.0
        myView.layer.borderColor = UIColor.gray.cgColor
        
        let subLayer = CALayer ()
        subLayer.frame = myView.bounds.insetBy(dx: 40, dy: 40)
        subLayer.backgroundColor = UIColor.red.cgColor
        subLayer.cornerRadius = 10.0
        subLayer.shadowColor = UIColor.darkGray.cgColor
        subLayer.shadowOffset = CGSize(width: 5, height: 5)
        subLayer.shadowOpacity = 0.9
        
        myView.layer.addSublayer(subLayer)
    }


}

