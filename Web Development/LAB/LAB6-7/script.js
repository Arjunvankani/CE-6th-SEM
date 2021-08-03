var str = prompt("Enter the string: "); 

str1 = str.split(" ").join("").toLowerCase(); 
var new_str = ""; 
for (let i in str1)
{ 
	new_str += str1[str.length-i-1] 
} 
if (str1 == new_str)
{ 
	alert(str + "  is Palindrome!"); 
} 
else 
{ 
	alert(str + " is not Palindrome!") 
}