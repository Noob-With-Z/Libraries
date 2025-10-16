# Orion Library

![image](https://github.com/Noob-With-Z/ImagesYeahYeahhhhhhh/blob/960bbe76a878313ef9e1bb6d7476fd26230d4ab9/Colorfulllll.png)

With beautiful and colorful themes, Orion Library! (modded by NoobZ, of course)

Sadly, original Orion Library was deleted.
But i take it back a little bit more customizable!

With new 6 different themes and a new font, here is back Orion Library!
But its not only boring themees(if you think is it). You can create your own custom theme! (i just forgot how to save it so for now it will not have a save theme system, good luck)

Anyways... is everything customizable!
Text color, background, strokes! Anything you want to turn your scripting experience more beautiful and cooler with better visuals!

# New Feature(s)

Well... i was thinking to do a fully work, so i do.
I have created a new function that you can use to hide your profile inside the Library Hub!
by using *OrionLib:StreamMode(true)*, you can hide your infos! (DisplayName & Profile Headshot)
You can turn if off by changing the *true* with *false*.

Disclaimer: You need to execute the function Stream Mode after setup the Window, before it, it'll not working.

Like:
[[
local Window = OrionLib:MakeWindow({
	blah blah blah settings
})

OrionLib:StreamMode(true) <----- Here, after the MakeWindow
]]

## Testing

You can easily and quick testing all this features by executing this loadstring:
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/Noob-With-Z/Libraries/refs/heads/main/Orion%20Library/Test.lua"))()
```
