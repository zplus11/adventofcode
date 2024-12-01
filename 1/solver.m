(*::Package::*)

input=Import[FileNameJoin[{Directory[],"input.txt"}],"Text"];
tuples=StringSplit[#,"   "]&/@StringSplit[input,"\n"];
{l1,l2}=Transpose[ToExpression[tuples]];
Print[Total[Abs[Sort[l1]-Sort[l2]]]] (*2066446*)
count={#,Count[l2,#]}&/@l1;
Print[Total[#[[1]]#[[2]]&/@count]] (*24931009*)
