
## users table

| Column             | Type        | Options                 |
|--------------------|-------------|-------------------------|
| nickname            | string      | null: false             | 
| email               | string      | null: false             |
| password           | string      | null: false             |

### Association

* has_many :tweets
* has_many :comments

## tweets table

| Column        | Type       | Options           |
|---------------|------------|-------------------|
| title         | string     | null: false       |
| catch_copy    | text       | null: false       |
| recipe        | text       | null: false       |
| user          | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| text        | text       | null: false       |
| tweet       | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :tweet
- belongs_to :user