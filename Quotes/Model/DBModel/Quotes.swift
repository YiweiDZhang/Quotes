/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Quotes : Codable {
	let quote : String?
	let length : String?
	let author : String?
	let tags : [String]?
	let category : String?
	let language : String?
	let date : String?
	let permalink : String?
	let id : String?
	let background : String?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case quote = "quote"
		case length = "length"
		case author = "author"
		case tags = "tags"
		case category = "category"
		case language = "language"
		case date = "date"
		case permalink = "permalink"
		case id = "id"
		case background = "background"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		quote = try values.decodeIfPresent(String.self, forKey: .quote)
		length = try values.decodeIfPresent(String.self, forKey: .length)
		author = try values.decodeIfPresent(String.self, forKey: .author)
		tags = try values.decodeIfPresent([String].self, forKey: .tags)
		category = try values.decodeIfPresent(String.self, forKey: .category)
		language = try values.decodeIfPresent(String.self, forKey: .language)
		date = try values.decodeIfPresent(String.self, forKey: .date)
		permalink = try values.decodeIfPresent(String.self, forKey: .permalink)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		background = try values.decodeIfPresent(String.self, forKey: .background)
		title = try values.decodeIfPresent(String.self, forKey: .title)
	}

}