
import Foundation

struct Fruit: Identifiable, Decodable {
	var name: String
	var id = UUID()

	private enum CodingKeys: String, CodingKey {
		case name
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		name = try container.decode(String.self, forKey: .name)
	}
}
