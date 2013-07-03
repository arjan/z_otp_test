-module(z_core_site_dummy_sup).

-behaviour(supervisor).

%% API
-export([start_link/1]).

%% Supervisor callbacks
-export([init/1]).

%% ===================================================================
%% API functions
%% ===================================================================

start_link(Site) ->
    supervisor:start_link(?MODULE, [Site]).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init([Site]) ->
    z_core_site_manager:register(Site, self()),
    {ok, { {one_for_one, 5, 10}, []} }.

