import SwiftUI

struct ContentView: View {
    
    // Import texts from I18N
    @StateObject private var textManager = TextManager()

    var body: some View {
        ScrollView {
        VStack {
            
            // Use texts object of TextManager
            if let texts = textManager.texts {
            
            // MAIN SECTION
            Text(texts.title)
                .font(.title)
                .fontWeight(.bold)
           
            Image("Profile")
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .shadow(radius: 10)
            
                Text(texts.subtitle)
                .padding(10)
            
            // Divider
            Spacer()
                .frame(width: 340, height: 2)
                .background(Color.indigo)
                .padding(20)
            
            // ABOUT ME SECTION
            VStack {
                
                Text(texts.about_me_title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
                    .underline(true , color: .indigo)
                Text(texts.about_me_info)
                    .multilineTextAlignment(.leading)
                    .padding(.top , 10)
                Text("Experienced in technologies like:")
                    .font(.caption2)
                    .multilineTextAlignment(.leading)
                    .padding(.top , 10)
                
                // Map technologies
                ScrollView(.horizontal , showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(texts.tech_info, id: \.name) { tech in
                            TechCard(title: tech.name, imgPath: tech.imgPath)
                        }
                    }
                }
            }
            .frame(width: 300)
            .padding(20)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius:10))
            .shadow(radius: 2)
            
            // EXPERIENCE SECTION
                VStack {
                    Text(texts.experience_title)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.headline)
                        .underline(true , color: .indigo)
                    
                    ForEach(texts.experience_info, id: \.title) { job in
                        VStack
                        {
                            HStack() {
                                Image(job.imgPath)
                                    .resizable()
                                    .frame(width: 20 , height: 20)
                                Text(job.title)
                                    .font(.headline)
                                    
                            }
                            .frame(maxWidth: .infinity , alignment: .leading)
                        
                            Text("- " + job.description)
                                .font(.caption2)
                        }
                        .frame(maxWidth: .infinity , alignment: .leading)
                        .padding(.top , 20)
                  }
                    
                    
                }
                .frame(width: 300)
                .padding(.top , 40)
                
            // PROJECTS SECTION
                VStack {
                    Text(texts.projects_title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.headline)
                        .underline(true , color: .indigo)
                    
                    ForEach(texts.projects_info, id: \.name) { project in
                        HStack
                        {
                            ProjectCard(name: project.name , description: project.description ,  repoLink: project.repoLink , liveLink: project.liveLink , imgPath: project.imgPath)
                            
                        }
                        .frame(maxWidth: .infinity , alignment: .leading)
                  }
                    
                    
                }
                .frame(width: 300)
                .padding(.top , 40)
            
            // CONTACT SECTION
                VStack {
                    Text(texts.contact_title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.headline)
                        .underline(true , color: .indigo)
                    Text(texts.contact_subtitle)
                        .font(.caption2)
                    
                    // Invisible Divider
                    Spacer()
                        .frame(height: 20)
                        .background(Color.white)
                    
                    // Contact info Container
                    VStack(spacing: 15) {
                            ForEach(texts.contact_sources, id: \.name) { source in
                                HStack
                                {
                                    Image(source.imgPath)
                                        .resizable()
                                        .frame(width: 20 , height: 20)
                                    Text(source.name)
                                        .font(.caption2)
                                }
                                .frame(maxWidth: .infinity , alignment: .leading)
                          }
                            
                    }
                    .frame(maxWidth: .infinity)
                    .padding(20)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius:10))
                    .shadow(radius: 2)
                    
                }
                .frame(width: 340)
                .padding(40)
                
            // FOOTER SECTION
                HStack(spacing: 5) {
                    Text("Developed with love by")
                        .font(.caption2)
                    Link(destination: URL(string: "https://www.linkedin.com/in/franciscomeglia/")!) {
                        Text("Francisco Meglia")
                            .font(.caption2)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.indigo)
                            .underline(true, color: .indigo)
                    }
                }
            }
         }
      }
   }
}

#Preview {
    ContentView()
}
