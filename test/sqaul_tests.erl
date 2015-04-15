-module(sqaul_tests).

-include_lib("eunit/include/eunit.hrl").

-define(testGenSql(Expect, Method, Given),
	?_assertEqual(Expect, apply(sqaul, Method, Given)) 
).

test_test_() ->
	[
		{"Simple select", ?testGenSql(<<"select * from table">>, insert, [table])}
	].
