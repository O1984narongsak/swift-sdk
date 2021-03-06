/**
 * Copyright IBM Corporation 2018
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation
import RestKit

/**
 The hierarchical 5-level taxonomy the content is categorized into.
 */
public struct CategoriesOptions: Encodable {

    /// Additional properties associated with this model.
    public var additionalProperties: [String: JSON]

    /**
     Initialize a `CategoriesOptions`.

     - returns: An initialized `CategoriesOptions`.
    */
    public init(
        additionalProperties: [String: JSON] = [:]
    )
    {
        self.additionalProperties = additionalProperties
    }

    public func encode(to encoder: Encoder) throws {
        var dynamicContainer = encoder.container(keyedBy: DynamicKeys.self)
        try dynamicContainer.encodeIfPresent(additionalProperties)
    }

}
