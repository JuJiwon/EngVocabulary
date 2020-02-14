
import UIKit

class ViewController: UIViewController {
    
    var arrayA: Array<Array<String>>!         //문자열 배열을 만든다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "eng 단어장"
        
        if let pathA: String = Bundle.main.path(forResource:"JiWonData", ofType: "plist") {
            if let ar = NSArray(contentsOfFile: pathA) as? Array<Array<String>> {
                self.arrayA = ar         //dicA에 dic을 넣는다
            }
        }
    }
}

