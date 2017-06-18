import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.purple
    }
    
    var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //imageView = UIImageView(image: UIImage(named: "image.png"))
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.white
        //scrollView.contentSize = imageView.bounds.size
        //scrollView.autoresizingMask = UIViewAutoresizing.FlexibleWidth  UIViewAutoresizing.FlexibleHeight
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1000)
        
        
        view.addSubview(scrollView)
        
        scrollView.addSubview(inputText)
        inputText.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
        scrollView.addSubview(redView)
        
        
        
        
        //scrollView.addSubview(btn1)
        //scrollView.addSubview(btn2)
        
        //btn1.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //btn2.frame = CGRect(x: 0, y: 900, width: 50, height: 50)
        
        
//        let items = ["Purple", "Green", "Blue"]
//        let customSC = UISegmentedControl(items: items)
//        customSC.selectedSegmentIndex = 0
//
//        customSC.layer.cornerRadius = 5.0  // Don't let background bleed
//        customSC.backgroundColor = UIColor.black
//        customSC.tintColor = UIColor.white
//
//        customSC.addTarget(self, action: #selector(changeColor), for: .valueChanged)
//        scrollView.addSubview(customSC)
//        customSC.frame = CGRect(x: 0, y: 200, width: view.frame.width, height: 100)
    }
    
    let redView: UIView = {
        let rv = UIView()
        rv.backgroundColor = .red
        return rv
    }()
    
    let inputText: UITextField = {
        let it = UITextField()
        it.placeholder = "input"
        it.backgroundColor = .red
        it.textAlignment = .center
        return it
    }()
    
    
//    @objc func changeColor(sender: UISegmentedControl) {
//        switch sender.selectedSegmentIndex {
//        case 1:
//            self.view.backgroundColor = UIColor.green
//        case 2:
//            self.view.backgroundColor = UIColor.blue
//        default:
//            self.view.backgroundColor = UIColor.purple
//        }
//    }
    
    
    
//    let btn2: UIButton = {
//        let btn = UIButton()
//        btn.backgroundColor = .red
//        return btn
//    }()
//
//
//    let btn1: UIButton = {
//        let btn = UIButton()
//        btn.backgroundColor = .red
//        return btn
//    }()
    
}
