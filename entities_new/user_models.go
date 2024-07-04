// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse and unparse this JSON data, add this code to your project and do:
//
//    userModels, err := UnmarshalUserModels(bytes)
//    bytes, err = userModels.Marshal()

package UserModels

import "time"

import "encoding/json"

func UnmarshalUserModels(data []byte) (UserModels, error) {
	var r UserModels
	err := json.Unmarshal(data, &r)
	return r, err
}

func (r *UserModels) Marshal() ([]byte, error) {
	return json.Marshal(r)
}

type UserModels struct {
	Address     Address     `json:"address"`
	Age         int64       `json:"age"`
	BankAccount BankAccount `json:"bankAccount"`
	CreatedAt   *time.Time  `json:"createdAt,omitempty"`
	DeletedAt   *time.Time  `json:"deletedAt,omitempty"`
	Email       string      `json:"email"`
	Name        string      `json:"name"`
	Role        string      `json:"role"`
	UpdatedAt   *time.Time  `json:"updatedAt,omitempty"`
}

type Address struct {
	City   string `json:"city"`
	State  string `json:"state"`
	Street string `json:"street"`
	Zip    string `json:"zip"`
}

type BankAccount struct {
	AccountNumber string  `json:"accountNumber"`
	Balance       float64 `json:"balance"`
	Currency      string  `json:"currency"`
}
