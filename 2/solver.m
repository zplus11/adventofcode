(* ::Package:: *)

input=Import[NotebookDirectory[]<>"\\input.txt"];
reports = ToExpression[StringSplit[#," "]&/@StringSplit[input,"\n"]];
safe[rep_]:=And@@{SubsetQ[{1,2,3},Abs@#],Length[Union[Sign[#]]]==1}&@Differences[rep];
first=Evaluate[Select[reports,safe[#]&]];
Print[Length@first] (*314*)
Print[Length@Select[Complement[reports,first],Or@@Table[safe[Delete[#,i]],{i,Length@#}]&]+Length@first] (*373*)



