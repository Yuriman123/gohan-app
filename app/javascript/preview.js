document.addEventListener("turbolinks:load", function(){
  if ( document.getElementById('tweet_image')){
    const ImageList = document.getElementById('image-list');

    document.getElementById('tweet_image').addEventListener('change', function(e){
      // 画像が表示されている場合のみ、すでに存在している画像を削除する
      const imageContent = document.querySelector('img');
      if (imageContent){
        imageContent.remove();
      }
      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);

      // 画像を表示するためのdiv要素を生成
      const imageElement = document.createElement('div');

      // 表示する画像を生成
      const blobImage = document.createElement('img');
      blobImage.setAttribute('src', blob);

      // var targetImg = document.getElementById('image-list');
      // var orgWidth  = targetImg.width;  // 元の横幅を保存
      // var orgHeight = targetImg.height; // 元の高さを保存
      // targetImg.width = 400;  // 横幅を400pxにリサイズ
      // targetImg.height = orgHeight * (targetImg.width / orgWidth); // 高さを横幅の変化割合に合わせる

      // 生成したHTMLの要素をブラウザに表示させる
      imageElement.appendChild(blobImage);
      ImageList.appendChild(imageElement);
    });
  }
});