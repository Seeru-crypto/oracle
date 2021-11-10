# Markdown cheats

## Desc
Markdown is a lightweight markup language that you can use to add formatting elements to plaintext text documents

Using Markdown is different than using a WYSIWYG editor. In an application like Microsoft Word, you click buttons to format words and phrases, and the changes are visible immediately. Markdown isn’t like that. When you create a Markdown-formatted file, you add Markdown syntax to the text to indicate which words and phrases should look different.


***
## Direct text edit


**Bold text** 

<ins>Underlined text </ins>

~~Strikethrough text~~

*Italic text*


- Bullet 1
  - sub bullet
- Bullet 2

1. Item
   1. sub item
2. Item


1. Item
    - Mixed

### header 3
#### header 4


[ ] Todo item 1

[x] done item
***
## Defining  code

> Quoted text.
> > Quoted quote.


> * Quoted
> * List
    

    Begin each line with
    two spaces or more to
    make text look
    e x a c t l y
    like  you  type i
    t.


`This is 1 line code`


```
This is a 
piece of code 
in a block
```

`This is css code`
```css
#button {
    border: none;
}
```
***
## dynamic functions
This is a link which is referenced below [a link][1] and another [link][2].

if you want to link to another markdown file [link to other file](ReadME.md)

[1]: http://example.com/ "Title"
[2]: http://example.org/ "Title"


This is a [link](http://example.com "Title"), which is defined locally

<https://www.markdownguide.org>


| Syntax | Description |
| --- | --- |
| Header | Title |
| Paragraph | Text |


```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

## It is possible to use pure HTML components in markdown
<p style="font-size: 10px">This is a small tekst</p>

<p style="color: red">This is red text</p>


![The San Juan Mountains are beautiful!](https://mdg.imgix.net/assets/images/san-juan-mountains.jpg?auto=format&fit=clip&q=40&w=1080 "San Juan Mountains")
