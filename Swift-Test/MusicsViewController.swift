final class MusicsViewController: UIViewController {
  private var musics: [Music]?

  override func viewDidLoad() {
    super.viewDidLoad()
    
    NetworkManager().fetchMusics { [weak self] (musics) in
      self?.musics = musics
      DispatchQueue.main.async {
        self?.tableView.reloadData()
      }
    }
  }
  

}