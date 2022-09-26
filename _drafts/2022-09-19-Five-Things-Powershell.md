---
layout: post
title:  "Five things I wish I would of learned sooner in Powershell"
date:   2022-08-31 19:03:31 +0000
categories: Powershell
---
* Snacking with Penny :baby:
* Using Parentheses 
* Customizing user profile
* Alias shortcuts to improve productivity
* Using the help file
* Using Get Member
* Creating reusable tools
* Error handling
* Passing objects through the piple Byvalue and Byproperty
* PScustomobject
* Hash Tables (Nested too?)
* Arrays
* Switch

### Using Parentheses

Using parentheses can be helpful in numerous situations, for example have you ever ran something similar to this?
```powershell
$Computers = Get-Content 'C:\Computerlist.txt'
Restart-Computer -Computername $Computers
# We can acheive the same results by using parentheses
Restart-Computer -Computername (Get-Content 'C:\Computerlist.txt')
```
By including the parentheses you are telling Powershell to load the content surrounded by them first, by the time Restart-Computer goes to read the data from the -Computername parameter all of the machine names have already been loaded.



