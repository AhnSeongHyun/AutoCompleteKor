# AutoCompleteKor

- AutoComplete for korean keyword based on Objective-C
- 한국어 자음과 모음 풀어쓰기 기반의 자동완성.
<br/>

	![ScreenShot](http://farm4.staticflickr.com/3678/11956613684_7fdf0be23f.jpg)


<br/>
## Class

- <b>AutoCompleteData</b> class
	- This class have two variables, <b> word and wordIndex </b> <br/>
	- word is original korean word, wordIndex is <b>a series of consonants and vowels.</b><br/>
	- ex) word : 안녕하세요. wordIndex : ㅇㅏㄴㄴㅕㅇㅎㅏㅅㅔㅇㅛ.

<br/>


- <b>AutoCompleteMng</b> Class
	- This class has one variable, <b>acdArr</b> is NSMutableArray for <b>storing AutoCompleteData objects.</b>
	- When this class init, TestData insert to AutoCompleteData Object and then that store into acdArr. 
	- When TestData insert, make wordIndex using [NSStrUtils getJasoLetter].
	- After store, sort acdArr by ASC. <br/>
	- ex) TestData => AutoCompleteData => acdArr in AutoCompleteMng class. 

<br/>

## Contribution
Anyone free use and modiry and more develop. 

<br/>
## License


Released under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.