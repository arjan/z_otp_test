-module(mod_test).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    z_core_module_sup:start_link(?MODULE).

stop(_State) ->
    ok.
