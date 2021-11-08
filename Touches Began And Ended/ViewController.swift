import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var red: UIView!
    
    override func touchesEnded(_ touches: Set<UITouch>,
                               with event: UIEvent?)
    {
        UIView.animate(withDuration: 1.0)
        {
            self.red.alpha = 0.0
            self.red.center = CGPoint(x: self.red.center.x + 100,
                                      y: self.red.center.y)
            
        } completion: { (res) in
            UIView.animate(withDuration: 1.0)
            {
                self.red.alpha = 1.0
                self.red.center = CGPoint(x: self.red.center.x - 100,
                                          y: self.red.center.y)
            }
        }
    }
}

