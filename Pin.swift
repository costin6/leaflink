import Foundation
import CoreLocation
struct Pin: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}
