(* ::Package:: *)

input=Import[NotebookDirectory[]<>"\\input.txt"];
tuples=StringSplit[#,"   "]&/@StringSplit[input,"\n"];
{l,r}=ToExpression@tuples//Transpose;
Print[Total@Abs[r-l]] (*2066446*)
count={#,Count[r,#]}&/@l;
Print[Total[#[[1]]#[[2]]&/@count]] (*24931009*)
