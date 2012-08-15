%% @author author <author@example.com>
%% @copyright YYYY author.
%% @doc Example webmachine_resource.

-module(test_disco_resource).
-export([init/1, allowed_methods/2, delete_resource/2, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

allowed_methods(ReqData, State) -> {['GET', 'DELETE'], ReqData, State}.

delete_resource(ReqData, State) -> {true, ReqData, State}.

to_html(ReqData, State) ->
    {"<html><body>Hello, new world</body></html>", ReqData, State}.
