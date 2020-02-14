
import UIKit

class JiWonVC: UIViewController {

    public var arrayA: Array<Array<String>>!
    public var a = 0
    var labelA: UILabel!
    var labelB: UILabel!
    var labelC: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.title = "\(arrayA[a][0])"
        
        self.labelA = UILabel(frame: CGRect(x: 20, y: 100, width: 300, height: 25))
        self.labelB = UILabel(frame: CGRect(x: 20, y: 150, width: 300, height: 25))
        self.labelC = UILabel(frame: CGRect(x: 20, y: 200, width: 300, height: 25))
        self.labelA.text = "뜻:\(arrayA[a][1])"
        self.labelB.text = "예문:\(arrayA[a][2])"
        self.labelC.text = "ㄴ>해석:\(arrayA[a][3])"
        
        self.view.addSubview(self.labelA)
        self.view.addSubview(self.labelB)
        self.view.addSubview(self.labelC)
        
    }
    
}

/*
 "뜻:\(arrayA[a][1])"
 "예문:\(arrayA[a][2])"
 "ㄴ>해석:\(arrayA[a][3])"
 */
