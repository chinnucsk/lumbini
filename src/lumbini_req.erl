-module(lumbini_req).
-author("geekbull.in@geekbull.com").

-export([simple/0, simple_with_headers/0]).

simple() ->
	{ok, "200", _ , Response} = ibrowse:send_req("http://localhost:5544", [], get),
	Response
.

simple_with_headers() ->
	{ok, "200", _ , Response} = ibrowse:send_req("http://localhost:5544", [{"x-openrtb-version", "2.1"}], get),
	Response
.