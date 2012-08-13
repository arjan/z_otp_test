-module(site_hello_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    z_core_site_manager:startup(site_hello).

stop(_State) ->
    z_core_site_manager:shutdown(site_hello).
