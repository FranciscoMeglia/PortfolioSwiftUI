import SwiftUI

struct TechCard: View {
    let title: String
    let imgPath: String

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.white)
            Image(imgPath)
                .resizable()
                .frame(width: 40 ,height: 40)
        }
        .frame(width: 100 , height: 80)
        .padding()
        .background(Color.indigo)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 5)
    }
}
