import SwiftUI

struct ProjectCard: View {
    let name: String
    let description: String
    let repoLink: String
    let liveLink: String
    let imgPath: String

    var body: some View {
        
        VStack {
            Image(imgPath)
                .resizable()
                .frame(width: 300 , height: 200)
                .scaledToFill()
                .clipped()
                .padding(.bottom , 10)
            Text(name)
                .frame(maxWidth: .infinity , alignment: .leading)
                .font(.headline)
                .foregroundStyle(Color.indigo)
                .padding(.top , 10)
            Text(description)
                .frame(maxWidth: .infinity , alignment: .leading)
                .font(.caption2)
            HStack(spacing: 10) {
                Link(destination: URL(string: repoLink)!) {
                        Text("Repository")
                            .padding(10)
                            .font(.caption2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .background(Color.indigo)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }

                    Link(destination: URL(string: liveLink)!) {
                        Text("Live Preview")
                            .padding(10)
                            .font(.caption2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .background(Color.indigo)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
            }
            .frame(maxWidth: .infinity , alignment: .leading)
            .padding([.top , .bottom] , 10)
                
        }
        .frame(maxWidth: .infinity)
        .padding(20)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius:10))
        .shadow(radius: 2)
       
    }
}
