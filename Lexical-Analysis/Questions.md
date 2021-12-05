# Questions For Lexical Analysis Phase
This is not compulsory assignment. All questions are not compulsory. Try as many questions as possible and you may even submit the incomplete assignment also. 
Its just for fun and deeper understanding. <br></br>

For submission : 
- Create a sub-folder inside Lexical-Analysis folder with your_name as the name of the folder. 
- The folder should contain two files :
  - file containing answers to questions 1, 2 and 3. Submit in any format u prefer doc/pdf/.md anything is fine..
  - file containing any flex code. 

<br></br>

### Q1. Write 5 regular expressions for your preferred language. 
Eg : for language Pascal : assume, letter -> A | B |....| Z | a | b |...| z , digit -> 0 | 1 | 2 |...| 9 then,
- Identifier : id -> letter ( letter | digit ) *
- exponents : expo -> ( E ( + | - ) ? digit+ ) ? 

<br></br>

### Q2. Find the NFA and/or DFA notations of two or more of above mentioned regular expressions
Eg : for the expression ( a | b )*ab the DFA is <br></br>
![DFA](https://user-images.githubusercontent.com/60187935/144737458-c897e006-b4d9-4ca2-8aa9-d3f8a42fb4f8.png)

<br></br>

### Q3. Find the minimum number of states for the below given DFA
![DFA2](https://user-images.githubusercontent.com/60187935/144737793-fe151cc4-a19e-493d-9186-b4d29c0a619b.png)

<br></br>

### Q4. Submit any code written using flex tool. 
Eg : It could be regular expressions to identfy tokens of C....
