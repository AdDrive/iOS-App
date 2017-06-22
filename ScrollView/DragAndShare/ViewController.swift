import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.white
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1000)
        
        
        view.addSubview(scrollView)
        
        
        scrollView.addSubview(inputText)
        inputText.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 50).isActive = true
        inputText.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 50).isActive = true
        inputText.widthAnchor.constraint(equalToConstant: scrollView.frame.width-100).isActive = true
        inputText.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        scrollView.addSubview(inputText2)
        inputText2.topAnchor.constraint(equalTo: inputText.bottomAnchor, constant: 50).isActive = true
        inputText2.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 50).isActive = true
        inputText2.widthAnchor.constraint(equalToConstant: scrollView.frame.width-100).isActive = true
        inputText2.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    let inputText: UITextField = {
        let it = UITextField()
        it.placeholder = "input"
        it.backgroundColor = .red
        it.textAlignment = .center
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()
    
    let inputText2: UITextField = {
        let it = UITextField()
        it.placeholder = "input"
        it.backgroundColor = .red
        it.textAlignment = .center
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()
    
    
}
