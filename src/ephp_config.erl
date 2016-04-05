-module(ephp_config).
-author('manuel@altenwald.com').
-compile([warnings_as_errors]).

-include("ephp.hrl").

-export([
    start_link/0,
    start_link/1,

    get/1,
    get/2,

    set/2,

    read_config/1,
    get_defaults/0
]).

-spec start_link() -> ok.

start_link() ->
    set_defaults().

-spec start_link(file_name()) -> ok.

start_link(File) ->
    % ensure the application ephp is started
    ephp:start(),
    set_defaults(),
    case read_config(File) of
        {ok, Config} ->
            [ application:set_env(ephp, K, V) || {K,V} <- Config ],
            ok;
        _ ->
            ok
    end.

-spec get(Key :: binary()) -> mixed().

get(Key) ->
    application:get_env(ephp, Key, undefined).

-spec get(Key :: binary(), Default :: mixed()) -> mixed().

get(Key, Default) ->
    application:get_env(ephp, Key, Default).

-spec set(Key :: binary(), Value :: mixed()) -> ok.

set(Key, Value) ->
    application:set_env(ephp, Key, Value),
    ok.

-spec read_config(file_name()) -> proplists:proplists().

read_config(File) ->
    case zucchini:parse_file(File) of
        {ok, Content} ->
            {ok, lists:foldl(fun({_S,C},R) ->
                R ++ C
            end, [], Content)};
        {error,enoent} ->
            {error, enoent}
    end.

-spec get_defaults() -> proplists:proplists().

get_defaults() ->
    lists:flatmap(fun(Module) ->
        Module:init_config()
    end, ?MODULES).

%% ----------------------------------------------------------------------------
%% Internal functions
%% ----------------------------------------------------------------------------

-spec set_defaults() -> ok.

set_defaults() ->
    lists:foreach(fun(Module) ->
        [ application:set_env(ephp, K, V) || {K,V} <- Module:init_config() ]
    end, ?MODULES).
