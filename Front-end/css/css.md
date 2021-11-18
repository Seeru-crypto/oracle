# CSS

If creating custom components, then it´s good to use [styled components](https://styled-components.com/)
to localize CSS

# CSS is the styling language used in HTML

use firefox for debugging css

## grid

for grid topics use .grid

.grid{
display: grid;
grid-template-colums: 1fr 500px 1 fr; defines the space used by each column
grid-template-rows: 100px 200px; defines row width
place-items: center
}

usage

<div class="grid">
<i>a</i>
<i>b</i>
<i>c</i>
</div>

## responsicve layout

to create responsive layout use min, max, calmp values

for example
article {
width: clamp(200px, 50%, 600px) min, prefferred, max

}

## variables in css

to use variables in css
:root{
--text-color: red;
}

p{
color: var(--text-color)
}

h1{
--text-color: green; # overrides

    color: var(--text-color)

}

    h1{

    color: var(--text-color)

}

## css counter

CSS has a inbuilt math and counter mechanism

:root{
counter-reset: headings1
}

h1{
counter-increment: headings1
}

h1::before{
content: counter (headings1);
}

to center items
justify-content: center;
align-items: center;
