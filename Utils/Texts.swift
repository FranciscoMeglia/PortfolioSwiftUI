import Foundation

struct Texts: Codable {
    let title: String
    let subtitle: String
    let about_me_title: String
    let about_me_info: String
    let tech_info: [Tech]
    let experience_title: String
    let experience_info: [Experience]
    let projects_title: String
    let projects_info: [Project]
    let contact_title: String
    let contact_subtitle: String
    let contact_sources: [Contact]
}

struct Tech: Codable {
    let name: String
    let imgPath: String
}

struct Experience: Codable {
    let title: String
    let description: String
    let imgPath: String
}

struct Project: Codable {
    let name: String
    let description: String
    let repoLink: String
    let liveLink: String
    let imgPath: String
}

struct Contact: Codable {
    let name: String
    let imgPath: String
}
