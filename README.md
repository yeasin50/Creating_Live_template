# Create LiveTemplate

------

## Local LiveTemplate
Live-template is a time saving development process. 
I'm going to show you how you can create your won custom live templates.

if you are on android-studio or IntelliJ , follow along   
goto top left corner

``  File > settings > Editors > Live Templates`` 


![Setting Icon](screenShots/s1.png)  

then

![Live template loc](screenShots/s2.png)

#### Let's create our group from left corner and give a name 

![](screenShots/s3.png)

#### click on our group and then ``+`` sing again now choose ``live template``

im creating snackBar here,
 - ``Abbreviation`` short form of this code that brings the `Template text`
 - ``Description`` details of the template
 - ``$END$`` is a reserved keyword where our cursor will end. another one is `Statement` & used for wrap with snippets. 
 - bottom ``Statement`` we define the places.

   - ![](screenShots/statement.png)

 - ``Shorten FQ names`` used for shorting libraries name(this example doesn't count), check on Timer template
 

-  a variable name must be start & end with  ``$`` like `$variable$`, 
    
 - ``Edit variables`` control variable names
   
    - ![](screenShots/variable.png)
    
### our ``ssbar`` is complete, save by clicking ``OK`` 
![ssbar](screenShots/ssnackBar.png)

#### we can find it here 

![](screenShots/s4.png)


simply type ``ssbar``, it will show our custom live template 
![](screenShots/ssEditor.png)

press ``enter/tab``

![](screenShots/result.png)

if we have more variables press ``tab`` to move next variable. 

### check [CustomTemplate.md](CustomTemplate.md) 



### Sharing this ssbar Live-template to the  Flutter-intelliJ community

Navigate to [``flutter-intellij/resources/liveTemplates/[flutter_miscellaneous.xml``](https://github.com/flutter/flutter-intellij/blob/master/resources/liveTemplates/flutter_miscellaneous.xml) file. 


We can see their live templates.  The group named there is ``Flutter``, Template named ``stless``

```<templateSet group="Flutter">
<template name="stless" value="class $NAME$ extends StatelessWidget {&#10;  @override&#10;  Widget build(BuildContext context) {&#10;    return Container($END$);&#10;  }&#10;}&#10;" description="New Stateless widget" toReformat="false" toShortenFQNames="true">
<variable name="NAME" expression="" defaultValue="" alwaysStopAt="true" />
<context>
<option name="DART_TOPLEVEL" value="true" />
</context>
</template>
```


### Let's add our ``ssbar`` inside Flutter group
````<template name="ssbar" value="ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$message$")));$EMD$" description="Create Text SnackBar widget" toReformat="true" toShortenFQNames="true">
<variable name="message" expression="" defaultValue="message" alwaysStopAt="true" />
<context>
<option name="DART_STATEMENT" value="true" />
</context>
</template>
````

We are using  ``toReformat="true" ``, we don't have to give spaces and line numbers like restless .

------------


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
