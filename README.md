<h3>・アプリ名<BR></h3>
GOHAN<BR>
  <h3>・概要<BR></h3>
レシピ投稿アプリ、画像を貼り付けて写真投稿をすることができます。<BR>
    <h3>・制作背景<BR></h3>
みんなにシェアもできる自分専用料理のメモアプリを作成している<br>
 
					

## users table

| Column             | Type        | Options                 |
|--------------------|-------------|-------------------------|
| nickname            | string      | null: false             | 
| email               | string      | null: false             |
| password           | string      | null: false             |

### Association

* has_many :tweets


## tweets table

| Column        | Type       | Options           |
|---------------|------------|-------------------|
| title         | string     | null: false       |
| catch_copy    | text       | null: false       |
| recipe        | text       | null: false       |
| user          | references | foreign_key: true |

### Association

- belongs_to :user


