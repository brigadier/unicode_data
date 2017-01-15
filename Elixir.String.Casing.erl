-compile(no_auto_import).

-file("/home/george/installed/packages/elixir-1.4.0/"
      "lib/elixir/unicode/unicode.ex",
      299).

-module('Elixir.String.Casing').

-export(['__info__'/1, downcase/1, titlecase_once/1,
	 upcase/1]).

-spec '__info__'(attributes | compile | exports |
		 functions | macros | md5 | module |
		 native_addresses) -> atom() |
				      [{atom(), any()} |
				       {atom(), byte(), integer()}].

'__info__'(functions) ->
    [{downcase, 1}, {titlecase_once, 1}, {upcase, 1}];
'__info__'(macros) -> [];
'__info__'(Einfo) ->
    erlang:get_module_info('Elixir.String.Casing', Einfo).

downcase(Estring@1) -> downcase(Estring@1, <<>>).

downcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�\203">>);
downcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�\202">>);
downcase(<<"�\236�\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�\201">>);
downcase(<<"�\236�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�\200">>);
downcase(<<"�\236�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\236�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\237">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\236">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\235">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\234">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\233">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\232">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\231">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\230">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\227">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\226">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\225">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\224">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\223">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\222">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\221">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\220">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\217">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\216">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\215">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\214">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\213">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\212">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\211">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\210">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\207">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\206">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\205">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\204">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\203">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\202">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\201">>);
downcase(<<"�\221��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221�\200">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
downcase(<<"�\220�\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\237">>);
downcase(<<"�\220�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\236">>);
downcase(<<"�\220�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\235">>);
downcase(<<"�\220�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\234">>);
downcase(<<"�\220�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\233">>);
downcase(<<"�\220�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\232">>);
downcase(<<"�\220�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\231">>);
downcase(<<"�\220�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\230">>);
downcase(<<"�\220�\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\227">>);
downcase(<<"�\220�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\226">>);
downcase(<<"�\220�\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\225">>);
downcase(<<"�\220�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\224">>);
downcase(<<"�\220�\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\223">>);
downcase(<<"�\220�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\222">>);
downcase(<<"�\220�\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\221">>);
downcase(<<"�\220�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\220">>);
downcase(<<"�\220�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\217">>);
downcase(<<"�\220�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\216">>);
downcase(<<"�\220�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\215">>);
downcase(<<"�\220�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\214">>);
downcase(<<"�\220�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\213">>);
downcase(<<"�\220�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\212">>);
downcase(<<"�\220�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\211">>);
downcase(<<"�\220�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\210">>);
downcase(<<"�\220�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\207">>);
downcase(<<"�\220�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\206">>);
downcase(<<"�\220�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\205">>);
downcase(<<"�\220�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\204">>);
downcase(<<"�\220�\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\203">>);
downcase(<<"�\220�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\202">>);
downcase(<<"�\220�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\201">>);
downcase(<<"�\220�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220�\200">>);
downcase(<<"�\220\223\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\223\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223�">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223\237">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223\236">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223\235">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223\234">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223\233">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223\232">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223\231">>);
downcase(<<"�\220\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\223\230">>);
downcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\217">>);
downcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\216">>);
downcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\215">>);
downcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\214">>);
downcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\213">>);
downcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\212">>);
downcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\211">>);
downcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\210">>);
downcase(<<"�\220\220\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\207">>);
downcase(<<"�\220\220\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\206">>);
downcase(<<"�\220\220\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\205">>);
downcase(<<"�\220\220\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\204">>);
downcase(<<"�\220\220\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\203">>);
downcase(<<"�\220\220\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\202">>);
downcase(<<"�\220\220\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\201">>);
downcase(<<"�\220\220\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\221\200">>);
downcase(<<"�\220\220\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"�\220\220\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
downcase(<<"Ｚ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232">>);
downcase(<<"Ｙ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"Ｘ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\230">>);
downcase(<<"Ｗ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"Ｖ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\226">>);
downcase(<<"Ｕ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"Ｔ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\224">>);
downcase(<<"Ｓ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"Ｒ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"Ｑ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"Ｐ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"Ｏ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"Ｎ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\216">>);
downcase(<<"Ｍ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"Ｌ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"Ｋ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"Ｊ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\212">>);
downcase(<<"Ｉ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"Ｈ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"Ｇ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"Ｆ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"Ｅ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"Ｄ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"Ｃ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"Ｂ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"Ａ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɪ">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɬ">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɡ">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɦ">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
downcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
downcase(<<"�\236\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\237">>);
downcase(<<"�\236\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\235">>);
downcase(<<"�\236\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\233">>);
downcase(<<"�\236\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\231">>);
downcase(<<"�\236\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\227">>);
downcase(<<"�\236\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\223">>);
downcase(<<"�\236\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\221">>);
downcase(<<"�\236\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɥ">>);
downcase(<<"�\236\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\214">>);
downcase(<<"�\236\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\207">>);
downcase(<<"�\236\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\205">>);
downcase(<<"�\236\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\203">>);
downcase(<<"�\236\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236\201">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᵹ">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
downcase(<<"�\235\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\237">>);
downcase(<<"�\235\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\235">>);
downcase(<<"�\235\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\233">>);
downcase(<<"�\235\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\231">>);
downcase(<<"�\235\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\227">>);
downcase(<<"�\235\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\225">>);
downcase(<<"�\235\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\223">>);
downcase(<<"�\235\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\221">>);
downcase(<<"�\235\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\217">>);
downcase(<<"�\235\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\215">>);
downcase(<<"�\235\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\213">>);
downcase(<<"�\235\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\211">>);
downcase(<<"�\235\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\207">>);
downcase(<<"�\235\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\205">>);
downcase(<<"�\235\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\203">>);
downcase(<<"�\235\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235\201">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
downcase(<<"�\232\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\233">>);
downcase(<<"�\232\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\231">>);
downcase(<<"�\232\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\227">>);
downcase(<<"�\232\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\225">>);
downcase(<<"�\232\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\223">>);
downcase(<<"�\232\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\221">>);
downcase(<<"�\232\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\217">>);
downcase(<<"�\232\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\215">>);
downcase(<<"�\232\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\213">>);
downcase(<<"�\232\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\211">>);
downcase(<<"�\232\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\207">>);
downcase(<<"�\232\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\205">>);
downcase(<<"�\232\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\203">>);
downcase(<<"�\232\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232\201">>);
downcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
downcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
downcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
downcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
downcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
downcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
downcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
downcase(<<"�\231\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\237">>);
downcase(<<"�\231\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\235">>);
downcase(<<"�\231\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\233">>);
downcase(<<"�\231\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\231">>);
downcase(<<"�\231\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\227">>);
downcase(<<"�\231\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\225">>);
downcase(<<"�\231\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\223">>);
downcase(<<"�\231\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\221">>);
downcase(<<"�\231\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\217">>);
downcase(<<"�\231\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\215">>);
downcase(<<"�\231\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\213">>);
downcase(<<"�\231\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\211">>);
downcase(<<"�\231\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\207">>);
downcase(<<"�\231\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\205">>);
downcase(<<"�\231\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\203">>);
downcase(<<"�\231\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231\201">>);
downcase(<<"Ⳳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⳳ">>);
downcase(<<"Ⳮ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⳮ">>);
downcase(<<"Ⳬ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⳬ">>);
downcase(<<"Ⳣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⳣ">>);
downcase(<<"Ⳡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⳡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Ⲿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲿ">>);
downcase(<<"Ⲽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲽ">>);
downcase(<<"Ⲻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲻ">>);
downcase(<<"Ⲹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲹ">>);
downcase(<<"Ⲷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲷ">>);
downcase(<<"Ⲵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲵ">>);
downcase(<<"Ⲳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲳ">>);
downcase(<<"Ⲱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲱ">>);
downcase(<<"Ⲯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲯ">>);
downcase(<<"Ⲭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲭ">>);
downcase(<<"Ⲫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲫ">>);
downcase(<<"Ⲩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲩ">>);
downcase(<<"Ⲧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲧ">>);
downcase(<<"Ⲥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲥ">>);
downcase(<<"Ⲣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲣ">>);
downcase(<<"Ⲡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⲡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Ɀ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"Ȿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȿ">>);
downcase(<<"Ⱶ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⱶ">>);
downcase(<<"Ⱳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⱳ">>);
downcase(<<"Ɒ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"Ɐ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"Ɱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɱ">>);
downcase(<<"Ɑ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"Ⱬ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⱬ">>);
downcase(<<"Ⱪ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⱪ">>);
downcase(<<"Ⱨ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⱨ">>);
downcase(<<"Ɽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɽ">>);
downcase(<<"Ᵽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᵽ">>);
downcase(<<"Ɫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɫ">>);
downcase(<<"Ⱡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⱡ">>);
downcase(<<"Ⱞ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236">>);
downcase(<<"Ⱝ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"Ⱜ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234">>);
downcase(<<"Ⱛ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"Ⱚ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232">>);
downcase(<<"Ⱙ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"Ⱘ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\230">>);
downcase(<<"Ⱗ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"Ⱖ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\226">>);
downcase(<<"Ⱕ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"Ⱔ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\224">>);
downcase(<<"Ⱓ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"Ⱒ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"Ⱑ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"Ⱐ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\216">>);
downcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\212">>);
downcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰿ">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰾ">>);
downcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰽ">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰼ">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰻ">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰺ">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰹ">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰸ">>);
downcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰷ">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰶ">>);
downcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰵ">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰴ">>);
downcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰳ">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰲ">>);
downcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰱ">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⰰ">>);
downcase(<<"�\223\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223�">>);
downcase(<<"�\223\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\237">>);
downcase(<<"�\223\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\236">>);
downcase(<<"�\223\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\235">>);
downcase(<<"�\223\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\234">>);
downcase(<<"�\223\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\233">>);
downcase(<<"�\223\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\232">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\231">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\230">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\227">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\226">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\225">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\224">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\223">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\222">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\221">>);
downcase(<<"�\222�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223\220">>);
downcase(<<"�\206\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206\204">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
downcase(<<"�\204�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205\216">>);
downcase(<<"�\204�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "å">>);
downcase(<<"�\204�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "k">>);
downcase(<<"�\204�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"ῼ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ῳ">>);
downcase(<<"Ώ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ώ">>);
downcase(<<"Ὼ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὼ">>);
downcase(<<"Ό", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ό">>);
downcase(<<"Ὸ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὸ">>);
downcase(<<"Ῥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ῥ">>);
downcase(<<"Ύ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ύ">>);
downcase(<<"Ὺ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὺ">>);
downcase(<<"Ῡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ῡ">>);
downcase(<<"Ῠ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ῠ">>);
downcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ί">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὶ">>);
downcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ή">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὴ">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "έ">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὲ">>);
downcase(<<"ᾼ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾳ">>);
downcase(<<"Ά", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ά">>);
downcase(<<"Ὰ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὰ">>);
downcase(<<"Ᾱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾱ">>);
downcase(<<"Ᾰ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾰ">>);
downcase(<<"ᾯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾧ">>);
downcase(<<"ᾮ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾦ">>);
downcase(<<"ᾭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾥ">>);
downcase(<<"ᾬ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾤ">>);
downcase(<<"ᾫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾣ">>);
downcase(<<"ᾪ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾢ">>);
downcase(<<"ᾩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾡ">>);
downcase(<<"ᾨ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ᾠ">>);
downcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\226">>);
downcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\224">>);
downcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"Ὧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὧ">>);
downcase(<<"Ὦ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὦ">>);
downcase(<<"Ὥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὥ">>);
downcase(<<"Ὤ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὤ">>);
downcase(<<"Ὣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὣ">>);
downcase(<<"Ὢ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὢ">>);
downcase(<<"Ὡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὡ">>);
downcase(<<"Ὠ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ὠ">>);
downcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"Ἷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἷ">>);
downcase(<<"Ἶ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἶ">>);
downcase(<<"Ἵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἵ">>);
downcase(<<"Ἴ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἴ">>);
downcase(<<"Ἳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἳ">>);
downcase(<<"Ἲ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἲ">>);
downcase(<<"Ἱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἱ">>);
downcase(<<"Ἰ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἰ">>);
downcase(<<"Ἧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἧ">>);
downcase(<<"Ἦ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἦ">>);
downcase(<<"Ἥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἥ">>);
downcase(<<"Ἤ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἤ">>);
downcase(<<"Ἣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἣ">>);
downcase(<<"Ἢ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἢ">>);
downcase(<<"Ἡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἡ">>);
downcase(<<"Ἠ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ἠ">>);
downcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\224">>);
downcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"Ỿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ỿ">>);
downcase(<<"Ỽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ỽ">>);
downcase(<<"Ỻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ỻ">>);
downcase(<<"Ỹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ỹ">>);
downcase(<<"Ỷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ỷ">>);
downcase(<<"Ỵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ỵ">>);
downcase(<<"Ỳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ỳ">>);
downcase(<<"Ự", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ự">>);
downcase(<<"Ữ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ữ">>);
downcase(<<"Ử", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ử">>);
downcase(<<"Ừ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ừ">>);
downcase(<<"Ứ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ứ">>);
downcase(<<"Ủ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ủ">>);
downcase(<<"Ụ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ụ">>);
downcase(<<"Ợ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ợ">>);
downcase(<<"Ỡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ỡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Ế", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ế">>);
downcase(<<"Ẽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ẽ">>);
downcase(<<"Ẻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ẻ">>);
downcase(<<"Ẹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ẹ">>);
downcase(<<"Ặ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ặ">>);
downcase(<<"Ẵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ẵ">>);
downcase(<<"Ẳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ẳ">>);
downcase(<<"Ằ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ằ">>);
downcase(<<"Ắ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ắ">>);
downcase(<<"Ậ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ậ">>);
downcase(<<"Ẫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ẫ">>);
downcase(<<"Ẩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ẩ">>);
downcase(<<"Ầ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ầ">>);
downcase(<<"Ấ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ấ">>);
downcase(<<"Ả", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ả">>);
downcase(<<"Ạ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ạ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Ṿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṿ">>);
downcase(<<"Ṽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṽ">>);
downcase(<<"Ṻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṻ">>);
downcase(<<"Ṹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṹ">>);
downcase(<<"Ṷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṷ">>);
downcase(<<"Ṵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṵ">>);
downcase(<<"Ṳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṳ">>);
downcase(<<"Ṱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṱ">>);
downcase(<<"Ṯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṯ">>);
downcase(<<"Ṭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṭ">>);
downcase(<<"Ṫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṫ">>);
downcase(<<"Ṩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṩ">>);
downcase(<<"Ṧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṧ">>);
downcase(<<"Ṥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṥ">>);
downcase(<<"Ṣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṣ">>);
downcase(<<"Ṡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ṡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Ḿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḿ">>);
downcase(<<"Ḽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḽ">>);
downcase(<<"Ḻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḻ">>);
downcase(<<"Ḹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḹ">>);
downcase(<<"Ḷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḷ">>);
downcase(<<"Ḵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḵ">>);
downcase(<<"Ḳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḳ">>);
downcase(<<"Ḱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḱ">>);
downcase(<<"Ḯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḯ">>);
downcase(<<"Ḭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḭ">>);
downcase(<<"Ḫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḫ">>);
downcase(<<"Ḩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḩ">>);
downcase(<<"Ḧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḧ">>);
downcase(<<"Ḥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḥ">>);
downcase(<<"Ḣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḣ">>);
downcase(<<"Ḡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ḡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮿ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮾ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮽ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮼ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮻ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮺ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮹ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮸ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮷ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮶ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮵ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮴ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮳ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮲ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮱ">>);
downcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮰ">>);
downcase(<<"�\217\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮯ">>);
downcase(<<"�\217\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮮ">>);
downcase(<<"�\217\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮭ">>);
downcase(<<"�\217\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮬ">>);
downcase(<<"�\217\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮫ">>);
downcase(<<"�\217\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮪ">>);
downcase(<<"�\217\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮩ">>);
downcase(<<"�\217\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮨ">>);
downcase(<<"�\217\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮧ">>);
downcase(<<"�\217\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮦ">>);
downcase(<<"�\217\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮥ">>);
downcase(<<"�\217\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮤ">>);
downcase(<<"�\217\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮣ">>);
downcase(<<"�\217\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮢ">>);
downcase(<<"�\217\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮡ">>);
downcase(<<"�\217\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꮠ">>);
downcase(<<"�\217\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\217\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236">>);
downcase(<<"�\217\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\217\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234">>);
downcase(<<"�\217\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\217\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232">>);
downcase(<<"�\217\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\217\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\230">>);
downcase(<<"�\217\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\217\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\226">>);
downcase(<<"�\217\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\217\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\224">>);
downcase(<<"�\217\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\217\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"�\217\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\217\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\216">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\212">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭿ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭾ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭽ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭼ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭻ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭺ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭹ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭸ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭷ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭶ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭵ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭴ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭳ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭲ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭱ">>);
downcase(<<"�\216�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ꭰ">>);
downcase(<<"�\203\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⴭ">>);
downcase(<<"�\203\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⴧ">>);
downcase(<<"�\203\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⴥ">>);
downcase(<<"�\203\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⴤ">>);
downcase(<<"�\203\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⴣ">>);
downcase(<<"�\203\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⴢ">>);
downcase(<<"�\203\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⴡ">>);
downcase(<<"�\203\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⴠ">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\230">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\226">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\224">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\216">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\212">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "տ">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "վ">>);
downcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ս">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ռ">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ջ">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "պ">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "չ">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ո">>);
downcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "շ">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ն">>);
downcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "յ">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "մ">>);
downcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ճ">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ղ">>);
downcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ձ">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "հ">>);
downcase(<<"Կ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "կ">>);
downcase(<<"Ծ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ծ">>);
downcase(<<"Խ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "խ">>);
downcase(<<"Լ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "լ">>);
downcase(<<"Ի", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ի">>);
downcase(<<"Ժ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ժ">>);
downcase(<<"Թ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "թ">>);
downcase(<<"Ը", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ը">>);
downcase(<<"Է", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "է">>);
downcase(<<"Զ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "զ">>);
downcase(<<"Ե", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ե">>);
downcase(<<"Դ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "դ">>);
downcase(<<"Գ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "գ">>);
downcase(<<"Բ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "բ">>);
downcase(<<"Ա", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ա">>);
downcase(<<"Ԯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ԯ">>);
downcase(<<"Ԭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ԭ">>);
downcase(<<"Ԫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ԫ">>);
downcase(<<"Ԩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ԩ">>);
downcase(<<"Ԧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ԧ">>);
downcase(<<"Ԥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ԥ">>);
downcase(<<"Ԣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ԣ">>);
downcase(<<"Ԡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ԡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Ӿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӿ">>);
downcase(<<"Ӽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӽ">>);
downcase(<<"Ӻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӻ">>);
downcase(<<"Ӹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӹ">>);
downcase(<<"Ӷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӷ">>);
downcase(<<"Ӵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӵ">>);
downcase(<<"Ӳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӳ">>);
downcase(<<"Ӱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӱ">>);
downcase(<<"Ӯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӯ">>);
downcase(<<"Ӭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӭ">>);
downcase(<<"Ӫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӫ">>);
downcase(<<"Ө", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ө">>);
downcase(<<"Ӧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӧ">>);
downcase(<<"Ӥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӥ">>);
downcase(<<"Ӣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӣ">>);
downcase(<<"Ӡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ӡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\216">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\212">>);
downcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"Ҿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҿ">>);
downcase(<<"Ҽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҽ">>);
downcase(<<"Һ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "һ">>);
downcase(<<"Ҹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҹ">>);
downcase(<<"Ҷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҷ">>);
downcase(<<"Ҵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҵ">>);
downcase(<<"Ҳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҳ">>);
downcase(<<"Ұ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ұ">>);
downcase(<<"Ү", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ү">>);
downcase(<<"Ҭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҭ">>);
downcase(<<"Ҫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҫ">>);
downcase(<<"Ҩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҩ">>);
downcase(<<"Ҧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҧ">>);
downcase(<<"Ҥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҥ">>);
downcase(<<"Ң", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ң">>);
downcase(<<"Ҡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ҡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Ѿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѿ">>);
downcase(<<"Ѽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѽ">>);
downcase(<<"Ѻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѻ">>);
downcase(<<"Ѹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѹ">>);
downcase(<<"Ѷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѷ">>);
downcase(<<"Ѵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѵ">>);
downcase(<<"Ѳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѳ">>);
downcase(<<"Ѱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѱ">>);
downcase(<<"Ѯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѯ">>);
downcase(<<"Ѭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѭ">>);
downcase(<<"Ѫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѫ">>);
downcase(<<"Ѩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѩ">>);
downcase(<<"Ѧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѧ">>);
downcase(<<"Ѥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѥ">>);
downcase(<<"Ѣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѣ">>);
downcase(<<"Ѡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ѡ">>);
downcase(<<"Я", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"Ю", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\216">>);
downcase(<<"Э", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"Ь", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"Ы", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"Ъ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\212">>);
downcase(<<"Щ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"Ш", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"Ч", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"Ц", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"Х", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"Ф", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"У", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"Т", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"С", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Р", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "п">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "о">>);
downcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "н">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "м">>);
downcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "л">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "к">>);
downcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "й">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "и">>);
downcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "з">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ж">>);
downcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "е">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "д">>);
downcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "г">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "в">>);
downcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "б">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "а">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236">>);
downcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\230">>);
downcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\226">>);
downcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\224">>);
downcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"Ͽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ͽ">>);
downcase(<<"Ͼ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ͼ">>);
downcase(<<"Ͻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ͻ">>);
downcase(<<"Ϻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϻ">>);
downcase(<<"Ϲ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϲ">>);
downcase(<<"Ϸ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϸ">>);
downcase(<<"ϴ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "θ">>);
downcase(<<"Ϯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϯ">>);
downcase(<<"Ϭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϭ">>);
downcase(<<"Ϫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϫ">>);
downcase(<<"Ϩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϩ">>);
downcase(<<"Ϧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϧ">>);
downcase(<<"Ϥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϥ">>);
downcase(<<"Ϣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϣ">>);
downcase(<<"Ϡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"Ϋ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"Ϊ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\212">>);
downcase(<<"Ω", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"Ψ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"Χ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"Φ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"Υ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"Τ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"Σ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"Ρ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Π", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ο">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ξ">>);
downcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ν">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "μ">>);
downcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "λ">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "κ">>);
downcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ι">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "θ">>);
downcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "η">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ζ">>);
downcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ε">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "δ">>);
downcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "γ">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "β">>);
downcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "α">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\216">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ί">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ή">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "έ">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ά">>);
downcase(<<"Ϳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ϳ">>);
downcase(<<"Ͷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ͷ">>);
downcase(<<"Ͳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ͳ">>);
downcase(<<"Ͱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ͱ">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"Ⱦ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⱦ">>);
downcase(<<"Ƚ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232">>);
downcase(<<"Ȼ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȼ">>);
downcase(<<"Ⱥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ⱥ">>);
downcase(<<"Ȳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȳ">>);
downcase(<<"Ȱ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȱ">>);
downcase(<<"Ȯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȯ">>);
downcase(<<"Ȭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȭ">>);
downcase(<<"Ȫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȫ">>);
downcase(<<"Ȩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȩ">>);
downcase(<<"Ȧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȧ">>);
downcase(<<"Ȥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȥ">>);
downcase(<<"Ȣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ȣ">>);
downcase(<<"Ƞ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\236">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"Ǿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǿ">>);
downcase(<<"Ǽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǽ">>);
downcase(<<"Ǻ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǻ">>);
downcase(<<"Ǹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǹ">>);
downcase(<<"Ƿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ƿ">>);
downcase(<<"Ƕ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"Ǵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǵ">>);
downcase(<<"ǲ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǳ">>);
downcase(<<"Ǳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǳ">>);
downcase(<<"Ǯ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǯ">>);
downcase(<<"Ǭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǭ">>);
downcase(<<"Ǫ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǫ">>);
downcase(<<"Ǩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǩ">>);
downcase(<<"Ǧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǧ">>);
downcase(<<"Ǥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǥ">>);
downcase(<<"Ǣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǣ">>);
downcase(<<"Ǡ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ǡ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\234">>);
downcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\232">>);
downcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\230">>);
downcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\226">>);
downcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\224">>);
downcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\220">>);
downcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\216">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"Ƽ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ƽ">>);
downcase(<<"Ƹ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ƹ">>);
downcase(<<"Ʒ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"Ƶ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ƶ">>);
downcase(<<"Ƴ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ƴ">>);
downcase(<<"Ʋ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"Ʊ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\212">>);
downcase(<<"Ư", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ư">>);
downcase(<<"Ʈ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"Ƭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ƭ">>);
downcase(<<"Ʃ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"Ƨ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ƨ">>);
downcase(<<"Ʀ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"Ƥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ƥ">>);
downcase(<<"Ƣ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ƣ">>);
downcase(<<"Ơ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ơ">>);
downcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɵ">>);
downcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɲ">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɯ">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɨ">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɩ">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɣ">>);
downcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ɠ">>);
downcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\222">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\214">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\226">>);
downcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\224">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"Ž", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ž">>);
downcase(<<"Ż", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ż">>);
downcase(<<"Ź", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ź">>);
downcase(<<"Ÿ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ÿ">>);
downcase(<<"Ŷ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ŷ">>);
downcase(<<"Ŵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ŵ">>);
downcase(<<"Ų", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ų">>);
downcase(<<"Ű", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ű">>);
downcase(<<"Ů", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ů">>);
downcase(<<"Ŭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ŭ">>);
downcase(<<"Ū", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ū">>);
downcase(<<"Ũ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ũ">>);
downcase(<<"Ŧ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ŧ">>);
downcase(<<"Ť", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ť">>);
downcase(<<"Ţ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ţ">>);
downcase(<<"Š", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "š">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\210">>);
downcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\206">>);
downcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\204">>);
downcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\202">>);
downcase(<<"Ŀ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\200">>);
downcase(<<"Ľ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ľ">>);
downcase(<<"Ļ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ļ">>);
downcase(<<"Ĺ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ĺ">>);
downcase(<<"Ķ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ķ">>);
downcase(<<"Ĵ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ĵ">>);
downcase(<<"Ĳ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ĳ">>);
downcase(<<"İ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "i�\207">>);
downcase(<<"Į", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "į">>);
downcase(<<"Ĭ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ĭ">>);
downcase(<<"Ī", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ī">>);
downcase(<<"Ĩ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ĩ">>);
downcase(<<"Ħ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ħ">>);
downcase(<<"Ĥ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ĥ">>);
downcase(<<"Ģ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ģ">>);
downcase(<<"Ġ", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ġ">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\237">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\235">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\233">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\231">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\227">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\225">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\223">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\221">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\217">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\215">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\213">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\211">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\207">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\205">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\203">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "�\201">>);
downcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "þ">>);
downcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ý">>);
downcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ü">>);
downcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "û">>);
downcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ú">>);
downcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ù">>);
downcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ø">>);
downcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ö">>);
downcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "õ">>);
downcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ô">>);
downcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ó">>);
downcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ò">>);
downcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ñ">>);
downcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ð">>);
downcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ï">>);
downcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "î">>);
downcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "í">>);
downcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ì">>);
downcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ë">>);
downcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ê">>);
downcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "é">>);
downcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "è">>);
downcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ç">>);
downcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "æ">>);
downcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "å">>);
downcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ä">>);
downcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "ã">>);
downcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "â">>);
downcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "á">>);
downcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "à">>);
downcase(<<"Z", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "z">>);
downcase(<<"Y", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "y">>);
downcase(<<"X", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "x">>);
downcase(<<"W", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "w">>);
downcase(<<"V", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "v">>);
downcase(<<"U", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "u">>);
downcase(<<"T", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "t">>);
downcase(<<"S", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "s">>);
downcase(<<"R", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "r">>);
downcase(<<"Q", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "q">>);
downcase(<<"P", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "p">>);
downcase(<<"O", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "o">>);
downcase(<<"N", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "n">>);
downcase(<<"M", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "m">>);
downcase(<<"L", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "l">>);
downcase(<<"K", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "k">>);
downcase(<<"J", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "j">>);
downcase(<<"I", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "i">>);
downcase(<<"H", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "h">>);
downcase(<<"G", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "g">>);
downcase(<<"F", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "f">>);
downcase(<<"E", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "e">>);
downcase(<<"D", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "d">>);
downcase(<<"C", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "c">>);
downcase(<<"B", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "b">>);
downcase(<<"A", Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, "a">>);
downcase(<<Echar@1, Erest@1/binary>>, Eacc@1) ->
    downcase(Erest@1, <<Eacc@1/binary, Echar@1>>);
downcase(<<>>, Eacc@1) -> Eacc@1.

titlecase_once(<<>>) -> {<<>>, <<>>};
titlecase_once(<<"�\236�\203", Erest@1/binary>>) ->
    {<<"�\236��">>, Erest@1};
titlecase_once(<<"�\236�\202", Erest@1/binary>>) ->
    {<<"�\236��">>, Erest@1};
titlecase_once(<<"�\236�\201", Erest@1/binary>>) ->
    {<<"�\236�\237">>, Erest@1};
titlecase_once(<<"�\236�\200", Erest@1/binary>>) ->
    {<<"�\236�\236">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\235">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\234">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\233">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\232">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\231">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\230">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\227">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\226">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\225">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\224">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\223">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\222">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\221">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\220">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\217">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\216">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\215">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\214">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\213">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\212">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\211">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\210">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\207">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\206">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\205">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\204">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\203">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\202">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\201">>, Erest@1};
titlecase_once(<<"�\236��", Erest@1/binary>>) ->
    {<<"�\236�\200">>, Erest@1};
titlecase_once(<<"�\221�\237", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\236", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\235", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\234", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\233", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\232", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\231", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\230", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\227", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\226", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\225", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\224", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\223", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\222", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\221", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\220", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\217", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\216", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\215", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\214", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\213", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\212", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\211", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\210", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\207", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\206", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\205", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\204", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\203", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\202", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\201", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\221�\200", Erest@1/binary>>) ->
    {<<"�\221��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220��", Erest@1/binary>>) ->
    {<<"�\220��">>, Erest@1};
titlecase_once(<<"�\220�\237", Erest@1/binary>>) ->
    {<<"�\220�\237">>, Erest@1};
titlecase_once(<<"�\220�\236", Erest@1/binary>>) ->
    {<<"�\220�\236">>, Erest@1};
titlecase_once(<<"�\220�\235", Erest@1/binary>>) ->
    {<<"�\220�\235">>, Erest@1};
titlecase_once(<<"�\220�\234", Erest@1/binary>>) ->
    {<<"�\220�\234">>, Erest@1};
titlecase_once(<<"�\220�\233", Erest@1/binary>>) ->
    {<<"�\220�\233">>, Erest@1};
titlecase_once(<<"�\220�\232", Erest@1/binary>>) ->
    {<<"�\220�\232">>, Erest@1};
titlecase_once(<<"�\220�\231", Erest@1/binary>>) ->
    {<<"�\220�\231">>, Erest@1};
titlecase_once(<<"�\220�\230", Erest@1/binary>>) ->
    {<<"�\220�\230">>, Erest@1};
titlecase_once(<<"�\220�\227", Erest@1/binary>>) ->
    {<<"�\220�\227">>, Erest@1};
titlecase_once(<<"�\220�\226", Erest@1/binary>>) ->
    {<<"�\220�\226">>, Erest@1};
titlecase_once(<<"�\220�\225", Erest@1/binary>>) ->
    {<<"�\220�\225">>, Erest@1};
titlecase_once(<<"�\220�\224", Erest@1/binary>>) ->
    {<<"�\220�\224">>, Erest@1};
titlecase_once(<<"�\220�\223", Erest@1/binary>>) ->
    {<<"�\220�\223">>, Erest@1};
titlecase_once(<<"�\220�\222", Erest@1/binary>>) ->
    {<<"�\220�\222">>, Erest@1};
titlecase_once(<<"�\220�\221", Erest@1/binary>>) ->
    {<<"�\220�\221">>, Erest@1};
titlecase_once(<<"�\220�\220", Erest@1/binary>>) ->
    {<<"�\220�\220">>, Erest@1};
titlecase_once(<<"�\220�\217", Erest@1/binary>>) ->
    {<<"�\220�\217">>, Erest@1};
titlecase_once(<<"�\220�\216", Erest@1/binary>>) ->
    {<<"�\220�\216">>, Erest@1};
titlecase_once(<<"�\220�\215", Erest@1/binary>>) ->
    {<<"�\220�\215">>, Erest@1};
titlecase_once(<<"�\220�\214", Erest@1/binary>>) ->
    {<<"�\220�\214">>, Erest@1};
titlecase_once(<<"�\220�\213", Erest@1/binary>>) ->
    {<<"�\220�\213">>, Erest@1};
titlecase_once(<<"�\220�\212", Erest@1/binary>>) ->
    {<<"�\220�\212">>, Erest@1};
titlecase_once(<<"�\220�\211", Erest@1/binary>>) ->
    {<<"�\220�\211">>, Erest@1};
titlecase_once(<<"�\220�\210", Erest@1/binary>>) ->
    {<<"�\220�\210">>, Erest@1};
titlecase_once(<<"�\220�\207", Erest@1/binary>>) ->
    {<<"�\220�\207">>, Erest@1};
titlecase_once(<<"�\220�\206", Erest@1/binary>>) ->
    {<<"�\220�\206">>, Erest@1};
titlecase_once(<<"�\220�\205", Erest@1/binary>>) ->
    {<<"�\220�\205">>, Erest@1};
titlecase_once(<<"�\220�\204", Erest@1/binary>>) ->
    {<<"�\220�\204">>, Erest@1};
titlecase_once(<<"�\220�\203", Erest@1/binary>>) ->
    {<<"�\220�\203">>, Erest@1};
titlecase_once(<<"�\220�\202", Erest@1/binary>>) ->
    {<<"�\220�\202">>, Erest@1};
titlecase_once(<<"�\220�\201", Erest@1/binary>>) ->
    {<<"�\220�\201">>, Erest@1};
titlecase_once(<<"�\220�\200", Erest@1/binary>>) ->
    {<<"�\220�\200">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\223">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\222">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\221">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\220">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\217">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\216">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\215">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\214">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\213">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\212">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\211">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\210">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\207">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\206">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\205">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\204">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\203">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\202">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\201">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\223\200">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223�", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223\237", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223\236", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223\235", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223\234", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223\233", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223\232", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223\231", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\223\230", Erest@1/binary>>) ->
    {<<"�\220\222�">>, Erest@1};
titlecase_once(<<"�\220\221\217", Erest@1/binary>>) ->
    {<<"�\220\220�">>, Erest@1};
titlecase_once(<<"�\220\221\216", Erest@1/binary>>) ->
    {<<"�\220\220�">>, Erest@1};
titlecase_once(<<"�\220\221\215", Erest@1/binary>>) ->
    {<<"�\220\220�">>, Erest@1};
titlecase_once(<<"�\220\221\214", Erest@1/binary>>) ->
    {<<"�\220\220�">>, Erest@1};
titlecase_once(<<"�\220\221\213", Erest@1/binary>>) ->
    {<<"�\220\220�">>, Erest@1};
titlecase_once(<<"�\220\221\212", Erest@1/binary>>) ->
    {<<"�\220\220�">>, Erest@1};
titlecase_once(<<"�\220\221\211", Erest@1/binary>>) ->
    {<<"�\220\220�">>, Erest@1};
titlecase_once(<<"�\220\221\210", Erest@1/binary>>) ->
    {<<"�\220\220�">>, Erest@1};
titlecase_once(<<"�\220\221\207", Erest@1/binary>>) ->
    {<<"�\220\220\237">>, Erest@1};
titlecase_once(<<"�\220\221\206", Erest@1/binary>>) ->
    {<<"�\220\220\236">>, Erest@1};
titlecase_once(<<"�\220\221\205", Erest@1/binary>>) ->
    {<<"�\220\220\235">>, Erest@1};
titlecase_once(<<"�\220\221\204", Erest@1/binary>>) ->
    {<<"�\220\220\234">>, Erest@1};
titlecase_once(<<"�\220\221\203", Erest@1/binary>>) ->
    {<<"�\220\220\233">>, Erest@1};
titlecase_once(<<"�\220\221\202", Erest@1/binary>>) ->
    {<<"�\220\220\232">>, Erest@1};
titlecase_once(<<"�\220\221\201", Erest@1/binary>>) ->
    {<<"�\220\220\231">>, Erest@1};
titlecase_once(<<"�\220\221\200", Erest@1/binary>>) ->
    {<<"�\220\220\230">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\227">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\226">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\225">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\224">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\223">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\222">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\221">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\220">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\217">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\216">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\215">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\214">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\213">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\212">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\211">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\210">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\207">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\206">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\205">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\204">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\203">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\202">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\201">>, Erest@1};
titlecase_once(<<"�\220\220�", Erest@1/binary>>) ->
    {<<"�\220\220\200">>, Erest@1};
titlecase_once(<<"�\232", Erest@1/binary>>) ->
    {<<"Ｚ">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"Ｙ">>, Erest@1};
titlecase_once(<<"�\230", Erest@1/binary>>) ->
    {<<"Ｘ">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"Ｗ">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"Ｖ">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"Ｕ">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"Ｔ">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"Ｓ">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"Ｒ">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"Ｑ">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"Ｐ">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"Ｏ">>, Erest@1};
titlecase_once(<<"�\216", Erest@1/binary>>) ->
    {<<"Ｎ">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"Ｍ">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"Ｌ">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"Ｋ">>, Erest@1};
titlecase_once(<<"�\212", Erest@1/binary>>) ->
    {<<"Ｊ">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"Ｉ">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"Ｈ">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"Ｇ">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"Ｆ">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"Ｅ">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"Ｄ">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"Ｃ">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"Ｂ">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"Ａ">>, Erest@1};
titlecase_once(<<"ꮿ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮾ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮽ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮼ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮻ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮺ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮹ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮸ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮷ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮶ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮵ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮴ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮳ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮲ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮱ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮰ", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"ꮯ", Erest@1/binary>>) ->
    {<<"�\217\237">>, Erest@1};
titlecase_once(<<"ꮮ", Erest@1/binary>>) ->
    {<<"�\217\236">>, Erest@1};
titlecase_once(<<"ꮭ", Erest@1/binary>>) ->
    {<<"�\217\235">>, Erest@1};
titlecase_once(<<"ꮬ", Erest@1/binary>>) ->
    {<<"�\217\234">>, Erest@1};
titlecase_once(<<"ꮫ", Erest@1/binary>>) ->
    {<<"�\217\233">>, Erest@1};
titlecase_once(<<"ꮪ", Erest@1/binary>>) ->
    {<<"�\217\232">>, Erest@1};
titlecase_once(<<"ꮩ", Erest@1/binary>>) ->
    {<<"�\217\231">>, Erest@1};
titlecase_once(<<"ꮨ", Erest@1/binary>>) ->
    {<<"�\217\230">>, Erest@1};
titlecase_once(<<"ꮧ", Erest@1/binary>>) ->
    {<<"�\217\227">>, Erest@1};
titlecase_once(<<"ꮦ", Erest@1/binary>>) ->
    {<<"�\217\226">>, Erest@1};
titlecase_once(<<"ꮥ", Erest@1/binary>>) ->
    {<<"�\217\225">>, Erest@1};
titlecase_once(<<"ꮤ", Erest@1/binary>>) ->
    {<<"�\217\224">>, Erest@1};
titlecase_once(<<"ꮣ", Erest@1/binary>>) ->
    {<<"�\217\223">>, Erest@1};
titlecase_once(<<"ꮢ", Erest@1/binary>>) ->
    {<<"�\217\222">>, Erest@1};
titlecase_once(<<"ꮡ", Erest@1/binary>>) ->
    {<<"�\217\221">>, Erest@1};
titlecase_once(<<"ꮠ", Erest@1/binary>>) ->
    {<<"�\217\220">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\217\217">>, Erest@1};
titlecase_once(<<"�\236", Erest@1/binary>>) ->
    {<<"�\217\216">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\217\215">>, Erest@1};
titlecase_once(<<"�\234", Erest@1/binary>>) ->
    {<<"�\217\214">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\217\213">>, Erest@1};
titlecase_once(<<"�\232", Erest@1/binary>>) ->
    {<<"�\217\212">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\217\211">>, Erest@1};
titlecase_once(<<"�\230", Erest@1/binary>>) ->
    {<<"�\217\210">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\217\207">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"�\217\206">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\217\205">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"�\217\204">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\217\203">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"�\217\202">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\217\201">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"�\217\200">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\216", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\212", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭿ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭾ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭽ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭼ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭻ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭺ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭹ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭸ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭷ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭶ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭵ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭴ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭳ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭲ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭱ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"ꭰ", Erest@1/binary>>) ->
    {<<"�\216�">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\236�", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\236�", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\236�", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\236�", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\236�", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\236�", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\236�", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\236\237", Erest@1/binary>>) ->
    {<<"�\236\236">>, Erest@1};
titlecase_once(<<"�\236\235", Erest@1/binary>>) ->
    {<<"�\236\234">>, Erest@1};
titlecase_once(<<"�\236\233", Erest@1/binary>>) ->
    {<<"�\236\232">>, Erest@1};
titlecase_once(<<"�\236\231", Erest@1/binary>>) ->
    {<<"�\236\230">>, Erest@1};
titlecase_once(<<"�\236\227", Erest@1/binary>>) ->
    {<<"�\236\226">>, Erest@1};
titlecase_once(<<"�\236\223", Erest@1/binary>>) ->
    {<<"�\236\222">>, Erest@1};
titlecase_once(<<"�\236\221", Erest@1/binary>>) ->
    {<<"�\236\220">>, Erest@1};
titlecase_once(<<"�\236\214", Erest@1/binary>>) ->
    {<<"�\236\213">>, Erest@1};
titlecase_once(<<"�\236\207", Erest@1/binary>>) ->
    {<<"�\236\206">>, Erest@1};
titlecase_once(<<"�\236\205", Erest@1/binary>>) ->
    {<<"�\236\204">>, Erest@1};
titlecase_once(<<"�\236\203", Erest@1/binary>>) ->
    {<<"�\236\202">>, Erest@1};
titlecase_once(<<"�\236\201", Erest@1/binary>>) ->
    {<<"�\236\200">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235�", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\235\237", Erest@1/binary>>) ->
    {<<"�\235\236">>, Erest@1};
titlecase_once(<<"�\235\235", Erest@1/binary>>) ->
    {<<"�\235\234">>, Erest@1};
titlecase_once(<<"�\235\233", Erest@1/binary>>) ->
    {<<"�\235\232">>, Erest@1};
titlecase_once(<<"�\235\231", Erest@1/binary>>) ->
    {<<"�\235\230">>, Erest@1};
titlecase_once(<<"�\235\227", Erest@1/binary>>) ->
    {<<"�\235\226">>, Erest@1};
titlecase_once(<<"�\235\225", Erest@1/binary>>) ->
    {<<"�\235\224">>, Erest@1};
titlecase_once(<<"�\235\223", Erest@1/binary>>) ->
    {<<"�\235\222">>, Erest@1};
titlecase_once(<<"�\235\221", Erest@1/binary>>) ->
    {<<"�\235\220">>, Erest@1};
titlecase_once(<<"�\235\217", Erest@1/binary>>) ->
    {<<"�\235\216">>, Erest@1};
titlecase_once(<<"�\235\215", Erest@1/binary>>) ->
    {<<"�\235\214">>, Erest@1};
titlecase_once(<<"�\235\213", Erest@1/binary>>) ->
    {<<"�\235\212">>, Erest@1};
titlecase_once(<<"�\235\211", Erest@1/binary>>) ->
    {<<"�\235\210">>, Erest@1};
titlecase_once(<<"�\235\207", Erest@1/binary>>) ->
    {<<"�\235\206">>, Erest@1};
titlecase_once(<<"�\235\205", Erest@1/binary>>) ->
    {<<"�\235\204">>, Erest@1};
titlecase_once(<<"�\235\203", Erest@1/binary>>) ->
    {<<"�\235\202">>, Erest@1};
titlecase_once(<<"�\235\201", Erest@1/binary>>) ->
    {<<"�\235\200">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\234�", Erest@1/binary>>) ->
    {<<"�\234�">>, Erest@1};
titlecase_once(<<"�\232\233", Erest@1/binary>>) ->
    {<<"�\232\232">>, Erest@1};
titlecase_once(<<"�\232\231", Erest@1/binary>>) ->
    {<<"�\232\230">>, Erest@1};
titlecase_once(<<"�\232\227", Erest@1/binary>>) ->
    {<<"�\232\226">>, Erest@1};
titlecase_once(<<"�\232\225", Erest@1/binary>>) ->
    {<<"�\232\224">>, Erest@1};
titlecase_once(<<"�\232\223", Erest@1/binary>>) ->
    {<<"�\232\222">>, Erest@1};
titlecase_once(<<"�\232\221", Erest@1/binary>>) ->
    {<<"�\232\220">>, Erest@1};
titlecase_once(<<"�\232\217", Erest@1/binary>>) ->
    {<<"�\232\216">>, Erest@1};
titlecase_once(<<"�\232\215", Erest@1/binary>>) ->
    {<<"�\232\214">>, Erest@1};
titlecase_once(<<"�\232\213", Erest@1/binary>>) ->
    {<<"�\232\212">>, Erest@1};
titlecase_once(<<"�\232\211", Erest@1/binary>>) ->
    {<<"�\232\210">>, Erest@1};
titlecase_once(<<"�\232\207", Erest@1/binary>>) ->
    {<<"�\232\206">>, Erest@1};
titlecase_once(<<"�\232\205", Erest@1/binary>>) ->
    {<<"�\232\204">>, Erest@1};
titlecase_once(<<"�\232\203", Erest@1/binary>>) ->
    {<<"�\232\202">>, Erest@1};
titlecase_once(<<"�\232\201", Erest@1/binary>>) ->
    {<<"�\232\200">>, Erest@1};
titlecase_once(<<"�\231�", Erest@1/binary>>) ->
    {<<"�\231�">>, Erest@1};
titlecase_once(<<"�\231�", Erest@1/binary>>) ->
    {<<"�\231�">>, Erest@1};
titlecase_once(<<"�\231�", Erest@1/binary>>) ->
    {<<"�\231�">>, Erest@1};
titlecase_once(<<"�\231�", Erest@1/binary>>) ->
    {<<"�\231�">>, Erest@1};
titlecase_once(<<"�\231�", Erest@1/binary>>) ->
    {<<"�\231�">>, Erest@1};
titlecase_once(<<"�\231�", Erest@1/binary>>) ->
    {<<"�\231�">>, Erest@1};
titlecase_once(<<"�\231�", Erest@1/binary>>) ->
    {<<"�\231�">>, Erest@1};
titlecase_once(<<"�\231\237", Erest@1/binary>>) ->
    {<<"�\231\236">>, Erest@1};
titlecase_once(<<"�\231\235", Erest@1/binary>>) ->
    {<<"�\231\234">>, Erest@1};
titlecase_once(<<"�\231\233", Erest@1/binary>>) ->
    {<<"�\231\232">>, Erest@1};
titlecase_once(<<"�\231\231", Erest@1/binary>>) ->
    {<<"�\231\230">>, Erest@1};
titlecase_once(<<"�\231\227", Erest@1/binary>>) ->
    {<<"�\231\226">>, Erest@1};
titlecase_once(<<"�\231\225", Erest@1/binary>>) ->
    {<<"�\231\224">>, Erest@1};
titlecase_once(<<"�\231\223", Erest@1/binary>>) ->
    {<<"�\231\222">>, Erest@1};
titlecase_once(<<"�\231\221", Erest@1/binary>>) ->
    {<<"�\231\220">>, Erest@1};
titlecase_once(<<"�\231\217", Erest@1/binary>>) ->
    {<<"�\231\216">>, Erest@1};
titlecase_once(<<"�\231\215", Erest@1/binary>>) ->
    {<<"�\231\214">>, Erest@1};
titlecase_once(<<"�\231\213", Erest@1/binary>>) ->
    {<<"�\231\212">>, Erest@1};
titlecase_once(<<"�\231\211", Erest@1/binary>>) ->
    {<<"�\231\210">>, Erest@1};
titlecase_once(<<"�\231\207", Erest@1/binary>>) ->
    {<<"�\231\206">>, Erest@1};
titlecase_once(<<"�\231\205", Erest@1/binary>>) ->
    {<<"�\231\204">>, Erest@1};
titlecase_once(<<"�\231\203", Erest@1/binary>>) ->
    {<<"�\231\202">>, Erest@1};
titlecase_once(<<"�\231\201", Erest@1/binary>>) ->
    {<<"�\231\200">>, Erest@1};
titlecase_once(<<"ⴭ", Erest@1/binary>>) ->
    {<<"�\203\215">>, Erest@1};
titlecase_once(<<"ⴧ", Erest@1/binary>>) ->
    {<<"�\203\207">>, Erest@1};
titlecase_once(<<"ⴥ", Erest@1/binary>>) ->
    {<<"�\203\205">>, Erest@1};
titlecase_once(<<"ⴤ", Erest@1/binary>>) ->
    {<<"�\203\204">>, Erest@1};
titlecase_once(<<"ⴣ", Erest@1/binary>>) ->
    {<<"�\203\203">>, Erest@1};
titlecase_once(<<"ⴢ", Erest@1/binary>>) ->
    {<<"�\203\202">>, Erest@1};
titlecase_once(<<"ⴡ", Erest@1/binary>>) ->
    {<<"�\203\201">>, Erest@1};
titlecase_once(<<"ⴠ", Erest@1/binary>>) ->
    {<<"�\203\200">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\236", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\234", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\232", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\230", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\216", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\212", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"�\202�">>, Erest@1};
titlecase_once(<<"ⳳ", Erest@1/binary>>) ->
    {<<"Ⳳ">>, Erest@1};
titlecase_once(<<"ⳮ", Erest@1/binary>>) ->
    {<<"Ⳮ">>, Erest@1};
titlecase_once(<<"ⳬ", Erest@1/binary>>) ->
    {<<"Ⳬ">>, Erest@1};
titlecase_once(<<"ⳣ", Erest@1/binary>>) ->
    {<<"Ⳣ">>, Erest@1};
titlecase_once(<<"ⳡ", Erest@1/binary>>) ->
    {<<"Ⳡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ⲿ", Erest@1/binary>>) ->
    {<<"Ⲿ">>, Erest@1};
titlecase_once(<<"ⲽ", Erest@1/binary>>) ->
    {<<"Ⲽ">>, Erest@1};
titlecase_once(<<"ⲻ", Erest@1/binary>>) ->
    {<<"Ⲻ">>, Erest@1};
titlecase_once(<<"ⲹ", Erest@1/binary>>) ->
    {<<"Ⲹ">>, Erest@1};
titlecase_once(<<"ⲷ", Erest@1/binary>>) ->
    {<<"Ⲷ">>, Erest@1};
titlecase_once(<<"ⲵ", Erest@1/binary>>) ->
    {<<"Ⲵ">>, Erest@1};
titlecase_once(<<"ⲳ", Erest@1/binary>>) ->
    {<<"Ⲳ">>, Erest@1};
titlecase_once(<<"ⲱ", Erest@1/binary>>) ->
    {<<"Ⲱ">>, Erest@1};
titlecase_once(<<"ⲯ", Erest@1/binary>>) ->
    {<<"Ⲯ">>, Erest@1};
titlecase_once(<<"ⲭ", Erest@1/binary>>) ->
    {<<"Ⲭ">>, Erest@1};
titlecase_once(<<"ⲫ", Erest@1/binary>>) ->
    {<<"Ⲫ">>, Erest@1};
titlecase_once(<<"ⲩ", Erest@1/binary>>) ->
    {<<"Ⲩ">>, Erest@1};
titlecase_once(<<"ⲧ", Erest@1/binary>>) ->
    {<<"Ⲧ">>, Erest@1};
titlecase_once(<<"ⲥ", Erest@1/binary>>) ->
    {<<"Ⲥ">>, Erest@1};
titlecase_once(<<"ⲣ", Erest@1/binary>>) ->
    {<<"Ⲣ">>, Erest@1};
titlecase_once(<<"ⲡ", Erest@1/binary>>) ->
    {<<"Ⲡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ⱶ", Erest@1/binary>>) ->
    {<<"Ⱶ">>, Erest@1};
titlecase_once(<<"ⱳ", Erest@1/binary>>) ->
    {<<"Ⱳ">>, Erest@1};
titlecase_once(<<"ⱬ", Erest@1/binary>>) ->
    {<<"Ⱬ">>, Erest@1};
titlecase_once(<<"ⱪ", Erest@1/binary>>) ->
    {<<"Ⱪ">>, Erest@1};
titlecase_once(<<"ⱨ", Erest@1/binary>>) ->
    {<<"Ⱨ">>, Erest@1};
titlecase_once(<<"ⱦ", Erest@1/binary>>) ->
    {<<"Ⱦ">>, Erest@1};
titlecase_once(<<"ⱥ", Erest@1/binary>>) ->
    {<<"Ⱥ">>, Erest@1};
titlecase_once(<<"ⱡ", Erest@1/binary>>) ->
    {<<"Ⱡ">>, Erest@1};
titlecase_once(<<"�\236", Erest@1/binary>>) ->
    {<<"Ⱞ">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"Ⱝ">>, Erest@1};
titlecase_once(<<"�\234", Erest@1/binary>>) ->
    {<<"Ⱜ">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"Ⱛ">>, Erest@1};
titlecase_once(<<"�\232", Erest@1/binary>>) ->
    {<<"Ⱚ">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"Ⱙ">>, Erest@1};
titlecase_once(<<"�\230", Erest@1/binary>>) ->
    {<<"Ⱘ">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"Ⱗ">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"Ⱖ">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"Ⱕ">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"Ⱔ">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"Ⱓ">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"Ⱒ">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"Ⱑ">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"Ⱐ">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\237">>, Erest@1};
titlecase_once(<<"�\216", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\235">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\233">>, Erest@1};
titlecase_once(<<"�\212", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\227">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\225">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\223">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\221">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"ⰿ", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"ⰾ", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"ⰽ", Erest@1/binary>>) ->
    {<<"�\215">>, Erest@1};
titlecase_once(<<"ⰼ", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"ⰻ", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"ⰺ", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"ⰹ", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"ⰸ", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"ⰷ", Erest@1/binary>>) ->
    {<<"�\207">>, Erest@1};
titlecase_once(<<"ⰶ", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"ⰵ", Erest@1/binary>>) ->
    {<<"�\205">>, Erest@1};
titlecase_once(<<"ⰴ", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"ⰳ", Erest@1/binary>>) ->
    {<<"�\203">>, Erest@1};
titlecase_once(<<"ⰲ", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"ⰱ", Erest@1/binary>>) ->
    {<<"�\201">>, Erest@1};
titlecase_once(<<"ⰰ", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\217">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\216">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\215">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\214">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\213">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\212">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\211">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\210">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\207">>, Erest@1};
titlecase_once(<<"�\223�", Erest@1/binary>>) ->
    {<<"�\223\206">>, Erest@1};
titlecase_once(<<"�\223\237", Erest@1/binary>>) ->
    {<<"�\223\205">>, Erest@1};
titlecase_once(<<"�\223\236", Erest@1/binary>>) ->
    {<<"�\223\204">>, Erest@1};
titlecase_once(<<"�\223\235", Erest@1/binary>>) ->
    {<<"�\223\203">>, Erest@1};
titlecase_once(<<"�\223\234", Erest@1/binary>>) ->
    {<<"�\223\202">>, Erest@1};
titlecase_once(<<"�\223\233", Erest@1/binary>>) ->
    {<<"�\223\201">>, Erest@1};
titlecase_once(<<"�\223\232", Erest@1/binary>>) ->
    {<<"�\223\200">>, Erest@1};
titlecase_once(<<"�\223\231", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\223\230", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\223\227", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\223\226", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\223\225", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\223\224", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\223\223", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\223\222", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\223\221", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\223\220", Erest@1/binary>>) ->
    {<<"�\222�">>, Erest@1};
titlecase_once(<<"�\206\204", Erest@1/binary>>) ->
    {<<"�\206\203">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205�", Erest@1/binary>>) ->
    {<<"�\205�">>, Erest@1};
titlecase_once(<<"�\205\216", Erest@1/binary>>) ->
    {<<"�\204�">>, Erest@1};
titlecase_once(<<"ῳ", Erest@1/binary>>) ->
    {<<"ῼ">>, Erest@1};
titlecase_once(<<"ῥ", Erest@1/binary>>) ->
    {<<"Ῥ">>, Erest@1};
titlecase_once(<<"ῡ", Erest@1/binary>>) ->
    {<<"Ῡ">>, Erest@1};
titlecase_once(<<"ῠ", Erest@1/binary>>) ->
    {<<"Ῠ">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"ι", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"ᾳ", Erest@1/binary>>) ->
    {<<"ᾼ">>, Erest@1};
titlecase_once(<<"ᾱ", Erest@1/binary>>) ->
    {<<"Ᾱ">>, Erest@1};
titlecase_once(<<"ᾰ", Erest@1/binary>>) ->
    {<<"Ᾰ">>, Erest@1};
titlecase_once(<<"ᾧ", Erest@1/binary>>) ->
    {<<"ᾯ">>, Erest@1};
titlecase_once(<<"ᾦ", Erest@1/binary>>) ->
    {<<"ᾮ">>, Erest@1};
titlecase_once(<<"ᾥ", Erest@1/binary>>) ->
    {<<"ᾭ">>, Erest@1};
titlecase_once(<<"ᾤ", Erest@1/binary>>) ->
    {<<"ᾬ">>, Erest@1};
titlecase_once(<<"ᾣ", Erest@1/binary>>) ->
    {<<"ᾫ">>, Erest@1};
titlecase_once(<<"ᾢ", Erest@1/binary>>) ->
    {<<"ᾪ">>, Erest@1};
titlecase_once(<<"ᾡ", Erest@1/binary>>) ->
    {<<"ᾩ">>, Erest@1};
titlecase_once(<<"ᾠ", Erest@1/binary>>) ->
    {<<"ᾨ">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\237">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\235">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\233">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\215">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"ώ", Erest@1/binary>>) ->
    {<<"Ώ">>, Erest@1};
titlecase_once(<<"ὼ", Erest@1/binary>>) ->
    {<<"Ὼ">>, Erest@1};
titlecase_once(<<"ύ", Erest@1/binary>>) ->
    {<<"Ύ">>, Erest@1};
titlecase_once(<<"ὺ", Erest@1/binary>>) ->
    {<<"Ὺ">>, Erest@1};
titlecase_once(<<"ό", Erest@1/binary>>) ->
    {<<"Ό">>, Erest@1};
titlecase_once(<<"ὸ", Erest@1/binary>>) ->
    {<<"Ὸ">>, Erest@1};
titlecase_once(<<"ί", Erest@1/binary>>) ->
    {<<"�\233">>, Erest@1};
titlecase_once(<<"ὶ", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"ή", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"ὴ", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"έ", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"ὲ", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"ά", Erest@1/binary>>) ->
    {<<"Ά">>, Erest@1};
titlecase_once(<<"ὰ", Erest@1/binary>>) ->
    {<<"Ὰ">>, Erest@1};
titlecase_once(<<"ὧ", Erest@1/binary>>) ->
    {<<"Ὧ">>, Erest@1};
titlecase_once(<<"ὦ", Erest@1/binary>>) ->
    {<<"Ὦ">>, Erest@1};
titlecase_once(<<"ὥ", Erest@1/binary>>) ->
    {<<"Ὥ">>, Erest@1};
titlecase_once(<<"ὤ", Erest@1/binary>>) ->
    {<<"Ὤ">>, Erest@1};
titlecase_once(<<"ὣ", Erest@1/binary>>) ->
    {<<"Ὣ">>, Erest@1};
titlecase_once(<<"ὢ", Erest@1/binary>>) ->
    {<<"Ὢ">>, Erest@1};
titlecase_once(<<"ὡ", Erest@1/binary>>) ->
    {<<"Ὡ">>, Erest@1};
titlecase_once(<<"ὠ", Erest@1/binary>>) ->
    {<<"Ὠ">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\237">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\235">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\233">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\215">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"ἷ", Erest@1/binary>>) ->
    {<<"Ἷ">>, Erest@1};
titlecase_once(<<"ἶ", Erest@1/binary>>) ->
    {<<"Ἶ">>, Erest@1};
titlecase_once(<<"ἵ", Erest@1/binary>>) ->
    {<<"Ἵ">>, Erest@1};
titlecase_once(<<"ἴ", Erest@1/binary>>) ->
    {<<"Ἴ">>, Erest@1};
titlecase_once(<<"ἳ", Erest@1/binary>>) ->
    {<<"Ἳ">>, Erest@1};
titlecase_once(<<"ἲ", Erest@1/binary>>) ->
    {<<"Ἲ">>, Erest@1};
titlecase_once(<<"ἱ", Erest@1/binary>>) ->
    {<<"Ἱ">>, Erest@1};
titlecase_once(<<"ἰ", Erest@1/binary>>) ->
    {<<"Ἰ">>, Erest@1};
titlecase_once(<<"ἧ", Erest@1/binary>>) ->
    {<<"Ἧ">>, Erest@1};
titlecase_once(<<"ἦ", Erest@1/binary>>) ->
    {<<"Ἦ">>, Erest@1};
titlecase_once(<<"ἥ", Erest@1/binary>>) ->
    {<<"Ἥ">>, Erest@1};
titlecase_once(<<"ἤ", Erest@1/binary>>) ->
    {<<"Ἤ">>, Erest@1};
titlecase_once(<<"ἣ", Erest@1/binary>>) ->
    {<<"Ἣ">>, Erest@1};
titlecase_once(<<"ἢ", Erest@1/binary>>) ->
    {<<"Ἢ">>, Erest@1};
titlecase_once(<<"ἡ", Erest@1/binary>>) ->
    {<<"Ἡ">>, Erest@1};
titlecase_once(<<"ἠ", Erest@1/binary>>) ->
    {<<"Ἠ">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\235">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\233">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\215">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"ỿ", Erest@1/binary>>) ->
    {<<"Ỿ">>, Erest@1};
titlecase_once(<<"ỽ", Erest@1/binary>>) ->
    {<<"Ỽ">>, Erest@1};
titlecase_once(<<"ỻ", Erest@1/binary>>) ->
    {<<"Ỻ">>, Erest@1};
titlecase_once(<<"ỹ", Erest@1/binary>>) ->
    {<<"Ỹ">>, Erest@1};
titlecase_once(<<"ỷ", Erest@1/binary>>) ->
    {<<"Ỷ">>, Erest@1};
titlecase_once(<<"ỵ", Erest@1/binary>>) ->
    {<<"Ỵ">>, Erest@1};
titlecase_once(<<"ỳ", Erest@1/binary>>) ->
    {<<"Ỳ">>, Erest@1};
titlecase_once(<<"ự", Erest@1/binary>>) ->
    {<<"Ự">>, Erest@1};
titlecase_once(<<"ữ", Erest@1/binary>>) ->
    {<<"Ữ">>, Erest@1};
titlecase_once(<<"ử", Erest@1/binary>>) ->
    {<<"Ử">>, Erest@1};
titlecase_once(<<"ừ", Erest@1/binary>>) ->
    {<<"Ừ">>, Erest@1};
titlecase_once(<<"ứ", Erest@1/binary>>) ->
    {<<"Ứ">>, Erest@1};
titlecase_once(<<"ủ", Erest@1/binary>>) ->
    {<<"Ủ">>, Erest@1};
titlecase_once(<<"ụ", Erest@1/binary>>) ->
    {<<"Ụ">>, Erest@1};
titlecase_once(<<"ợ", Erest@1/binary>>) ->
    {<<"Ợ">>, Erest@1};
titlecase_once(<<"ỡ", Erest@1/binary>>) ->
    {<<"Ỡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ế", Erest@1/binary>>) ->
    {<<"Ế">>, Erest@1};
titlecase_once(<<"ẽ", Erest@1/binary>>) ->
    {<<"Ẽ">>, Erest@1};
titlecase_once(<<"ẻ", Erest@1/binary>>) ->
    {<<"Ẻ">>, Erest@1};
titlecase_once(<<"ẹ", Erest@1/binary>>) ->
    {<<"Ẹ">>, Erest@1};
titlecase_once(<<"ặ", Erest@1/binary>>) ->
    {<<"Ặ">>, Erest@1};
titlecase_once(<<"ẵ", Erest@1/binary>>) ->
    {<<"Ẵ">>, Erest@1};
titlecase_once(<<"ẳ", Erest@1/binary>>) ->
    {<<"Ẳ">>, Erest@1};
titlecase_once(<<"ằ", Erest@1/binary>>) ->
    {<<"Ằ">>, Erest@1};
titlecase_once(<<"ắ", Erest@1/binary>>) ->
    {<<"Ắ">>, Erest@1};
titlecase_once(<<"ậ", Erest@1/binary>>) ->
    {<<"Ậ">>, Erest@1};
titlecase_once(<<"ẫ", Erest@1/binary>>) ->
    {<<"Ẫ">>, Erest@1};
titlecase_once(<<"ẩ", Erest@1/binary>>) ->
    {<<"Ẩ">>, Erest@1};
titlecase_once(<<"ầ", Erest@1/binary>>) ->
    {<<"Ầ">>, Erest@1};
titlecase_once(<<"ấ", Erest@1/binary>>) ->
    {<<"Ấ">>, Erest@1};
titlecase_once(<<"ả", Erest@1/binary>>) ->
    {<<"Ả">>, Erest@1};
titlecase_once(<<"ạ", Erest@1/binary>>) ->
    {<<"Ạ">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"Ṡ">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ṿ", Erest@1/binary>>) ->
    {<<"Ṿ">>, Erest@1};
titlecase_once(<<"ṽ", Erest@1/binary>>) ->
    {<<"Ṽ">>, Erest@1};
titlecase_once(<<"ṻ", Erest@1/binary>>) ->
    {<<"Ṻ">>, Erest@1};
titlecase_once(<<"ṹ", Erest@1/binary>>) ->
    {<<"Ṹ">>, Erest@1};
titlecase_once(<<"ṷ", Erest@1/binary>>) ->
    {<<"Ṷ">>, Erest@1};
titlecase_once(<<"ṵ", Erest@1/binary>>) ->
    {<<"Ṵ">>, Erest@1};
titlecase_once(<<"ṳ", Erest@1/binary>>) ->
    {<<"Ṳ">>, Erest@1};
titlecase_once(<<"ṱ", Erest@1/binary>>) ->
    {<<"Ṱ">>, Erest@1};
titlecase_once(<<"ṯ", Erest@1/binary>>) ->
    {<<"Ṯ">>, Erest@1};
titlecase_once(<<"ṭ", Erest@1/binary>>) ->
    {<<"Ṭ">>, Erest@1};
titlecase_once(<<"ṫ", Erest@1/binary>>) ->
    {<<"Ṫ">>, Erest@1};
titlecase_once(<<"ṩ", Erest@1/binary>>) ->
    {<<"Ṩ">>, Erest@1};
titlecase_once(<<"ṧ", Erest@1/binary>>) ->
    {<<"Ṧ">>, Erest@1};
titlecase_once(<<"ṥ", Erest@1/binary>>) ->
    {<<"Ṥ">>, Erest@1};
titlecase_once(<<"ṣ", Erest@1/binary>>) ->
    {<<"Ṣ">>, Erest@1};
titlecase_once(<<"ṡ", Erest@1/binary>>) ->
    {<<"Ṡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ḿ", Erest@1/binary>>) ->
    {<<"Ḿ">>, Erest@1};
titlecase_once(<<"ḽ", Erest@1/binary>>) ->
    {<<"Ḽ">>, Erest@1};
titlecase_once(<<"ḻ", Erest@1/binary>>) ->
    {<<"Ḻ">>, Erest@1};
titlecase_once(<<"ḹ", Erest@1/binary>>) ->
    {<<"Ḹ">>, Erest@1};
titlecase_once(<<"ḷ", Erest@1/binary>>) ->
    {<<"Ḷ">>, Erest@1};
titlecase_once(<<"ḵ", Erest@1/binary>>) ->
    {<<"Ḵ">>, Erest@1};
titlecase_once(<<"ḳ", Erest@1/binary>>) ->
    {<<"Ḳ">>, Erest@1};
titlecase_once(<<"ḱ", Erest@1/binary>>) ->
    {<<"Ḱ">>, Erest@1};
titlecase_once(<<"ḯ", Erest@1/binary>>) ->
    {<<"Ḯ">>, Erest@1};
titlecase_once(<<"ḭ", Erest@1/binary>>) ->
    {<<"Ḭ">>, Erest@1};
titlecase_once(<<"ḫ", Erest@1/binary>>) ->
    {<<"Ḫ">>, Erest@1};
titlecase_once(<<"ḩ", Erest@1/binary>>) ->
    {<<"Ḩ">>, Erest@1};
titlecase_once(<<"ḧ", Erest@1/binary>>) ->
    {<<"Ḧ">>, Erest@1};
titlecase_once(<<"ḥ", Erest@1/binary>>) ->
    {<<"Ḥ">>, Erest@1};
titlecase_once(<<"ḣ", Erest@1/binary>>) ->
    {<<"Ḣ">>, Erest@1};
titlecase_once(<<"ḡ", Erest@1/binary>>) ->
    {<<"Ḡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ᵽ", Erest@1/binary>>) ->
    {<<"Ᵽ">>, Erest@1};
titlecase_once(<<"ᵹ", Erest@1/binary>>) ->
    {<<"�\235�">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"�\231\212">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"Ѣ">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"Ъ">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"Т">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"Т">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"С">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\217�", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"�\217�", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"�\217�", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"�\217�", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"�\217�", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"�\217�", Erest@1/binary>>) ->
    {<<"�\217�">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\225">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\223">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\221">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"տ", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"վ", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"ս", Erest@1/binary>>) ->
    {<<"�\215">>, Erest@1};
titlecase_once(<<"ռ", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"ջ", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"պ", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"չ", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"ո", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"շ", Erest@1/binary>>) ->
    {<<"�\207">>, Erest@1};
titlecase_once(<<"ն", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"յ", Erest@1/binary>>) ->
    {<<"�\205">>, Erest@1};
titlecase_once(<<"մ", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"ճ", Erest@1/binary>>) ->
    {<<"�\203">>, Erest@1};
titlecase_once(<<"ղ", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"ձ", Erest@1/binary>>) ->
    {<<"�\201">>, Erest@1};
titlecase_once(<<"հ", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"կ", Erest@1/binary>>) ->
    {<<"Կ">>, Erest@1};
titlecase_once(<<"ծ", Erest@1/binary>>) ->
    {<<"Ծ">>, Erest@1};
titlecase_once(<<"խ", Erest@1/binary>>) ->
    {<<"Խ">>, Erest@1};
titlecase_once(<<"լ", Erest@1/binary>>) ->
    {<<"Լ">>, Erest@1};
titlecase_once(<<"ի", Erest@1/binary>>) ->
    {<<"Ի">>, Erest@1};
titlecase_once(<<"ժ", Erest@1/binary>>) ->
    {<<"Ժ">>, Erest@1};
titlecase_once(<<"թ", Erest@1/binary>>) ->
    {<<"Թ">>, Erest@1};
titlecase_once(<<"ը", Erest@1/binary>>) ->
    {<<"Ը">>, Erest@1};
titlecase_once(<<"է", Erest@1/binary>>) ->
    {<<"Է">>, Erest@1};
titlecase_once(<<"զ", Erest@1/binary>>) ->
    {<<"Զ">>, Erest@1};
titlecase_once(<<"ե", Erest@1/binary>>) ->
    {<<"Ե">>, Erest@1};
titlecase_once(<<"դ", Erest@1/binary>>) ->
    {<<"Դ">>, Erest@1};
titlecase_once(<<"գ", Erest@1/binary>>) ->
    {<<"Գ">>, Erest@1};
titlecase_once(<<"բ", Erest@1/binary>>) ->
    {<<"Բ">>, Erest@1};
titlecase_once(<<"ա", Erest@1/binary>>) ->
    {<<"Ա">>, Erest@1};
titlecase_once(<<"ԯ", Erest@1/binary>>) ->
    {<<"Ԯ">>, Erest@1};
titlecase_once(<<"ԭ", Erest@1/binary>>) ->
    {<<"Ԭ">>, Erest@1};
titlecase_once(<<"ԫ", Erest@1/binary>>) ->
    {<<"Ԫ">>, Erest@1};
titlecase_once(<<"ԩ", Erest@1/binary>>) ->
    {<<"Ԩ">>, Erest@1};
titlecase_once(<<"ԧ", Erest@1/binary>>) ->
    {<<"Ԧ">>, Erest@1};
titlecase_once(<<"ԥ", Erest@1/binary>>) ->
    {<<"Ԥ">>, Erest@1};
titlecase_once(<<"ԣ", Erest@1/binary>>) ->
    {<<"Ԣ">>, Erest@1};
titlecase_once(<<"ԡ", Erest@1/binary>>) ->
    {<<"Ԡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ӿ", Erest@1/binary>>) ->
    {<<"Ӿ">>, Erest@1};
titlecase_once(<<"ӽ", Erest@1/binary>>) ->
    {<<"Ӽ">>, Erest@1};
titlecase_once(<<"ӻ", Erest@1/binary>>) ->
    {<<"Ӻ">>, Erest@1};
titlecase_once(<<"ӹ", Erest@1/binary>>) ->
    {<<"Ӹ">>, Erest@1};
titlecase_once(<<"ӷ", Erest@1/binary>>) ->
    {<<"Ӷ">>, Erest@1};
titlecase_once(<<"ӵ", Erest@1/binary>>) ->
    {<<"Ӵ">>, Erest@1};
titlecase_once(<<"ӳ", Erest@1/binary>>) ->
    {<<"Ӳ">>, Erest@1};
titlecase_once(<<"ӱ", Erest@1/binary>>) ->
    {<<"Ӱ">>, Erest@1};
titlecase_once(<<"ӯ", Erest@1/binary>>) ->
    {<<"Ӯ">>, Erest@1};
titlecase_once(<<"ӭ", Erest@1/binary>>) ->
    {<<"Ӭ">>, Erest@1};
titlecase_once(<<"ӫ", Erest@1/binary>>) ->
    {<<"Ӫ">>, Erest@1};
titlecase_once(<<"ө", Erest@1/binary>>) ->
    {<<"Ө">>, Erest@1};
titlecase_once(<<"ӧ", Erest@1/binary>>) ->
    {<<"Ӧ">>, Erest@1};
titlecase_once(<<"ӥ", Erest@1/binary>>) ->
    {<<"Ӥ">>, Erest@1};
titlecase_once(<<"ӣ", Erest@1/binary>>) ->
    {<<"Ӣ">>, Erest@1};
titlecase_once(<<"ӡ", Erest@1/binary>>) ->
    {<<"Ӡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"�\216", Erest@1/binary>>) ->
    {<<"�\215">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"�\212", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"�\207">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\205">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\203">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\201">>, Erest@1};
titlecase_once(<<"ҿ", Erest@1/binary>>) ->
    {<<"Ҿ">>, Erest@1};
titlecase_once(<<"ҽ", Erest@1/binary>>) ->
    {<<"Ҽ">>, Erest@1};
titlecase_once(<<"һ", Erest@1/binary>>) ->
    {<<"Һ">>, Erest@1};
titlecase_once(<<"ҹ", Erest@1/binary>>) ->
    {<<"Ҹ">>, Erest@1};
titlecase_once(<<"ҷ", Erest@1/binary>>) ->
    {<<"Ҷ">>, Erest@1};
titlecase_once(<<"ҵ", Erest@1/binary>>) ->
    {<<"Ҵ">>, Erest@1};
titlecase_once(<<"ҳ", Erest@1/binary>>) ->
    {<<"Ҳ">>, Erest@1};
titlecase_once(<<"ұ", Erest@1/binary>>) ->
    {<<"Ұ">>, Erest@1};
titlecase_once(<<"ү", Erest@1/binary>>) ->
    {<<"Ү">>, Erest@1};
titlecase_once(<<"ҭ", Erest@1/binary>>) ->
    {<<"Ҭ">>, Erest@1};
titlecase_once(<<"ҫ", Erest@1/binary>>) ->
    {<<"Ҫ">>, Erest@1};
titlecase_once(<<"ҩ", Erest@1/binary>>) ->
    {<<"Ҩ">>, Erest@1};
titlecase_once(<<"ҧ", Erest@1/binary>>) ->
    {<<"Ҧ">>, Erest@1};
titlecase_once(<<"ҥ", Erest@1/binary>>) ->
    {<<"Ҥ">>, Erest@1};
titlecase_once(<<"ң", Erest@1/binary>>) ->
    {<<"Ң">>, Erest@1};
titlecase_once(<<"ҡ", Erest@1/binary>>) ->
    {<<"Ҡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ѿ", Erest@1/binary>>) ->
    {<<"Ѿ">>, Erest@1};
titlecase_once(<<"ѽ", Erest@1/binary>>) ->
    {<<"Ѽ">>, Erest@1};
titlecase_once(<<"ѻ", Erest@1/binary>>) ->
    {<<"Ѻ">>, Erest@1};
titlecase_once(<<"ѹ", Erest@1/binary>>) ->
    {<<"Ѹ">>, Erest@1};
titlecase_once(<<"ѷ", Erest@1/binary>>) ->
    {<<"Ѷ">>, Erest@1};
titlecase_once(<<"ѵ", Erest@1/binary>>) ->
    {<<"Ѵ">>, Erest@1};
titlecase_once(<<"ѳ", Erest@1/binary>>) ->
    {<<"Ѳ">>, Erest@1};
titlecase_once(<<"ѱ", Erest@1/binary>>) ->
    {<<"Ѱ">>, Erest@1};
titlecase_once(<<"ѯ", Erest@1/binary>>) ->
    {<<"Ѯ">>, Erest@1};
titlecase_once(<<"ѭ", Erest@1/binary>>) ->
    {<<"Ѭ">>, Erest@1};
titlecase_once(<<"ѫ", Erest@1/binary>>) ->
    {<<"Ѫ">>, Erest@1};
titlecase_once(<<"ѩ", Erest@1/binary>>) ->
    {<<"Ѩ">>, Erest@1};
titlecase_once(<<"ѧ", Erest@1/binary>>) ->
    {<<"Ѧ">>, Erest@1};
titlecase_once(<<"ѥ", Erest@1/binary>>) ->
    {<<"Ѥ">>, Erest@1};
titlecase_once(<<"ѣ", Erest@1/binary>>) ->
    {<<"Ѣ">>, Erest@1};
titlecase_once(<<"ѡ", Erest@1/binary>>) ->
    {<<"Ѡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"�\236", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\215">>, Erest@1};
titlecase_once(<<"�\234", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"�\232", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"�\230", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\207">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\205">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\203">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\201">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"Я">>, Erest@1};
titlecase_once(<<"�\216", Erest@1/binary>>) ->
    {<<"Ю">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"Э">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"Ь">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"Ы">>, Erest@1};
titlecase_once(<<"�\212", Erest@1/binary>>) ->
    {<<"Ъ">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"Щ">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"Ш">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"Ч">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"Ц">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"Х">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"Ф">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"У">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"Т">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"С">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"Р">>, Erest@1};
titlecase_once(<<"п", Erest@1/binary>>) ->
    {<<"�\237">>, Erest@1};
titlecase_once(<<"о", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"н", Erest@1/binary>>) ->
    {<<"�\235">>, Erest@1};
titlecase_once(<<"м", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"л", Erest@1/binary>>) ->
    {<<"�\233">>, Erest@1};
titlecase_once(<<"к", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"й", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"и", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"з", Erest@1/binary>>) ->
    {<<"�\227">>, Erest@1};
titlecase_once(<<"ж", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"е", Erest@1/binary>>) ->
    {<<"�\225">>, Erest@1};
titlecase_once(<<"д", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"г", Erest@1/binary>>) ->
    {<<"�\223">>, Erest@1};
titlecase_once(<<"в", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"б", Erest@1/binary>>) ->
    {<<"�\221">>, Erest@1};
titlecase_once(<<"а", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"ϻ", Erest@1/binary>>) ->
    {<<"Ϻ">>, Erest@1};
titlecase_once(<<"ϸ", Erest@1/binary>>) ->
    {<<"Ϸ">>, Erest@1};
titlecase_once(<<"ϵ", Erest@1/binary>>) ->
    {<<"�\225">>, Erest@1};
titlecase_once(<<"ϳ", Erest@1/binary>>) ->
    {<<"Ϳ">>, Erest@1};
titlecase_once(<<"ϲ", Erest@1/binary>>) ->
    {<<"Ϲ">>, Erest@1};
titlecase_once(<<"ϱ", Erest@1/binary>>) ->
    {<<"Ρ">>, Erest@1};
titlecase_once(<<"ϰ", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"ϯ", Erest@1/binary>>) ->
    {<<"Ϯ">>, Erest@1};
titlecase_once(<<"ϭ", Erest@1/binary>>) ->
    {<<"Ϭ">>, Erest@1};
titlecase_once(<<"ϫ", Erest@1/binary>>) ->
    {<<"Ϫ">>, Erest@1};
titlecase_once(<<"ϩ", Erest@1/binary>>) ->
    {<<"Ϩ">>, Erest@1};
titlecase_once(<<"ϧ", Erest@1/binary>>) ->
    {<<"Ϧ">>, Erest@1};
titlecase_once(<<"ϥ", Erest@1/binary>>) ->
    {<<"Ϥ">>, Erest@1};
titlecase_once(<<"ϣ", Erest@1/binary>>) ->
    {<<"Ϣ">>, Erest@1};
titlecase_once(<<"ϡ", Erest@1/binary>>) ->
    {<<"Ϡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"Π">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"Φ">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\216", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"Ϋ">>, Erest@1};
titlecase_once(<<"�\212", Erest@1/binary>>) ->
    {<<"Ϊ">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"Ω">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"Ψ">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"Χ">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"Φ">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"Υ">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"Τ">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"Σ">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"Σ">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"Ρ">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"Π">>, Erest@1};
titlecase_once(<<"ο", Erest@1/binary>>) ->
    {<<"�\237">>, Erest@1};
titlecase_once(<<"ξ", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"ν", Erest@1/binary>>) ->
    {<<"�\235">>, Erest@1};
titlecase_once(<<"μ", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"λ", Erest@1/binary>>) ->
    {<<"�\233">>, Erest@1};
titlecase_once(<<"κ", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"ι", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"θ", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"η", Erest@1/binary>>) ->
    {<<"�\227">>, Erest@1};
titlecase_once(<<"ζ", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"ε", Erest@1/binary>>) ->
    {<<"�\225">>, Erest@1};
titlecase_once(<<"δ", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"γ", Erest@1/binary>>) ->
    {<<"�\223">>, Erest@1};
titlecase_once(<<"β", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"α", Erest@1/binary>>) ->
    {<<"�\221">>, Erest@1};
titlecase_once(<<"ί", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"ή", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"έ", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"ά", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"ͽ", Erest@1/binary>>) ->
    {<<"Ͽ">>, Erest@1};
titlecase_once(<<"ͼ", Erest@1/binary>>) ->
    {<<"Ͼ">>, Erest@1};
titlecase_once(<<"ͻ", Erest@1/binary>>) ->
    {<<"Ͻ">>, Erest@1};
titlecase_once(<<"ͷ", Erest@1/binary>>) ->
    {<<"Ͷ">>, Erest@1};
titlecase_once(<<"ͳ", Erest@1/binary>>) ->
    {<<"Ͳ">>, Erest@1};
titlecase_once(<<"ͱ", Erest@1/binary>>) ->
    {<<"Ͱ">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"�\236", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"Ʒ">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"�\205">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"Ʋ">>, Erest@1};
titlecase_once(<<"�\212", Erest@1/binary>>) ->
    {<<"Ʊ">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"Ʈ">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"Ʃ">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"Ʀ">>, Erest@1};
titlecase_once(<<"ɽ", Erest@1/binary>>) ->
    {<<"Ɽ">>, Erest@1};
titlecase_once(<<"ɵ", Erest@1/binary>>) ->
    {<<"�\237">>, Erest@1};
titlecase_once(<<"ɲ", Erest@1/binary>>) ->
    {<<"�\235">>, Erest@1};
titlecase_once(<<"ɱ", Erest@1/binary>>) ->
    {<<"Ɱ">>, Erest@1};
titlecase_once(<<"ɯ", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"ɬ", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"ɫ", Erest@1/binary>>) ->
    {<<"Ɫ">>, Erest@1};
titlecase_once(<<"ɪ", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"ɩ", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"ɨ", Erest@1/binary>>) ->
    {<<"�\227">>, Erest@1};
titlecase_once(<<"ɦ", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"ɥ", Erest@1/binary>>) ->
    {<<"�\236\215">>, Erest@1};
titlecase_once(<<"ɣ", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"ɡ", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"ɠ", Erest@1/binary>>) ->
    {<<"�\223">>, Erest@1};
titlecase_once(<<"�\234", Erest@1/binary>>) ->
    {<<"�\236�">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\201">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"Ɒ">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"Ɑ">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"Ɐ">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\201">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"Ɀ">>, Erest@1};
titlecase_once(<<"ȿ", Erest@1/binary>>) ->
    {<<"Ȿ">>, Erest@1};
titlecase_once(<<"ȼ", Erest@1/binary>>) ->
    {<<"Ȼ">>, Erest@1};
titlecase_once(<<"ȳ", Erest@1/binary>>) ->
    {<<"Ȳ">>, Erest@1};
titlecase_once(<<"ȱ", Erest@1/binary>>) ->
    {<<"Ȱ">>, Erest@1};
titlecase_once(<<"ȯ", Erest@1/binary>>) ->
    {<<"Ȯ">>, Erest@1};
titlecase_once(<<"ȭ", Erest@1/binary>>) ->
    {<<"Ȭ">>, Erest@1};
titlecase_once(<<"ȫ", Erest@1/binary>>) ->
    {<<"Ȫ">>, Erest@1};
titlecase_once(<<"ȩ", Erest@1/binary>>) ->
    {<<"Ȩ">>, Erest@1};
titlecase_once(<<"ȧ", Erest@1/binary>>) ->
    {<<"Ȧ">>, Erest@1};
titlecase_once(<<"ȥ", Erest@1/binary>>) ->
    {<<"Ȥ">>, Erest@1};
titlecase_once(<<"ȣ", Erest@1/binary>>) ->
    {<<"Ȣ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ǿ", Erest@1/binary>>) ->
    {<<"Ǿ">>, Erest@1};
titlecase_once(<<"ǽ", Erest@1/binary>>) ->
    {<<"Ǽ">>, Erest@1};
titlecase_once(<<"ǻ", Erest@1/binary>>) ->
    {<<"Ǻ">>, Erest@1};
titlecase_once(<<"ǹ", Erest@1/binary>>) ->
    {<<"Ǹ">>, Erest@1};
titlecase_once(<<"ǵ", Erest@1/binary>>) ->
    {<<"Ǵ">>, Erest@1};
titlecase_once(<<"ǳ", Erest@1/binary>>) ->
    {<<"ǲ">>, Erest@1};
titlecase_once(<<"Ǳ", Erest@1/binary>>) ->
    {<<"ǲ">>, Erest@1};
titlecase_once(<<"ǯ", Erest@1/binary>>) ->
    {<<"Ǯ">>, Erest@1};
titlecase_once(<<"ǭ", Erest@1/binary>>) ->
    {<<"Ǭ">>, Erest@1};
titlecase_once(<<"ǫ", Erest@1/binary>>) ->
    {<<"Ǫ">>, Erest@1};
titlecase_once(<<"ǩ", Erest@1/binary>>) ->
    {<<"Ǩ">>, Erest@1};
titlecase_once(<<"ǧ", Erest@1/binary>>) ->
    {<<"Ǧ">>, Erest@1};
titlecase_once(<<"ǥ", Erest@1/binary>>) ->
    {<<"Ǥ">>, Erest@1};
titlecase_once(<<"ǣ", Erest@1/binary>>) ->
    {<<"Ǣ">>, Erest@1};
titlecase_once(<<"ǡ", Erest@1/binary>>) ->
    {<<"Ǡ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\234", Erest@1/binary>>) ->
    {<<"�\233">>, Erest@1};
titlecase_once(<<"�\232", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"�\230", Erest@1/binary>>) ->
    {<<"�\227">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"�\225">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"�\223">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"�\221">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"�\216", Erest@1/binary>>) ->
    {<<"�\215">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"�\212", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\205">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\205">>, Erest@1};
titlecase_once(<<"ƿ", Erest@1/binary>>) ->
    {<<"Ƿ">>, Erest@1};
titlecase_once(<<"ƽ", Erest@1/binary>>) ->
    {<<"Ƽ">>, Erest@1};
titlecase_once(<<"ƹ", Erest@1/binary>>) ->
    {<<"Ƹ">>, Erest@1};
titlecase_once(<<"ƶ", Erest@1/binary>>) ->
    {<<"Ƶ">>, Erest@1};
titlecase_once(<<"ƴ", Erest@1/binary>>) ->
    {<<"Ƴ">>, Erest@1};
titlecase_once(<<"ư", Erest@1/binary>>) ->
    {<<"Ư">>, Erest@1};
titlecase_once(<<"ƭ", Erest@1/binary>>) ->
    {<<"Ƭ">>, Erest@1};
titlecase_once(<<"ƨ", Erest@1/binary>>) ->
    {<<"Ƨ">>, Erest@1};
titlecase_once(<<"ƥ", Erest@1/binary>>) ->
    {<<"Ƥ">>, Erest@1};
titlecase_once(<<"ƣ", Erest@1/binary>>) ->
    {<<"Ƣ">>, Erest@1};
titlecase_once(<<"ơ", Erest@1/binary>>) ->
    {<<"Ơ">>, Erest@1};
titlecase_once(<<"�\236", Erest@1/binary>>) ->
    {<<"Ƞ">>, Erest@1};
titlecase_once(<<"�\232", Erest@1/binary>>) ->
    {<<"Ƚ">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"Ƕ">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"�\221">>, Erest@1};
titlecase_once(<<"�\214", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"�\207">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"�\203">>, Erest@1};
titlecase_once(<<"ſ", Erest@1/binary>>) ->
    {<<"S">>, Erest@1};
titlecase_once(<<"ž", Erest@1/binary>>) ->
    {<<"Ž">>, Erest@1};
titlecase_once(<<"ż", Erest@1/binary>>) ->
    {<<"Ż">>, Erest@1};
titlecase_once(<<"ź", Erest@1/binary>>) ->
    {<<"Ź">>, Erest@1};
titlecase_once(<<"ŷ", Erest@1/binary>>) ->
    {<<"Ŷ">>, Erest@1};
titlecase_once(<<"ŵ", Erest@1/binary>>) ->
    {<<"Ŵ">>, Erest@1};
titlecase_once(<<"ų", Erest@1/binary>>) ->
    {<<"Ų">>, Erest@1};
titlecase_once(<<"ű", Erest@1/binary>>) ->
    {<<"Ű">>, Erest@1};
titlecase_once(<<"ů", Erest@1/binary>>) ->
    {<<"Ů">>, Erest@1};
titlecase_once(<<"ŭ", Erest@1/binary>>) ->
    {<<"Ŭ">>, Erest@1};
titlecase_once(<<"ū", Erest@1/binary>>) ->
    {<<"Ū">>, Erest@1};
titlecase_once(<<"ũ", Erest@1/binary>>) ->
    {<<"Ũ">>, Erest@1};
titlecase_once(<<"ŧ", Erest@1/binary>>) ->
    {<<"Ŧ">>, Erest@1};
titlecase_once(<<"ť", Erest@1/binary>>) ->
    {<<"Ť">>, Erest@1};
titlecase_once(<<"ţ", Erest@1/binary>>) ->
    {<<"Ţ">>, Erest@1};
titlecase_once(<<"š", Erest@1/binary>>) ->
    {<<"Š">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\210", Erest@1/binary>>) ->
    {<<"�\207">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\205">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\203">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\201">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"Ŀ">>, Erest@1};
titlecase_once(<<"ľ", Erest@1/binary>>) ->
    {<<"Ľ">>, Erest@1};
titlecase_once(<<"ļ", Erest@1/binary>>) ->
    {<<"Ļ">>, Erest@1};
titlecase_once(<<"ĺ", Erest@1/binary>>) ->
    {<<"Ĺ">>, Erest@1};
titlecase_once(<<"ķ", Erest@1/binary>>) ->
    {<<"Ķ">>, Erest@1};
titlecase_once(<<"ĵ", Erest@1/binary>>) ->
    {<<"Ĵ">>, Erest@1};
titlecase_once(<<"ĳ", Erest@1/binary>>) ->
    {<<"Ĳ">>, Erest@1};
titlecase_once(<<"ı", Erest@1/binary>>) ->
    {<<"I">>, Erest@1};
titlecase_once(<<"į", Erest@1/binary>>) ->
    {<<"Į">>, Erest@1};
titlecase_once(<<"ĭ", Erest@1/binary>>) ->
    {<<"Ĭ">>, Erest@1};
titlecase_once(<<"ī", Erest@1/binary>>) ->
    {<<"Ī">>, Erest@1};
titlecase_once(<<"ĩ", Erest@1/binary>>) ->
    {<<"Ĩ">>, Erest@1};
titlecase_once(<<"ħ", Erest@1/binary>>) ->
    {<<"Ħ">>, Erest@1};
titlecase_once(<<"ĥ", Erest@1/binary>>) ->
    {<<"Ĥ">>, Erest@1};
titlecase_once(<<"ģ", Erest@1/binary>>) ->
    {<<"Ģ">>, Erest@1};
titlecase_once(<<"ġ", Erest@1/binary>>) ->
    {<<"Ġ">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"�\235", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"�\233", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"�\221", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"�\217", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"�\215", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"�\213", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"ÿ", Erest@1/binary>>) ->
    {<<"Ÿ">>, Erest@1};
titlecase_once(<<"þ", Erest@1/binary>>) ->
    {<<"�\236">>, Erest@1};
titlecase_once(<<"ý", Erest@1/binary>>) ->
    {<<"�\235">>, Erest@1};
titlecase_once(<<"ü", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"û", Erest@1/binary>>) ->
    {<<"�\233">>, Erest@1};
titlecase_once(<<"ú", Erest@1/binary>>) ->
    {<<"�\232">>, Erest@1};
titlecase_once(<<"ù", Erest@1/binary>>) ->
    {<<"�\231">>, Erest@1};
titlecase_once(<<"ø", Erest@1/binary>>) ->
    {<<"�\230">>, Erest@1};
titlecase_once(<<"ö", Erest@1/binary>>) ->
    {<<"�\226">>, Erest@1};
titlecase_once(<<"õ", Erest@1/binary>>) ->
    {<<"�\225">>, Erest@1};
titlecase_once(<<"ô", Erest@1/binary>>) ->
    {<<"�\224">>, Erest@1};
titlecase_once(<<"ó", Erest@1/binary>>) ->
    {<<"�\223">>, Erest@1};
titlecase_once(<<"ò", Erest@1/binary>>) ->
    {<<"�\222">>, Erest@1};
titlecase_once(<<"ñ", Erest@1/binary>>) ->
    {<<"�\221">>, Erest@1};
titlecase_once(<<"ð", Erest@1/binary>>) ->
    {<<"�\220">>, Erest@1};
titlecase_once(<<"ï", Erest@1/binary>>) ->
    {<<"�\217">>, Erest@1};
titlecase_once(<<"î", Erest@1/binary>>) ->
    {<<"�\216">>, Erest@1};
titlecase_once(<<"í", Erest@1/binary>>) ->
    {<<"�\215">>, Erest@1};
titlecase_once(<<"ì", Erest@1/binary>>) ->
    {<<"�\214">>, Erest@1};
titlecase_once(<<"ë", Erest@1/binary>>) ->
    {<<"�\213">>, Erest@1};
titlecase_once(<<"ê", Erest@1/binary>>) ->
    {<<"�\212">>, Erest@1};
titlecase_once(<<"é", Erest@1/binary>>) ->
    {<<"�\211">>, Erest@1};
titlecase_once(<<"è", Erest@1/binary>>) ->
    {<<"�\210">>, Erest@1};
titlecase_once(<<"ç", Erest@1/binary>>) ->
    {<<"�\207">>, Erest@1};
titlecase_once(<<"æ", Erest@1/binary>>) ->
    {<<"�\206">>, Erest@1};
titlecase_once(<<"å", Erest@1/binary>>) ->
    {<<"�\205">>, Erest@1};
titlecase_once(<<"ä", Erest@1/binary>>) ->
    {<<"�\204">>, Erest@1};
titlecase_once(<<"ã", Erest@1/binary>>) ->
    {<<"�\203">>, Erest@1};
titlecase_once(<<"â", Erest@1/binary>>) ->
    {<<"�\202">>, Erest@1};
titlecase_once(<<"á", Erest@1/binary>>) ->
    {<<"�\201">>, Erest@1};
titlecase_once(<<"à", Erest@1/binary>>) ->
    {<<"�\200">>, Erest@1};
titlecase_once(<<"µ", Erest@1/binary>>) ->
    {<<"�\234">>, Erest@1};
titlecase_once(<<"z", Erest@1/binary>>) ->
    {<<"Z">>, Erest@1};
titlecase_once(<<"y", Erest@1/binary>>) ->
    {<<"Y">>, Erest@1};
titlecase_once(<<"x", Erest@1/binary>>) ->
    {<<"X">>, Erest@1};
titlecase_once(<<"w", Erest@1/binary>>) ->
    {<<"W">>, Erest@1};
titlecase_once(<<"v", Erest@1/binary>>) ->
    {<<"V">>, Erest@1};
titlecase_once(<<"u", Erest@1/binary>>) ->
    {<<"U">>, Erest@1};
titlecase_once(<<"t", Erest@1/binary>>) ->
    {<<"T">>, Erest@1};
titlecase_once(<<"s", Erest@1/binary>>) ->
    {<<"S">>, Erest@1};
titlecase_once(<<"r", Erest@1/binary>>) ->
    {<<"R">>, Erest@1};
titlecase_once(<<"q", Erest@1/binary>>) ->
    {<<"Q">>, Erest@1};
titlecase_once(<<"p", Erest@1/binary>>) ->
    {<<"P">>, Erest@1};
titlecase_once(<<"o", Erest@1/binary>>) ->
    {<<"O">>, Erest@1};
titlecase_once(<<"n", Erest@1/binary>>) ->
    {<<"N">>, Erest@1};
titlecase_once(<<"m", Erest@1/binary>>) ->
    {<<"M">>, Erest@1};
titlecase_once(<<"l", Erest@1/binary>>) ->
    {<<"L">>, Erest@1};
titlecase_once(<<"k", Erest@1/binary>>) ->
    {<<"K">>, Erest@1};
titlecase_once(<<"j", Erest@1/binary>>) ->
    {<<"J">>, Erest@1};
titlecase_once(<<"i", Erest@1/binary>>) ->
    {<<"I">>, Erest@1};
titlecase_once(<<"h", Erest@1/binary>>) ->
    {<<"H">>, Erest@1};
titlecase_once(<<"g", Erest@1/binary>>) ->
    {<<"G">>, Erest@1};
titlecase_once(<<"f", Erest@1/binary>>) ->
    {<<"F">>, Erest@1};
titlecase_once(<<"e", Erest@1/binary>>) ->
    {<<"E">>, Erest@1};
titlecase_once(<<"d", Erest@1/binary>>) ->
    {<<"D">>, Erest@1};
titlecase_once(<<"c", Erest@1/binary>>) ->
    {<<"C">>, Erest@1};
titlecase_once(<<"b", Erest@1/binary>>) ->
    {<<"B">>, Erest@1};
titlecase_once(<<"a", Erest@1/binary>>) ->
    {<<"A">>, Erest@1};
titlecase_once(<<"�\237", Erest@1/binary>>) ->
    {<<"Ss">>, Erest@1};
titlecase_once(<<"�\200", Erest@1/binary>>) ->
    {<<"Ff">>, Erest@1};
titlecase_once(<<"�\201", Erest@1/binary>>) ->
    {<<"Fi">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"Fl">>, Erest@1};
titlecase_once(<<"�\203", Erest@1/binary>>) ->
    {<<"Ffi">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"Ffl">>, Erest@1};
titlecase_once(<<"�\205", Erest@1/binary>>) ->
    {<<"St">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"St">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"Ե�\202">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\204ն">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"�\204ե">>, Erest@1};
titlecase_once(<<"�\225", Erest@1/binary>>) ->
    {<<"�\204ի">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"�\216ն">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\204խ">>, Erest@1};
titlecase_once(<<"�\211", Erest@1/binary>>) ->
    {<<"ʼN">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"�\231�\210�\201">>, Erest@1};
titlecase_once(<<"ΰ", Erest@1/binary>>) ->
    {<<"Υ�\210�\201">>, Erest@1};
titlecase_once(<<"ǰ", Erest@1/binary>>) ->
    {<<"J�\214">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"H̱">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"T�\210">>, Erest@1};
titlecase_once(<<"�\230", Erest@1/binary>>) ->
    {<<"W�\212">>, Erest@1};
titlecase_once(<<"�\231", Erest@1/binary>>) ->
    {<<"Y�\212">>, Erest@1};
titlecase_once(<<"�\232", Erest@1/binary>>) ->
    {<<"Aʾ">>, Erest@1};
titlecase_once(<<"�\220", Erest@1/binary>>) ->
    {<<"Υ�\223">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"Υ�\223�\200">>, Erest@1};
titlecase_once(<<"�\224", Erest@1/binary>>) ->
    {<<"Υ�\223�\201">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"Υ�\223�\202">>, Erest@1};
titlecase_once(<<"ᾶ", Erest@1/binary>>) ->
    {<<"�\221�\202">>, Erest@1};
titlecase_once(<<"�\206", Erest@1/binary>>) ->
    {<<"�\227�\202">>, Erest@1};
titlecase_once(<<"�\222", Erest@1/binary>>) ->
    {<<"�\231�\210�\200">>, Erest@1};
titlecase_once(<<"�\223", Erest@1/binary>>) ->
    {<<"�\231�\210�\201">>, Erest@1};
titlecase_once(<<"�\226", Erest@1/binary>>) ->
    {<<"�\231�\202">>, Erest@1};
titlecase_once(<<"�\227", Erest@1/binary>>) ->
    {<<"�\231�\210�\202">>, Erest@1};
titlecase_once(<<"ῢ", Erest@1/binary>>) ->
    {<<"Υ�\210�\200">>, Erest@1};
titlecase_once(<<"ΰ", Erest@1/binary>>) ->
    {<<"Υ�\210�\201">>, Erest@1};
titlecase_once(<<"ῤ", Erest@1/binary>>) ->
    {<<"Ρ�\223">>, Erest@1};
titlecase_once(<<"ῦ", Erest@1/binary>>) ->
    {<<"Υ�\202">>, Erest@1};
titlecase_once(<<"ῧ", Erest@1/binary>>) ->
    {<<"Υ�\210�\202">>, Erest@1};
titlecase_once(<<"ῶ", Erest@1/binary>>) ->
    {<<"Ω�\202">>, Erest@1};
titlecase_once(<<"ᾲ", Erest@1/binary>>) ->
    {<<"Ὰ�\205">>, Erest@1};
titlecase_once(<<"ᾴ", Erest@1/binary>>) ->
    {<<"�\206�\205">>, Erest@1};
titlecase_once(<<"�\202", Erest@1/binary>>) ->
    {<<"�\212�\205">>, Erest@1};
titlecase_once(<<"�\204", Erest@1/binary>>) ->
    {<<"�\211�\205">>, Erest@1};
titlecase_once(<<"ῲ", Erest@1/binary>>) ->
    {<<"Ὼ�\205">>, Erest@1};
titlecase_once(<<"ῴ", Erest@1/binary>>) ->
    {<<"�\217�\205">>, Erest@1};
titlecase_once(<<"ᾷ", Erest@1/binary>>) ->
    {<<"�\221�\202�\205">>, Erest@1};
titlecase_once(<<"�\207", Erest@1/binary>>) ->
    {<<"�\227�\202�\205">>, Erest@1};
titlecase_once(<<"ῷ", Erest@1/binary>>) ->
    {<<"Ω�\202�\205">>, Erest@1};
titlecase_once(<<Echar@1, Erest@1/binary>>) ->
    {<<Echar@1>>, Erest@1}.

upcase(Estring@1) -> upcase(Estring@1, <<>>).

upcase(<<"�\236�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
upcase(<<"�\236�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236��">>);
upcase(<<"�\236�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\237">>);
upcase(<<"�\236�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\236">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\235">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\234">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\233">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\232">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\231">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\230">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\227">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\226">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\225">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\224">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\223">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\222">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\221">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\220">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\217">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\216">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\215">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\214">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\213">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\212">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\211">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\210">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\207">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\206">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\205">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\204">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\203">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\202">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\201">>);
upcase(<<"�\236��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�\200">>);
upcase(<<"�\221�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\221�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220��", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220��">>);
upcase(<<"�\220�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\237">>);
upcase(<<"�\220�\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\236">>);
upcase(<<"�\220�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\235">>);
upcase(<<"�\220�\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\234">>);
upcase(<<"�\220�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\233">>);
upcase(<<"�\220�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\232">>);
upcase(<<"�\220�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\231">>);
upcase(<<"�\220�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\230">>);
upcase(<<"�\220�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\227">>);
upcase(<<"�\220�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\226">>);
upcase(<<"�\220�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\225">>);
upcase(<<"�\220�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\224">>);
upcase(<<"�\220�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\223">>);
upcase(<<"�\220�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\222">>);
upcase(<<"�\220�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\221">>);
upcase(<<"�\220�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\220">>);
upcase(<<"�\220�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\217">>);
upcase(<<"�\220�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\216">>);
upcase(<<"�\220�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\215">>);
upcase(<<"�\220�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\214">>);
upcase(<<"�\220�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\213">>);
upcase(<<"�\220�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\212">>);
upcase(<<"�\220�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\211">>);
upcase(<<"�\220�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\210">>);
upcase(<<"�\220�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\207">>);
upcase(<<"�\220�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\206">>);
upcase(<<"�\220�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\205">>);
upcase(<<"�\220�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\204">>);
upcase(<<"�\220�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\203">>);
upcase(<<"�\220�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\202">>);
upcase(<<"�\220�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\201">>);
upcase(<<"�\220�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220�\200">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\223">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\222">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\221">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\220">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\217">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\216">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\215">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\214">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\213">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\212">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\211">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\210">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\207">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\206">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\205">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\204">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\203">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\202">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\201">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\223\200">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\223\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\222�">>);
upcase(<<"�\220\221\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
upcase(<<"�\220\221\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
upcase(<<"�\220\221\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
upcase(<<"�\220\221\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
upcase(<<"�\220\221\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
upcase(<<"�\220\221\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
upcase(<<"�\220\221\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
upcase(<<"�\220\221\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220�">>);
upcase(<<"�\220\221\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\237">>);
upcase(<<"�\220\221\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\236">>);
upcase(<<"�\220\221\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\235">>);
upcase(<<"�\220\221\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\234">>);
upcase(<<"�\220\221\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\233">>);
upcase(<<"�\220\221\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\232">>);
upcase(<<"�\220\221\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\231">>);
upcase(<<"�\220\221\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\230">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\227">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\226">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\225">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\224">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\223">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\222">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\221">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\220">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\217">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\216">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\215">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\214">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\213">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\212">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\211">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\210">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\207">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\206">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\205">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\204">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\203">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\202">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\201">>);
upcase(<<"�\220\220�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220\220\200">>);
upcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｚ">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｙ">>);
upcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｘ">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｗ">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｖ">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｕ">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｔ">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｓ">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｒ">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｑ">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｐ">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｏ">>);
upcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｎ">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｍ">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｌ">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｋ">>);
upcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｊ">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｉ">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｈ">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｇ">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｆ">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｅ">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｄ">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｃ">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ｂ">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ａ">>);
upcase(<<"ꮿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮾ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮼ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮺ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮸ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮶ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮴ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"ꮯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\237">>);
upcase(<<"ꮮ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\236">>);
upcase(<<"ꮭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\235">>);
upcase(<<"ꮬ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\234">>);
upcase(<<"ꮫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\233">>);
upcase(<<"ꮪ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\232">>);
upcase(<<"ꮩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\231">>);
upcase(<<"ꮨ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\230">>);
upcase(<<"ꮧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\227">>);
upcase(<<"ꮦ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\226">>);
upcase(<<"ꮥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\225">>);
upcase(<<"ꮤ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\224">>);
upcase(<<"ꮣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\223">>);
upcase(<<"ꮢ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\222">>);
upcase(<<"ꮡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\221">>);
upcase(<<"ꮠ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\220">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\217">>);
upcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\216">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\215">>);
upcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\214">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\213">>);
upcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\212">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\211">>);
upcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\210">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\207">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\206">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\205">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\204">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\203">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\202">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\201">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217\200">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭾ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭼ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭺ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭸ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭶ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭴ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"ꭰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\236�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\236\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\236">>);
upcase(<<"�\236\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\234">>);
upcase(<<"�\236\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\232">>);
upcase(<<"�\236\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\230">>);
upcase(<<"�\236\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\226">>);
upcase(<<"�\236\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\222">>);
upcase(<<"�\236\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\220">>);
upcase(<<"�\236\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\213">>);
upcase(<<"�\236\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\206">>);
upcase(<<"�\236\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\204">>);
upcase(<<"�\236\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\202">>);
upcase(<<"�\236\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\200">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\235\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\236">>);
upcase(<<"�\235\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\234">>);
upcase(<<"�\235\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\232">>);
upcase(<<"�\235\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\230">>);
upcase(<<"�\235\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\226">>);
upcase(<<"�\235\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\224">>);
upcase(<<"�\235\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\222">>);
upcase(<<"�\235\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\220">>);
upcase(<<"�\235\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\216">>);
upcase(<<"�\235\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\214">>);
upcase(<<"�\235\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\212">>);
upcase(<<"�\235\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\210">>);
upcase(<<"�\235\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\206">>);
upcase(<<"�\235\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\204">>);
upcase(<<"�\235\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\202">>);
upcase(<<"�\235\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235\200">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\234�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234�">>);
upcase(<<"�\232\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\232">>);
upcase(<<"�\232\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\230">>);
upcase(<<"�\232\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\226">>);
upcase(<<"�\232\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\224">>);
upcase(<<"�\232\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\222">>);
upcase(<<"�\232\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\220">>);
upcase(<<"�\232\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\216">>);
upcase(<<"�\232\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\214">>);
upcase(<<"�\232\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\212">>);
upcase(<<"�\232\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\210">>);
upcase(<<"�\232\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\206">>);
upcase(<<"�\232\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\204">>);
upcase(<<"�\232\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\202">>);
upcase(<<"�\232\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232\200">>);
upcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
upcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
upcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
upcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
upcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
upcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
upcase(<<"�\231�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�">>);
upcase(<<"�\231\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\236">>);
upcase(<<"�\231\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\234">>);
upcase(<<"�\231\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\232">>);
upcase(<<"�\231\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\230">>);
upcase(<<"�\231\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\226">>);
upcase(<<"�\231\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\224">>);
upcase(<<"�\231\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\222">>);
upcase(<<"�\231\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\220">>);
upcase(<<"�\231\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\216">>);
upcase(<<"�\231\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\214">>);
upcase(<<"�\231\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\212">>);
upcase(<<"�\231\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\210">>);
upcase(<<"�\231\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\206">>);
upcase(<<"�\231\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\204">>);
upcase(<<"�\231\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\202">>);
upcase(<<"�\231\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\200">>);
upcase(<<"ⴭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203\215">>);
upcase(<<"ⴧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203\207">>);
upcase(<<"ⴥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203\205">>);
upcase(<<"ⴤ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203\204">>);
upcase(<<"ⴣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203\203">>);
upcase(<<"ⴢ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203\202">>);
upcase(<<"ⴡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203\201">>);
upcase(<<"ⴠ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203\200">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202�">>);
upcase(<<"ⳳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⳳ">>);
upcase(<<"ⳮ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⳮ">>);
upcase(<<"ⳬ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⳬ">>);
upcase(<<"ⳣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⳣ">>);
upcase(<<"ⳡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⳡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ⲿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲿ">>);
upcase(<<"ⲽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲽ">>);
upcase(<<"ⲻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲻ">>);
upcase(<<"ⲹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲹ">>);
upcase(<<"ⲷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲷ">>);
upcase(<<"ⲵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲵ">>);
upcase(<<"ⲳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲳ">>);
upcase(<<"ⲱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲱ">>);
upcase(<<"ⲯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲯ">>);
upcase(<<"ⲭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲭ">>);
upcase(<<"ⲫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲫ">>);
upcase(<<"ⲩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲩ">>);
upcase(<<"ⲧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲧ">>);
upcase(<<"ⲥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲥ">>);
upcase(<<"ⲣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲣ">>);
upcase(<<"ⲡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⲡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ⱶ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱶ">>);
upcase(<<"ⱳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱳ">>);
upcase(<<"ⱬ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱬ">>);
upcase(<<"ⱪ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱪ">>);
upcase(<<"ⱨ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱨ">>);
upcase(<<"ⱦ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱦ">>);
upcase(<<"ⱥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱥ">>);
upcase(<<"ⱡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱡ">>);
upcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱞ">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱝ">>);
upcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱜ">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱛ">>);
upcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱚ">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱙ">>);
upcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱘ">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱗ">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱖ">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱕ">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱔ">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱓ">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱒ">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱑ">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ⱐ">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\237">>);
upcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\233">>);
upcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\227">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\225">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"ⰿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217">>);
upcase(<<"ⰾ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"ⰽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215">>);
upcase(<<"ⰼ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"ⰻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213">>);
upcase(<<"ⰺ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"ⰹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"ⰸ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"ⰷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\207">>);
upcase(<<"ⰶ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"ⰵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205">>);
upcase(<<"ⰴ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"ⰳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203">>);
upcase(<<"ⰲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"ⰱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\201">>);
upcase(<<"ⰰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\217">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\216">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\215">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\214">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\213">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\212">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\211">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\210">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\207">>);
upcase(<<"�\223�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\206">>);
upcase(<<"�\223\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\205">>);
upcase(<<"�\223\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\204">>);
upcase(<<"�\223\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\203">>);
upcase(<<"�\223\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\202">>);
upcase(<<"�\223\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\201">>);
upcase(<<"�\223\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223\200">>);
upcase(<<"�\223\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\223\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\223\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\223\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\223\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\223\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\223\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\223\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\223\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\223\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222�">>);
upcase(<<"�\206\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206\203">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205�">>);
upcase(<<"�\205\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204�">>);
upcase(<<"ῼ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ω�\231">>);
upcase(<<"ῳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ω�\231">>);
upcase(<<"ῥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ῥ">>);
upcase(<<"ῡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ῡ">>);
upcase(<<"ῠ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ῠ">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\227�\231">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\227�\231">>);
upcase(<<"ι", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"ᾼ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221�\231">>);
upcase(<<"ᾳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221�\231">>);
upcase(<<"ᾱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ᾱ">>);
upcase(<<"ᾰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ᾰ">>);
upcase(<<"ᾯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὧ�\231">>);
upcase(<<"ᾮ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὦ�\231">>);
upcase(<<"ᾭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὥ�\231">>);
upcase(<<"ᾬ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὤ�\231">>);
upcase(<<"ᾫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὣ�\231">>);
upcase(<<"ᾪ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὢ�\231">>);
upcase(<<"ᾩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὡ�\231">>);
upcase(<<"ᾨ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὠ�\231">>);
upcase(<<"ᾧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὧ�\231">>);
upcase(<<"ᾦ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὦ�\231">>);
upcase(<<"ᾥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὥ�\231">>);
upcase(<<"ᾤ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὤ�\231">>);
upcase(<<"ᾣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὣ�\231">>);
upcase(<<"ᾢ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὢ�\231">>);
upcase(<<"ᾡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὡ�\231">>);
upcase(<<"ᾠ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὠ�\231">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἧ�\231">>);
upcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἦ�\231">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἥ�\231">>);
upcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἤ�\231">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἣ�\231">>);
upcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἢ�\231">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἡ�\231">>);
upcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἠ�\231">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἧ�\231">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἦ�\231">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἥ�\231">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἤ�\231">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἣ�\231">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἢ�\231">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἡ�\231">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἠ�\231">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�\231">>);
upcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�\231">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215�\231">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214�\231">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213�\231">>);
upcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212�\231">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211�\231">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210�\231">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�\231">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�\231">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215�\231">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214�\231">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213�\231">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212�\231">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211�\231">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210�\231">>);
upcase(<<"ώ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ώ">>);
upcase(<<"ὼ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὼ">>);
upcase(<<"ύ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ύ">>);
upcase(<<"ὺ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὺ">>);
upcase(<<"ό", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ό">>);
upcase(<<"ὸ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὸ">>);
upcase(<<"ί", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\233">>);
upcase(<<"ὶ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"ή", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213">>);
upcase(<<"ὴ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"έ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"ὲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"ά", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ά">>);
upcase(<<"ὰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὰ">>);
upcase(<<"ὧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὧ">>);
upcase(<<"ὦ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὦ">>);
upcase(<<"ὥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὥ">>);
upcase(<<"ὤ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὤ">>);
upcase(<<"ὣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὣ">>);
upcase(<<"ὢ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὢ">>);
upcase(<<"ὡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὡ">>);
upcase(<<"ὠ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὠ">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\237">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\233">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"ἷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἷ">>);
upcase(<<"ἶ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἶ">>);
upcase(<<"ἵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἵ">>);
upcase(<<"ἴ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἴ">>);
upcase(<<"ἳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἳ">>);
upcase(<<"ἲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἲ">>);
upcase(<<"ἱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἱ">>);
upcase(<<"ἰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἰ">>);
upcase(<<"ἧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἧ">>);
upcase(<<"ἦ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἦ">>);
upcase(<<"ἥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἥ">>);
upcase(<<"ἤ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἤ">>);
upcase(<<"ἣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἣ">>);
upcase(<<"ἢ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἢ">>);
upcase(<<"ἡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἡ">>);
upcase(<<"ἠ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ἠ">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\233">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"ỿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ỿ">>);
upcase(<<"ỽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ỽ">>);
upcase(<<"ỻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ỻ">>);
upcase(<<"ỹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ỹ">>);
upcase(<<"ỷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ỷ">>);
upcase(<<"ỵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ỵ">>);
upcase(<<"ỳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ỳ">>);
upcase(<<"ự", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ự">>);
upcase(<<"ữ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ữ">>);
upcase(<<"ử", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ử">>);
upcase(<<"ừ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ừ">>);
upcase(<<"ứ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ứ">>);
upcase(<<"ủ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ủ">>);
upcase(<<"ụ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ụ">>);
upcase(<<"ợ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ợ">>);
upcase(<<"ỡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ỡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ế", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ế">>);
upcase(<<"ẽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ẽ">>);
upcase(<<"ẻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ẻ">>);
upcase(<<"ẹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ẹ">>);
upcase(<<"ặ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ặ">>);
upcase(<<"ẵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ẵ">>);
upcase(<<"ẳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ẳ">>);
upcase(<<"ằ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ằ">>);
upcase(<<"ắ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ắ">>);
upcase(<<"ậ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ậ">>);
upcase(<<"ẫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ẫ">>);
upcase(<<"ẩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ẩ">>);
upcase(<<"ầ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ầ">>);
upcase(<<"ấ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ấ">>);
upcase(<<"ả", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ả">>);
upcase(<<"ạ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ạ">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṡ">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ṿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṿ">>);
upcase(<<"ṽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṽ">>);
upcase(<<"ṻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṻ">>);
upcase(<<"ṹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṹ">>);
upcase(<<"ṷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṷ">>);
upcase(<<"ṵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṵ">>);
upcase(<<"ṳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṳ">>);
upcase(<<"ṱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṱ">>);
upcase(<<"ṯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṯ">>);
upcase(<<"ṭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṭ">>);
upcase(<<"ṫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṫ">>);
upcase(<<"ṩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṩ">>);
upcase(<<"ṧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṧ">>);
upcase(<<"ṥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṥ">>);
upcase(<<"ṣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṣ">>);
upcase(<<"ṡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ṡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ḿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḿ">>);
upcase(<<"ḽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḽ">>);
upcase(<<"ḻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḻ">>);
upcase(<<"ḹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḹ">>);
upcase(<<"ḷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḷ">>);
upcase(<<"ḵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḵ">>);
upcase(<<"ḳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḳ">>);
upcase(<<"ḱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḱ">>);
upcase(<<"ḯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḯ">>);
upcase(<<"ḭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḭ">>);
upcase(<<"ḫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḫ">>);
upcase(<<"ḩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḩ">>);
upcase(<<"ḧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḧ">>);
upcase(<<"ḥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḥ">>);
upcase(<<"ḣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḣ">>);
upcase(<<"ḡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ḡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ᵽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ᵽ">>);
upcase(<<"ᵹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235�">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231\212">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѣ">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ъ">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Т">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Т">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "С">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"�\217�", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\225">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"տ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217">>);
upcase(<<"վ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"ս", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215">>);
upcase(<<"ռ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"ջ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213">>);
upcase(<<"պ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"չ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"ո", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"շ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\207">>);
upcase(<<"ն", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"յ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205">>);
upcase(<<"մ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"ճ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203">>);
upcase(<<"ղ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"ձ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\201">>);
upcase(<<"հ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"կ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Կ">>);
upcase(<<"ծ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ծ">>);
upcase(<<"խ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Խ">>);
upcase(<<"լ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Լ">>);
upcase(<<"ի", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ի">>);
upcase(<<"ժ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ժ">>);
upcase(<<"թ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Թ">>);
upcase(<<"ը", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ը">>);
upcase(<<"է", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Է">>);
upcase(<<"զ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Զ">>);
upcase(<<"ե", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ե">>);
upcase(<<"դ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Դ">>);
upcase(<<"գ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Գ">>);
upcase(<<"բ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Բ">>);
upcase(<<"ա", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ա">>);
upcase(<<"ԯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ԯ">>);
upcase(<<"ԭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ԭ">>);
upcase(<<"ԫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ԫ">>);
upcase(<<"ԩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ԩ">>);
upcase(<<"ԧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ԧ">>);
upcase(<<"ԥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ԥ">>);
upcase(<<"ԣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ԣ">>);
upcase(<<"ԡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ԡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ӿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӿ">>);
upcase(<<"ӽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӽ">>);
upcase(<<"ӻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӻ">>);
upcase(<<"ӹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӹ">>);
upcase(<<"ӷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӷ">>);
upcase(<<"ӵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӵ">>);
upcase(<<"ӳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӳ">>);
upcase(<<"ӱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӱ">>);
upcase(<<"ӯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӯ">>);
upcase(<<"ӭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӭ">>);
upcase(<<"ӫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӫ">>);
upcase(<<"ө", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ө">>);
upcase(<<"ӧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӧ">>);
upcase(<<"ӥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӥ">>);
upcase(<<"ӣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӣ">>);
upcase(<<"ӡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ӡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213">>);
upcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\207">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\201">>);
upcase(<<"ҿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҿ">>);
upcase(<<"ҽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҽ">>);
upcase(<<"һ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Һ">>);
upcase(<<"ҹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҹ">>);
upcase(<<"ҷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҷ">>);
upcase(<<"ҵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҵ">>);
upcase(<<"ҳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҳ">>);
upcase(<<"ұ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ұ">>);
upcase(<<"ү", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ү">>);
upcase(<<"ҭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҭ">>);
upcase(<<"ҫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҫ">>);
upcase(<<"ҩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҩ">>);
upcase(<<"ҧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҧ">>);
upcase(<<"ҥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҥ">>);
upcase(<<"ң", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ң">>);
upcase(<<"ҡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ҡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ѿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѿ">>);
upcase(<<"ѽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѽ">>);
upcase(<<"ѻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѻ">>);
upcase(<<"ѹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѹ">>);
upcase(<<"ѷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѷ">>);
upcase(<<"ѵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѵ">>);
upcase(<<"ѳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѳ">>);
upcase(<<"ѱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѱ">>);
upcase(<<"ѯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѯ">>);
upcase(<<"ѭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѭ">>);
upcase(<<"ѫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѫ">>);
upcase(<<"ѩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѩ">>);
upcase(<<"ѧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѧ">>);
upcase(<<"ѥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѥ">>);
upcase(<<"ѣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѣ">>);
upcase(<<"ѡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ѡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217">>);
upcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215">>);
upcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213">>);
upcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\207">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\201">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Я">>);
upcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ю">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Э">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ь">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ы">>);
upcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ъ">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Щ">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ш">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ч">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ц">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Х">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ф">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "У">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Т">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "С">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Р">>);
upcase(<<"п", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\237">>);
upcase(<<"о", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"н", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235">>);
upcase(<<"м", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"л", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\233">>);
upcase(<<"к", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"й", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"и", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"з", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\227">>);
upcase(<<"ж", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"е", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\225">>);
upcase(<<"д", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"г", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223">>);
upcase(<<"в", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"б", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221">>);
upcase(<<"а", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"ϻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϻ">>);
upcase(<<"ϸ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϸ">>);
upcase(<<"ϵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\225">>);
upcase(<<"ϳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϳ">>);
upcase(<<"ϲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϲ">>);
upcase(<<"ϱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ρ">>);
upcase(<<"ϰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"ϯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϯ">>);
upcase(<<"ϭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϭ">>);
upcase(<<"ϫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϫ">>);
upcase(<<"ϩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϩ">>);
upcase(<<"ϧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϧ">>);
upcase(<<"ϥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϥ">>);
upcase(<<"ϣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϣ">>);
upcase(<<"ϡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Π">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Φ">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϋ">>);
upcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ϊ">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ω">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ψ">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Χ">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Φ">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Τ">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Σ">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Σ">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ρ">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Π">>);
upcase(<<"ο", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\237">>);
upcase(<<"ξ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"ν", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235">>);
upcase(<<"μ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"λ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\233">>);
upcase(<<"κ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"ι", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"θ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"η", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\227">>);
upcase(<<"ζ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"ε", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\225">>);
upcase(<<"δ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"γ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223">>);
upcase(<<"β", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"α", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221">>);
upcase(<<"ί", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"ή", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"έ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"ά", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"ͽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ͽ">>);
upcase(<<"ͼ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ͼ">>);
upcase(<<"ͻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ͻ">>);
upcase(<<"ͷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ͷ">>);
upcase(<<"ͳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ͳ">>);
upcase(<<"ͱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ͱ">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ʒ">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ʋ">>);
upcase(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ʊ">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ʈ">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ʃ">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ʀ">>);
upcase(<<"ɽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ɽ">>);
upcase(<<"ɵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\237">>);
upcase(<<"ɲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235">>);
upcase(<<"ɱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ɱ">>);
upcase(<<"ɯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"ɬ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"ɫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ɫ">>);
upcase(<<"ɪ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"ɩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"ɨ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\227">>);
upcase(<<"ɦ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"ɥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236\215">>);
upcase(<<"ɣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"ɡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"ɠ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223">>);
upcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236�">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\201">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ɒ">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ɑ">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ɐ">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\201">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ɀ">>);
upcase(<<"ȿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȿ">>);
upcase(<<"ȼ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȼ">>);
upcase(<<"ȳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȳ">>);
upcase(<<"ȱ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȱ">>);
upcase(<<"ȯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȯ">>);
upcase(<<"ȭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȭ">>);
upcase(<<"ȫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȫ">>);
upcase(<<"ȩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȩ">>);
upcase(<<"ȧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȧ">>);
upcase(<<"ȥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȥ">>);
upcase(<<"ȣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ȣ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ǿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǿ">>);
upcase(<<"ǽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǽ">>);
upcase(<<"ǻ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǻ">>);
upcase(<<"ǹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǹ">>);
upcase(<<"ǵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǵ">>);
upcase(<<"ǳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǳ">>);
upcase(<<"ǲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǳ">>);
upcase(<<"ǯ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǯ">>);
upcase(<<"ǭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǭ">>);
upcase(<<"ǫ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǫ">>);
upcase(<<"ǩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǩ">>);
upcase(<<"ǧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǧ">>);
upcase(<<"ǥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǥ">>);
upcase(<<"ǣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǣ">>);
upcase(<<"ǡ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ǡ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\233">>);
upcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\227">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\225">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217">>);
upcase(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\207">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\207">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"ƿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƿ">>);
upcase(<<"ƽ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƽ">>);
upcase(<<"ƹ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƹ">>);
upcase(<<"ƶ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƶ">>);
upcase(<<"ƴ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƴ">>);
upcase(<<"ư", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ư">>);
upcase(<<"ƭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƭ">>);
upcase(<<"ƨ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƨ">>);
upcase(<<"ƥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƥ">>);
upcase(<<"ƣ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƣ">>);
upcase(<<"ơ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ơ">>);
upcase(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƞ">>);
upcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƚ">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ƕ">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221">>);
upcase(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\207">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203">>);
upcase(<<"ſ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "S">>);
upcase(<<"ž", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ž">>);
upcase(<<"ż", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ż">>);
upcase(<<"ź", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ź">>);
upcase(<<"ŷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ŷ">>);
upcase(<<"ŵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ŵ">>);
upcase(<<"ų", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ų">>);
upcase(<<"ű", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ű">>);
upcase(<<"ů", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ů">>);
upcase(<<"ŭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ŭ">>);
upcase(<<"ū", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ū">>);
upcase(<<"ũ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ũ">>);
upcase(<<"ŧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ŧ">>);
upcase(<<"ť", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ť">>);
upcase(<<"ţ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ţ">>);
upcase(<<"š", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Š">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\207">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\201">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ŀ">>);
upcase(<<"ľ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ľ">>);
upcase(<<"ļ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ļ">>);
upcase(<<"ĺ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ĺ">>);
upcase(<<"ķ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ķ">>);
upcase(<<"ĵ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ĵ">>);
upcase(<<"ĳ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ĳ">>);
upcase(<<"ı", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "I">>);
upcase(<<"į", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Į">>);
upcase(<<"ĭ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ĭ">>);
upcase(<<"ī", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ī">>);
upcase(<<"ĩ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ĩ">>);
upcase(<<"ħ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ħ">>);
upcase(<<"ĥ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ĥ">>);
upcase(<<"ģ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ģ">>);
upcase(<<"ġ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ġ">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"ÿ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ÿ">>);
upcase(<<"þ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\236">>);
upcase(<<"ý", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\235">>);
upcase(<<"ü", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"û", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\233">>);
upcase(<<"ú", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\232">>);
upcase(<<"ù", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231">>);
upcase(<<"ø", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\230">>);
upcase(<<"ö", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\226">>);
upcase(<<"õ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\225">>);
upcase(<<"ô", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\224">>);
upcase(<<"ó", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\223">>);
upcase(<<"ò", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\222">>);
upcase(<<"ñ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221">>);
upcase(<<"ð", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\220">>);
upcase(<<"ï", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217">>);
upcase(<<"î", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216">>);
upcase(<<"í", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\215">>);
upcase(<<"ì", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\214">>);
upcase(<<"ë", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\213">>);
upcase(<<"ê", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212">>);
upcase(<<"é", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211">>);
upcase(<<"è", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\210">>);
upcase(<<"ç", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\207">>);
upcase(<<"æ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206">>);
upcase(<<"å", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\205">>);
upcase(<<"ä", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204">>);
upcase(<<"ã", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\203">>);
upcase(<<"â", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\202">>);
upcase(<<"á", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\201">>);
upcase(<<"à", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\200">>);
upcase(<<"µ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\234">>);
upcase(<<"z", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Z">>);
upcase(<<"y", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Y">>);
upcase(<<"x", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "X">>);
upcase(<<"w", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "W">>);
upcase(<<"v", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "V">>);
upcase(<<"u", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "U">>);
upcase(<<"t", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "T">>);
upcase(<<"s", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "S">>);
upcase(<<"r", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "R">>);
upcase(<<"q", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Q">>);
upcase(<<"p", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "P">>);
upcase(<<"o", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "O">>);
upcase(<<"n", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "N">>);
upcase(<<"m", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "M">>);
upcase(<<"l", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "L">>);
upcase(<<"k", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "K">>);
upcase(<<"j", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "J">>);
upcase(<<"i", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "I">>);
upcase(<<"h", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "H">>);
upcase(<<"g", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "G">>);
upcase(<<"f", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "F">>);
upcase(<<"e", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "E">>);
upcase(<<"d", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "D">>);
upcase(<<"c", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "C">>);
upcase(<<"b", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "B">>);
upcase(<<"a", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "A">>);
upcase(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "SS">>);
upcase(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FF">>);
upcase(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FI">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FL">>);
upcase(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FFI">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "FFL">>);
upcase(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ST">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ST">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ե�\222">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204�\206">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204Ե">>);
upcase(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204Ի">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\216�\206">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\204Խ">>);
upcase(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "ʼN">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�\210�\201">>);
upcase(<<"ΰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ�\210�\201">>);
upcase(<<"ǰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "J�\214">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "H̱">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "T�\210">>);
upcase(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "W�\212">>);
upcase(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Y�\212">>);
upcase(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Aʾ">>);
upcase(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ�\223">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ�\223�\200">>);
upcase(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ�\223�\201">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ�\223�\202">>);
upcase(<<"ᾶ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221�\202">>);
upcase(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\227�\202">>);
upcase(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�\210�\200">>);
upcase(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�\210�\201">>);
upcase(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�\202">>);
upcase(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\231�\210�\202">>);
upcase(<<"ῢ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ�\210�\200">>);
upcase(<<"ΰ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ�\210�\201">>);
upcase(<<"ῤ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ρ�\223">>);
upcase(<<"ῦ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ�\202">>);
upcase(<<"ῧ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Υ�\210�\202">>);
upcase(<<"ῶ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ω�\202">>);
upcase(<<"ᾲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὰ�\231">>);
upcase(<<"ᾴ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\206�\231">>);
upcase(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\212�\231">>);
upcase(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\211�\231">>);
upcase(<<"ῲ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ὼ�\231">>);
upcase(<<"ῴ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\217�\231">>);
upcase(<<"ᾷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\221�\202�\231">>);
upcase(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "�\227�\202�\231">>);
upcase(<<"ῷ", Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, "Ω�\202�\231">>);
upcase(<<Echar@1, Erest@1/binary>>, Eacc@1) ->
    upcase(Erest@1, <<Eacc@1/binary, Echar@1>>);
upcase(<<>>, Eacc@1) -> Eacc@1.