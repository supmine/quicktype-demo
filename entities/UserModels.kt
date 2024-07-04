// To parse the JSON, install kotlin's serialization plugin and do:
//
// val json       = Json { allowStructuredMapKeys = true }
// val userModels = json.parse(UserModels.serializer(), jsonString)

package quicktype

import kotlinx.serialization.*
import kotlinx.serialization.json.*
import kotlinx.serialization.descriptors.*
import kotlinx.serialization.encoding.*

@Serializable
data class UserModels (
    val address: Address,
    val age: Long,
    val bankAccount: BankAccount,
    val createdAt: String,
    val deletedAt: String,
    val email: String,
    val name: String,
    val role: String,
    val updatedAt: String
)

@Serializable
data class Address (
    val city: String,
    val state: String,
    val street: String,
    val zip: String
)

@Serializable
data class BankAccount (
    val accountNumber: String,
    val balance: Double,
    val currency: String
)
