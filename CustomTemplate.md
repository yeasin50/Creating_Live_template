

### ``ssbar`` SnackBar 
````
ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
         content: Text("$message$"))
       );
$EMD$
````

### ``rcbtn`` Rounded Container Button
````
GestureDetector(
      onTap: $onPress$,
      child: Container(
        alignment: Alignment.center,
        width: $width$,
        height: Theme.of(context).buttonTheme.height,
        decoration: BoxDecoration(
          color: $background$,
          borderRadius: BorderRadius.circular($15$),
        ),
        child: Text(
         "$label$",
          style: TextStyle(
            fontSize: Theme.of(context).buttonTheme.height *.6,
            color: $textColor$,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ) $END$
````

## Statements

