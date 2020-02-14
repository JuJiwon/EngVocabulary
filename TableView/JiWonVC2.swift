
import UIKit

class JiWonVC2: UIViewController {
    
    public var arrayA: Array<Array<String>>!
    var a = 0
    var btnA: UIButton!
    var btnB: UIButton!
    var labelA: UILabel!
    var labelB: UILabel!
    var labelC: UILabel!
    var labelD: UILabel!
    var count:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.title = "\(arrayA[a][0])"
        let width = self.view.bounds.width
        let height = self.view.bounds.height
        self.labelA = UILabel(frame: CGRect(x: 20, y: 100, width: 300, height: 50))
        self.labelB = UILabel(frame: CGRect(x: 20, y: 150, width: 300, height: 50))
        self.labelC = UILabel(frame: CGRect(x: 20, y: 250, width: 300, height: 50))
        self.labelD = UILabel(frame: CGRect(x: 20, y: 300, width: 300, height: 50))
        self.view.addSubview(self.labelA)
        self.view.addSubview(self.labelB)
        self.view.addSubview(self.labelC)
        self.view.addSubview(self.labelD)
        print(width)
        print(height)
        self.labelA.font = UIFont.systemFont(ofSize: self.view.bounds.width/20)
        self.labelA.numberOfLines = 2
        self.labelB.font = UIFont.systemFont(ofSize: self.view.bounds.width/20)
        self.labelB.numberOfLines = 2
        self.labelC.font = UIFont.systemFont(ofSize: self.view.bounds.width/20)
        self.labelC.numberOfLines = 2
        self.labelD.font = UIFont.systemFont(ofSize: self.view.bounds.width/20)
        self.labelD.numberOfLines = 2
        
        self.labelA.text = "Press --->"
        self.labelB.text = ""
        self.labelC.text = ""
        self.labelD.text = ""
        
        btnA = UIButton(type: UIButtonType.system)
        btnA.setTitle("다음", for: .normal)
        btnA.frame = CGRect(x:width-100, y: 100, width: 60, height: 50)
        btnA.addTarget(self, action: #selector(btnPressed(btn:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(self.btnA)
        
    }
    
    @objc func btnPressed(btn:UIButton) {
        if count == 0 && a != arrayA.count {
            self.title = "\(arrayA[a][0])"
            self.labelA.text = "단어:\(arrayA[a][0])"
            self.labelB.text = ""
            self.labelC.text = ""
            self.labelD.text = ""
            count = 1
        } else if count == 1 && a != arrayA.count {
            self.labelB.text = "뜻:\(arrayA[a][1])"
            self.labelC.text = "예문:\(arrayA[a][2])"
            count = 2
        } else if count == 2 && a != arrayA.count {
            self.labelD.text = "ㄴ>해석:\(arrayA[a][3])"
            a = a+1
            count = 0
        } else if a == arrayA.count {
            self.labelA.text = "END"
            self.labelB.text = "END"
            self.labelC.text = "END"
            self.labelD.text = "END"
        }
    }
}
