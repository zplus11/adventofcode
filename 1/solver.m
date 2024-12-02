(* ::Package:: *)

input=Import[NotebookDirectory[]<>"\\input.txt"];
tuples=StringSplit[#,"   "]&/@StringSplit[input,"\n"];
{l,r}=ToExpression@tuples//Transpose;
Print[Total@Abs[r-l]] (*2066446*)
Print[Total[# Count[r,#]&/@l]] (*24931009*)



