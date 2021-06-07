<h3>:rice_ball:アプリ名:rice_ball:<BR></h3>
GOHAN<BR>
  <h3>・概要<BR></h3>
レシピ投稿アプリ、画像を貼り付けて写真投稿をすることができます。<BR>
 
みんなにシェアもできる自分専用料理のメモアプリを作成中です<br>


![295127f66342a9f92815ed8071cb661a](https://user-images.githubusercontent.com/76440720/120204086-62cbb400-c263-11eb-82fa-2961200efa45.jpeg)

<h3>・デモ</h3><br>
	    
<br>
<h3>・本番環境</h3><br>
URL:<br>https://gohan-app.herokuapp.com/<br>
<br>
アドレス：test@gmail.com<br>
PASS:test123 <br>
					

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


