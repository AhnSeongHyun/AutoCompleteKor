# AutoCompleteKor
<p>
<li> AutoComplete for korean keyword based on Objective-C </li>
<br/>
<li> 한국어 자음과 모음 풀어쓰기 기반의 자동완성.</li>
</p>
<br/>

![ScreenShot](http://farm8.static.flickr.com/7451/8731633560_fe86e97d2a.jpg)



<br/>
## class<br/>
<p>
<li> <b>AutoCompleteData</b> class </li><br/>
- This class have two variables, <b> word and wordIndex </b> <br/>
- word is original korean word, wordIndex is <b>a series of consonants and vowels.</b><br/>
- ex) word : 안녕하세요. wordIndex : ㅇㅏㄴㄴㅕㅇㅎㅏㅅㅔㅇㅛ.
</p>

<br/>

<p>
<li><b>AutoCompleteMng</b> Class </li> <br/>
- This class has one variable, <b>acdArr</b> is NSMutableArray for <b><u>storing AutoCompleteData objects.</u></b>    </br>
-  When this class init, TestData insert to AutoCompleteData Object and then that store into acdArr. <br/>
- When TestData insert, make wordIndex using [NSStrUtils getJasoLetter].<br/>
- After store, sort acdArr by ASC. <br/>
- ex) TestData => AutoCompleteData => acdArr in AutoCompleteMng class. 
</p>
<br/>
## Contribution
<p>
Anyone free use and modiry and more develop. 
</p>