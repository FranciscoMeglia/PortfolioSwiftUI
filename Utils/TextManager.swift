import SwiftUI

class TextManager: ObservableObject {
    @Published var texts: Texts?

    init(filename: String = "i18n") {
        loadJSON(filename: filename)
    }

    func loadJSON(filename: String) {
        if let url = Bundle.main.url(forResource: filename, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoded = try JSONDecoder().decode(Texts.self, from: data)
                self.texts = decoded
            } catch {
                print("Error loading JSON: \(error)")
            }
        } else {
            print("JSON file not found")
        }
    }
}
