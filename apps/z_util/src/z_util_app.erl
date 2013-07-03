-module(z_util_app).

-export(
   [
    start/1
   ]).

-spec start(atom()) -> ok | {error, term()}.

start([]) ->
    ok;
start([App|Rest]) ->
    start(App),
    start(Rest);

start(App) ->
    case application:start(App) of
        {error, {not_started, Dep}} ->
            ok = start(Dep),
            ok = start(App);
        ok ->
            ok
    end.
    
