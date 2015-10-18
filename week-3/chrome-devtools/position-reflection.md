#3.4 Chrome Dev Tools Reflections

##Images
![3.4 Release 3-Exercise 1](/week-3/imgs/3.4-Release3-Exercise1.png)
![3.4 Release 3-Exercise 2](/week-3/imgs/3.4-Release3-Exercise2.png)
![3.4 Release 3-Exercise 3](/week-3/imgs/3.4-Release3-Exercise3.png)
![3.4 Release 3-Exercise 4](/week-3/imgs/3.4-Release3-Exercise4.png)
![3.4 Release 3-Exercise 5](/week-3/imgs/3.4-Release3-Exercise5.png)
![3.4 Release 3-Exercise 6](/week-3/imgs/3.4-Release3-Exercise6.png)
![3.4 Release 3-Exercise 7](/week-3/imgs/3.4-Release3-Exercise7.png)
![3.4 Release 3-Exercise 8](/week-3/imgs/3.4-Release3-Exercise8.png)
![3.4 Release 3-Exercise 9](/week-3/imgs/3.4-Release3-Exercise9.png)

##Reflections

__How can you use Chrome's DevTools inspector to help you format or position elements?__
- Chrome's DevTools inspector is a really useful tool to temporarily format or position elements seen on the website, without changing the original source code. By clicking the shortcut: cmd + option + c, the user can launch the inspector tool to view the Document Object Model (DOM) tree. The user can then choose to live-edit HTML tags or CSS styles and observe the live changes. This does not change the original source code of the website, and can be resetted to the original version by refreshing the page.

__How can you resize elements on the DOM using CSS?__
- You can resize elements on the DOM using CSS by directly resizing the specific HTML element, or add classes and/or IDs to add more options of resizing.

__What are the differences between Absolute, Fixed, Static, and Relative positioning? Which did you find easiest to use? Which was most difficult?__
- Absolute: The element is positioned relative to its first positioned ancestor/parent element that doesn't have position:static. If there is no such element, the element with position: absolute gets positioned relative to `<html>`
- Fixed: The element is positioned relative to the browser window
- Static: The element's default position as they appear in the document flow.
- Relative: The element is positioned relative to its default (static) position.
- I found that static, relative and fixed were most easy to use. However, I had some trouble understanding absolute positioning at the start. After some research and continued practice, I managed to gain a better understanding and feel more confident with the absolute positioning property.

__What are the differences between Margin, Border, and Padding?__
- Margin is the area around an element (outside the border).
- CSS border properties allow the user to specify the style, size, and color of an element's border
- The padding is the space between the element's border and the element's content.

__What was your impression of this challenge overall? (love, hate, and why?)__
- My pair and I found this challenge very interesting, and really tested our knowledge of the different CSS properties, especially positioning. We took longer than expected for the pairing session (almost 120mins) as some of the exercises were quite challenging. However, those more difficult problems pushed us to do extra research to really understand those concepts, and I felt that it really benefited my learning.



![alt text]