

# ePHP #

Copyright (c) 2013-2015 Altenwald Solutions, S.L.

__Authors:__ "Manuel Rubio" ([`manuel@altenwald.com`](mailto:manuel@altenwald.com)).


[![Build Status](https://api.travis-ci.org/altenwald/ephp.png?branch=master)](https://travis-ci.org/altenwald/ephp)
[![Coverage Status](https://coveralls.io/repos/altenwald/ephp/badge.png)](https://coveralls.io/r/altenwald/ephp)

PHP Interpreter pure 100% Erlang. This interpreter was made for enhance and give flexibility to projects that requires an interface for plugins or addons without new compilations.

In the same way, you can use for server PHP pages in an easy way.

The port is not 100% complete, please refer to [compatibility table](http://github.com/altenwald/ephp/blob/master/doc/COMPATIBILITY.md).


### <a name="Requirements">Requirements</a> ###

ePHP requires to be run over a Erlang/OTP +R16, but not all the versions are full compatible or recommended. See the list:

- R16B01 **OK**
- R16B02 **OK**
- R16B03 **OK**
- R16B03-1 **OK**
- 17.0 **OK**
- 17.1 **OK**
- 17.2 **untested**: is not available in Travis-CI
- 17.3 **NO**: fail in SSL notification to coveralls, maybe SSL prone to fail.
- 17.4 **OK**
- 17.5 **untested**: is not available in Travis-CI
- 18.0 **untested**: is not available in Travis-CI


### <a name="Getting_Started">Getting Started</a> ###

A simple way to use, is include in your project `rebar.config` the following dependency line:

```erlang
    {ephp, ".*", {git, "git://github.com/altenwald/ephp.git", master}}
```

And use the following code in your project:

```erlang
{ok, Ctx} = ephp:context_new(),
PHP = "<? $a = 5 * 23; ?>Result for $a = <?=$a?>",
{ok, Text} = ephp:eval(Ctx, PHP).
```

The result stored in `Text` should be:

```
Result for $a = 115
```


### <a name="Built-in_Libs">Built-in Libs</a> ###

PHP has a lot of built-in libraries. This interpreter has a little implementation of them. You can see the functions in the [compatibility table](http://github.com/altenwald/ephp/blob/master/doc/COMPATIBILITY.md).

You can add your own functions specifying the PHP name, and the module and function, as follow:

```erlang
ephp_context:register_func(Ctx, <<"time">>, ephp_func_date, time).
```



## Modules ##


<table width="100%" border="0" summary="list of modules">
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp.md" class="module">ephp</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_class.md" class="module">ephp_class</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_config.md" class="module">ephp_config</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_const.md" class="module">ephp_const</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_context.md" class="module">ephp_context</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_error.md" class="module">ephp_error</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func.md" class="module">ephp_func</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_array.md" class="module">ephp_func_array</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_control.md" class="module">ephp_func_control</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_date.md" class="module">ephp_func_date</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_file.md" class="module">ephp_func_file</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_func.md" class="module">ephp_func_func</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_info.md" class="module">ephp_func_info</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_misc.md" class="module">ephp_func_misc</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_ob.md" class="module">ephp_func_ob</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_string.md" class="module">ephp_func_string</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_func_vars.md" class="module">ephp_func_vars</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_include.md" class="module">ephp_include</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_interpr.md" class="module">ephp_interpr</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_output.md" class="module">ephp_output</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_parser.md" class="module">ephp_parser</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_shutdown.md" class="module">ephp_shutdown</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_util.md" class="module">ephp_util</a></td></tr>
<tr><td><a href="http://github.com/altenwald/ephp/blob/master/doc/ephp_vars.md" class="module">ephp_vars</a></td></tr></table>

