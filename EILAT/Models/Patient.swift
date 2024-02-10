import Foundation
import SwiftData

@Model
final class Patient {
    var firstName: String
    var lastName: String
    var address: String
    @Relationship(deleteRule: .cascade) var appointments: [Appointment] = []
    
    init(firstName: String, lastName: String, address: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
    }
}
