# テーブル設計

## users テーブル

| Column                 | Type       |  Options                       |
| ---------------------- | ---------- | ------------------------------ |
| nickname               | string     | null: false                    |
| email                  | string     | null: false                    |
| password               | string     | null: false                    |
| family_name_full_width | string     | null: false                    |
| first_name_full_width  | string     | null: false                    |
| family_name_kana_input | string     | null: false                    |
| first_name_kana_input  | string     | null: false                    |
| year_of_birthday       | integer    | null: false                    |
| month_of_birthday      | integer    | null: false                    |
| date_of_birthday       | integer    | null: false                    |

### Association
- has_many   :items
- has_many   :purchase
- has_one    :address

## items テーブル

| Column                    | Type       |  Options                       |
| ------------------------- | ---------- | ------------------------------ |
| exhibition_image          | blob       | null: false                    |
| product_name              | text       | null: false                    |
| product_explanation       | text       | null: false                    |
| category                  | string     | null: false                    |
| product_status            | string     | null: false                    |
| price                     | integer    | null: false                    |
| exhibitor                 | string     | null: false                    |
| shopping_origin           | string     | null: false                    |
| bearer_of_shopping_charge | string     | null: false                    |
| days_until_delivery       | string     | null: false                    |
| user                      | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many   :purchase
- has_many   :address

## purchase テーブル

| Column                    | Type       |  Options                       |
| ------------------------- | ---------- | ------------------------------ |
| buyer                     | string     | null: false                    |
| phone_number              | integer    | null: false                    |
| user                      | references | null: false, foreign_key: true |
| items                     | references | null: false, foreign_key: true |

## Association
- belongs_to :user
- belongs_to :items
- has_one    :address

## address テーブル

| Column                    | Type       |  Options                       |
| ------------------------- | ---------- | ------------------------------ |
| postal_code               | integer    | null: false                    |
| prefectures               | string     | null: false                    |
| city                      | string     | null: false                    |
| house_number              | string     | null: false                    |
| building_name             | string     | null: true                     |
| user                      | references | null: false, foreign_key: true |
| items                     | references | null: false, foreign_key: true |
| purchase                  | references | null: false, foreign_key: true |

## Association
- belongs_to :user
- belongs_to :items
- has_one    :purchase