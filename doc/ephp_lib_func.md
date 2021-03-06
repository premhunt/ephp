

# Module ephp_lib_func #
* [Function Index](#index)
* [Function Details](#functions)

__Behaviours:__ [`ephp_lib`](ephp_lib.md).

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#call_user_func-3">call_user_func/3</a></td><td></td></tr><tr><td valign="top"><a href="#call_user_func_array-4">call_user_func_array/4</a></td><td></td></tr><tr><td valign="top"><a href="#create_function-4">create_function/4</a></td><td></td></tr><tr><td valign="top"><a href="#func_num_args-2">func_num_args/2</a></td><td></td></tr><tr><td valign="top"><a href="#function_exists-3">function_exists/3</a></td><td></td></tr><tr><td valign="top"><a href="#get_classes-0">get_classes/0</a></td><td></td></tr><tr><td valign="top"><a href="#get_defined_functions-2">get_defined_functions/2</a></td><td></td></tr><tr><td valign="top"><a href="#init_config-0">init_config/0</a></td><td></td></tr><tr><td valign="top"><a href="#init_const-0">init_const/0</a></td><td></td></tr><tr><td valign="top"><a href="#init_func-0">init_func/0</a></td><td></td></tr><tr><td valign="top"><a href="#register_shutdown_function-3">register_shutdown_function/3</a></td><td></td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="call_user_func-3"></a>

### call_user_func/3 ###

<pre><code>
call_user_func(Context::<a href="ephp.md#type-context_id">ephp:context_id()</a>, Line::<a href="#type-line">line()</a>, Args::[<a href="#type-var_value">var_value()</a>]) -&gt; <a href="#type-mixed">mixed()</a>
</code></pre>
<br />

<a name="call_user_func_array-4"></a>

### call_user_func_array/4 ###

<pre><code>
call_user_func_array(Context::<a href="ephp.md#type-context_id">ephp:context_id()</a>, Line::<a href="#type-line">line()</a>, X3::<a href="#type-var_value">var_value()</a>, X4::<a href="#type-var_value">var_value()</a>) -&gt; <a href="#type-mixed">mixed()</a>
</code></pre>
<br />

<a name="create_function-4"></a>

### create_function/4 ###

<pre><code>
create_function(Context::<a href="ephp.md#type-context_id">ephp:context_id()</a>, X2::<a href="#type-line">line()</a>, Args::<a href="#type-var_value">var_value()</a>, Code::<a href="#type-var_value">var_value()</a>) -&gt; <a href="#type-obj_ref">obj_ref()</a>
</code></pre>
<br />

<a name="func_num_args-2"></a>

### func_num_args/2 ###

<pre><code>
func_num_args(Context::<a href="ephp.md#type-context_id">ephp:context_id()</a>, Line::<a href="#type-line">line()</a>) -&gt; non_neg_integer()
</code></pre>
<br />

<a name="function_exists-3"></a>

### function_exists/3 ###

<pre><code>
function_exists(Context::<a href="ephp.md#type-context_id">ephp:context_id()</a>, Line::<a href="#type-line">line()</a>, FuncName::<a href="#type-var_value">var_value()</a>) -&gt; boolean()
</code></pre>
<br />

<a name="get_classes-0"></a>

### get_classes/0 ###

<pre><code>
get_classes() -&gt; [<a href="#type-class">class()</a>]
</code></pre>
<br />

<a name="get_defined_functions-2"></a>

### get_defined_functions/2 ###

<pre><code>
get_defined_functions(Context::<a href="ephp.md#type-context_id">ephp:context_id()</a>, Line::<a href="#type-line">line()</a>) -&gt; <a href="ephp_array.md#type-ephp_array">ephp_array:ephp_array()</a>
</code></pre>
<br />

<a name="init_config-0"></a>

### init_config/0 ###

<pre><code>
init_config() -&gt; <a href="ephp_lib.md#type-php_config_results">ephp_lib:php_config_results()</a>
</code></pre>
<br />

<a name="init_const-0"></a>

### init_const/0 ###

<pre><code>
init_const() -&gt; <a href="ephp_lib.md#type-php_const_results">ephp_lib:php_const_results()</a>
</code></pre>
<br />

<a name="init_func-0"></a>

### init_func/0 ###

<pre><code>
init_func() -&gt; <a href="ephp_lib.md#type-php_function_results">ephp_lib:php_function_results()</a>
</code></pre>
<br />

<a name="register_shutdown_function-3"></a>

### register_shutdown_function/3 ###

<pre><code>
register_shutdown_function(Context::<a href="ephp.md#type-context_id">ephp:context_id()</a>, Line::<a href="#type-line">line()</a>, RawArgs::[<a href="#type-var_value">var_value()</a>]) -&gt; ok
</code></pre>
<br />

