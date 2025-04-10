
import UIKit
import Nuke
class DetailViewController: UIViewController {
    

    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var image: UIImageView!
    
    var post: Post!
    override func viewDidLoad() {
        super.viewDidLoad()
        caption.text = post.caption.trimHTMLTags()
        if let imageURL = post.photos.first?.originalSize.url {
            let urlRequest = URLRequest(url: imageURL)

            // Load the image using Nuke and assign it to the UIImageView
            Nuke.loadImage(with: urlRequest, into: image)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
