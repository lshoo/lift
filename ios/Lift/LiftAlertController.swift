import UIKit

class LiftAlertController: UIViewController {
    var messageText: String?
    var imageNames: [String]?

    class func error(message: String, error: NSError) -> LiftAlertController {
        let ctrl = LiftAlertController(nibName: "LiftAlertController", bundle: nil)
        ctrl.messageText = message + "\n" + error.localizedDescription
        ctrl.imageNames = ["Error"]
        return ctrl
    }
    
    override func viewDidLayoutSubviews() {
        if (imageNames != nil) {
            setBackgroundImage(imageNames!)
        }
        self.message.text = messageText
    }
    
    func present(ovc: UIViewController) {
        ovc.presentViewController(self, animated: true, completion: nil)
    }
    
    @IBAction
    func close(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet
    var message: UILabel!
    
    
}