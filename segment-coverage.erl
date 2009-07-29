-module(coverage).
-export([sort_cover/1]).
-import(lists,[sort/2,foldl/3]).


sort_cover(A)	 		 ->  lists:foldl(
								fun([E1,E2],[[H1,H2]|T]) -> 
									if
									 	((E1 >= H1) and (E1 =< H2)) or ((E2 >= H1) and (E2 =< H2)) -> [[
											if 
												E1 >= H1 -> H1;
												true	 -> E1
											end,
											if
												E2 >= H2 -> E2;
												true	 -> H2
											end
										]|T];
										
										true	->	[[E1,E2]|[[H1,H2]] ++ T]										
									end
								end, [[-1,-1]],
 								lists:sort( fun([K,I],[L,M]) -> (K < L) or ((K >= L) and (I =< M)) end, A)).