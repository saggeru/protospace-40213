# userテーブル

## Column            | ## Type  | ## Option                    |
| ------------------ | -------- | ---------------------------- |
| email              | string   | presence: true, unique: true |
| encrypted_password | string   | presence: true               |
| name               | string   | presence: true               |
| profile            | text     | presence: true               |
| occupation         | text     | presence: true               |
| position           | text     | presence: true               |

## Association
- has_many :comments
- has_many :prototypes



# prototypeテーブル

## Column    | ## Type     | ## Option                         |
| ---------- | ----------- | --------------------------------- |
| title      | string      | presence: true                    |
| catch_copy | text        | presence: true                    |
| concept    | text        | presence: true                    |
| user       | references  | presence: true, foreign_key: true |

## Association
- has_many :comments
- belongs_to :user



# commentテーブル

## Column   | ## Type    | ## Option                         |
| --------- | ---------- | --------------------------------- |
| content   | text       | presence: true                    |
| prototype | references | presence: true, foreign_key: true |
| user      | references | presence: true, foreign_key: true |

## Association
- belongs_to :user
- belongs_to :prototype