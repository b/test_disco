%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the test_disco application.

-module(test_disco_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for test_disco.
start(_Type, _StartArgs) ->
    test_disco_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for test_disco.
stop(_State) ->
    ok.
