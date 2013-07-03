-module(z_core_site_manager).

-export(
   [
    startup/1,
    shutdown/1,
    register/2
   ]).


%% @doc Handle the startup of the site.
startup(Site) ->
    z_core_site_dummy_sup:start_link(Site).

shutdown(Site) ->
    lager:info("Site shutdown: ~p", [Site]),
    ok.


%% @doc Register the site with the site manager. This module is meant
%% to be called from the site supervisor process.
register(Site, Pid) ->
    lager:warning("self(): ~p ~p", [Site, Pid]),
    ok.
