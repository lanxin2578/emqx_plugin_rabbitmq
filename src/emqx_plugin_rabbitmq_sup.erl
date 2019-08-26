-module(emqx_plugin_rabbitmq_sup).

-behaviour(supervisor).

-export([start_link/0]).

-export([init/1]).

-include("emqx_plugin_rabbitmq.hrl").

start_link() ->
  supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
	ok.
  %% application:set_env(amqp_client, prefer_ipv6, false),
  %% {ok, PoolOpts} = application:get_env(?APP, server),
  %% PoolSpec = ecpool:pool_spec(?APP, ?APP, emqx_plugin_rabbitmq_cli, PoolOpts),
  %% {ok, {{one_for_one, 10, 100}, [PoolSpec]}}.

