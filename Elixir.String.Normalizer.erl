-compile(no_auto_import).

-file("/home/george/installed/packages/elixir-1.4.0/"
      "lib/elixir/unicode/unicode.ex",
      446).

-module('Elixir.String.Normalizer').

-export(['__info__'/1, normalize/2]).

-spec '__info__'(attributes | compile | exports |
		 functions | macros | md5 | module |
		 native_addresses) -> atom() |
				      [{atom(), any()} |
				       {atom(), byte(), integer()}].

'__info__'(functions) -> [{normalize, 2}];
'__info__'(macros) -> [];
'__info__'(Einfo) ->
    erlang:get_module_info('Elixir.String.Normalizer',
			   Einfo).

canonical_order([{Ex@1, _E}]) -> <<Ex@1/utf8>>;
canonical_order(Eacc@1) ->
    erlang:iolist_to_binary('Elixir.Enum':map(lists:keysort(2,
							    case Eacc@1 of
							      _E@1
								  when
								    erlang:is_list(_E@1) ->
								  lists:reverse(_E@1);
							      _E@2 ->
								  'Elixir.Enum':reverse(_E@2,
											[])
							    end),
					      fun (_E@3) ->
						      <<(erlang:element(1,
									_E@3))/utf8>>
					      end)).

canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἲ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蚈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"勤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蝹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ḻ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḻ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"念", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"念", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ơ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"c�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"搢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\210�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ǵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"G�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"鄛", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\204\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"῾�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ứ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\233�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\204�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"´", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"´", Erest@1/binary>>, Eacc@1);
canonical_order(<<"勇", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ĺ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"L�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\202�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ữ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\233�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235\205�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\205\230�\235\205��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"抱", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"裸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"𧥦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ĩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214ྷ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"к�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"𦬼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ж�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ḧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"H�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"е�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἶ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\223�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"捐", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ṵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṵ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"r�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215ᬵ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"勺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"w�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"έ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ε�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"淹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ŗ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"w�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\233�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ṩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṣ�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"嗢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"D�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"R�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\202\235�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"廊", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"磻", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"磻", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"菉", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"襁", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"΅", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"¨�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"惡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾪ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\223�\200�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221\202\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\202\231�\221\202�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ẻ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𢛔", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ѷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ѵ�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"è", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḏ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ì", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\223�\201�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"糒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"直", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ȱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\207�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𦓚", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ợ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\233̣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"鏹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṋ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𠨬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𠨬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"趼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"𥥼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ӣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"и�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212\206̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"報", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ự", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\233̣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"簾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"簾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"㫤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"臘", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ι", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\236�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226�\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ῢ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\210�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"若", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\204\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"瑱", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"c�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὰ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ừ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\233�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"菜", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"慈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ṻ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\204�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"שׂ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ש�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"度", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𤠔", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"w�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ủ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ṫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"t�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ӥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḛ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ῤ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\224�\201�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\223�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"g�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ŵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"W�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"礪", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𦋙", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\200�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𩒖", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"嘆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𦵫", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𦵫", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ǡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\207�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ή", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"便", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"便", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ȩ�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"㛮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ṡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"s�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"拼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"吆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ἧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṃ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\233\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ṽ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"v�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ὥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"鼻", Erest@1/binary>>, Eacc@1);
canonical_order(<<"僚", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ὦ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\223�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ϊ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"索", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"索", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\215\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"囹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ấ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\202�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"慎", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𢆟", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḑ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"錄", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"媵", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ཀྵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200ྵ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ḡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"g�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"嵼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"着", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\210�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"殺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"殺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"甤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212\207̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾰ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"蝫", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"北", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𠭣", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𠭣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"壮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ᭀ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"輸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"謹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"謹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ṹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\203�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"R�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"奄", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\217�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"痢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\225�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"裏", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ਫ਼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἠ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\207\222̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"社", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ŭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ӳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"У�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ྡྷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ྡྷ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\223�\200�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𦰶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𦰶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ġ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"g�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ཱུ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ཱུ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"猪", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"鳽", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\202�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ṳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṳ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\202\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\202\233�\221\202�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"䀈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ο�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"з�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\202�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"אּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ӯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\224�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\230�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ο�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\233�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ç", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\223�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ὦ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\223�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"卿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"䈂", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"丽", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203�\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"磌", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ş", Erest@1/binary>>, Eacc@1);
canonical_order(<<"à", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\222�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\222��\221\222�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"䕫", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ӯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"У�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ư", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"隸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾤ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\223�\201�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"鈸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ཱ�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"אָ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220ָ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"殺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"殺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"鷺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"鷺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"逸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ཱི", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ཱི", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"馧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"慨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ġ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"G�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蓱", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"謁", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\206�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\206��\235\205��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𨗒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"舘", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ȳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"y�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"悁", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"築", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"輦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"P�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"窱", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"窱", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ε�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"濾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\210�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ἤ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"泌", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"諸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"諸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"帨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"῾�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"瘟", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ẉ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\222\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\203�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ò", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"梁", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"嵮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"嵮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"裂", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202ྷ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蚩", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"בּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"開", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227਼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ή", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ȯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"î", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\204�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ẵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\206�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<";", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<";", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\217\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"量", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ӫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ө�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"R�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ẉ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ȱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\207�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"叱", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"P�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"į", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"į", Erest@1/binary>>, Eacc@1);
canonical_order(<<"殻", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"殻", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\222�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\222��\221\222�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ǫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ǫ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\213�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"瓊", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ả", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ǯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222�\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\234\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"礼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ὧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\204\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"S�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蘒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"吸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"羽", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ὡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\222�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\222��\221\222�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"䧦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"䧦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𡷤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𡷤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"餩", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\204�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"娛", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"里", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ḵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḵ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ẹ�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"閷", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\220\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ὺ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ῧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\210�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ż", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"z�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𦳕", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"㴳", Erest@1/binary>>, Eacc@1);
canonical_order(<<"枅", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\225\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ằ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\206�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾨ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\223�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"串", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"G�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ȩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ȩ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"菌", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ẻ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𦼬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𦼬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"剷", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"寿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"寿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\224\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ỹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Y�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"邔", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"咞", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"שׁ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ש�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾢ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\223�\200�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"p�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"N�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𨯺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𨯺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"奢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"精", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḛ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"㞁", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"㛼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"王", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"茶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ắ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\206�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\225�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"r�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"叟", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ÿ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Y�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222ྷ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"割", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"侀", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"形", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"𧼯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ī", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"㡼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾬ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\223�\201�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"帽", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206ാ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"海", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"x�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"לּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"歷", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"輸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἤ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\202�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"㺸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"㺸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"汎", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"練", Erest@1/binary>>, Eacc@1);
canonical_order(<<"異", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"諭", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"諭", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ῥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ρ�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"你", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210\213̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"峀", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ḫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḫ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ǿ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ø�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𡛪", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"d�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"怒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"祥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"魯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"魯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"נּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"㿼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"㿼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṛ�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"凉", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ἶ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\223�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"甆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"הּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"鉼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"s�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ਸ਼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ਸ਼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"狀", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"炙", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\223�\200�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\224�\202�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"說", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"說", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"庳", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\233\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"虧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\223�\201�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\202�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ӹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ы�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\233�\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\224�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"鄑", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\204\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ἵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"䳭", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𡚨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḓ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"參", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"K", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"縷", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ț", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\217�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\223�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ĥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"h�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\211\210̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"أ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ا�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\202�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"吝", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\233�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"了", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𩐊", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"䗗", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ű", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207ാ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\233�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"粒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ǵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"g�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"賓", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\225�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"㼛", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ףּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\215\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\215\207�\221\215\227",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\224�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"𧲨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"t�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ῠ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"勉", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ὢ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"諾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\210�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"卑", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"楂", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ྐྵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220ྵ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"益", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ầ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\202�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ṷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṷ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḥ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"إ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ا�\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"殺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"慌", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"כּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212\222̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ླྀ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ླ�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ử", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\233�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221ᬵ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\210�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ᾰ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ύ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṇ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\230\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"祿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"祿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"䌁", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ľ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"L�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\204\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ἧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"荒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"歹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"䳸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"㩬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\236�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ë", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"鋘", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ὶ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ײַ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"虩", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Į", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Į", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𨗭", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἢ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\222�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ị", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"᾿�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ơ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207ா", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\207\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ļ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ļ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ẽ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"請", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"諸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"諸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"爵", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𡧈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ȳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Y�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"𥪧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἦ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\223�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"寧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"覆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ĺ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"l�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"糧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"糧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"廬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\205\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"零", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"者", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"及", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ẵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\206�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\224�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ử", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\233�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ᭁ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"不", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ỹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"y�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ӧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"о�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ῴ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\201�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"屢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ô", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"歔", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ḯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\210�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ç", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ç", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ο�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"R�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ὥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ặ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ạ�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"幩", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ẫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\202�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"籠", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\205\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\205\227�\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"彩", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ঢ়", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\232\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ằ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\206�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Y�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ώ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"寳", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"寳", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\231\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"霣", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"裺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"栟", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ύ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"諭", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\202�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230�\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ά", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾠ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\223�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"玲", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἲ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ӥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"и�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\210�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"數", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṵ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蝹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ý", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"y�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\223�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ο�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"燐", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"·", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ǻ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\212�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\227�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\211\203̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\207\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"跰", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\201�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ấ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\202�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"῭", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"¨�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"c�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"פֿ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"憤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\223�\202�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"n�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"塚", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\222�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\233�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"梨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"梨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ỡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\233�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ढ़", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ż", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Z�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"丹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"捨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\237�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\204�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ũ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"憎", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"亮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"亮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"寧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"寧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"泥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"泥", Erest@1/binary>>, Eacc@1);
canonical_order(<<"勞", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"路", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"路", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὼ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ε�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𥾆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"爨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\202�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"䕡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"篆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207ା", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"虐", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"成", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\224�\200�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"徭", Erest@1/binary>>, Eacc@1);
canonical_order(<<"槪", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"槪", Erest@1/binary>>, Eacc@1);
canonical_order(<<"娧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"娧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὸ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ο�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"᾿�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"堲", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"C�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231ִ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\224�\201�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ḡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"G�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ϋ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ï", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ά", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"W�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ţ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ţ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ؤ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"h�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\224\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"巽", Erest@1/binary>>, Eacc@1);
canonical_order(<<"梎", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\210�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"良", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"瑜", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"е�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𤋮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"㠯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"זּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"驪", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"᾿�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"盛", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ε�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\210�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206\222̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ἱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"וּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ĭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"S�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ӹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ড়", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"令", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"令", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\222�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\202�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"塀", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𥲀", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"呈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"頻", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"頻", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἴ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ừ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\233�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\223�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ḥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḥ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"c�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\204�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᬻ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ᬻ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"廾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𤜵", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"湮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"忹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"梅", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṛ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ε�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"w�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206\220̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"䪲", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"䪲", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ӱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"У�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"庰", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"頻", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"У�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"䌴", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"b�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"İ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\224�\200�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ΰ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\210�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"犕", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"調", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"調", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"y�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"褐", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"贈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"õ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḅ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ӧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"復", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"復", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\203�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"鋗", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ź", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Z�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\227\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\203�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ḽ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḽ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\202�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\202��\221\202�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"קּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"S�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"w�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\204�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\204��\221\204�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"聆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"类", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"类", Erest@1/binary>>, Eacc@1);
canonical_order(<<"寧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"寧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"嬈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"練", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"y�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"盧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"瘝", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"玥", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"響", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"勵", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"卉", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\221�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ả", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ọ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\204�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"z�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"喙", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"㺬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"㺬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ǩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"k�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"泍", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\232\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221ྷ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212\203̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ਲ਼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ਲ਼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ǿ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"פּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\224�\200�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"離", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\202�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226ྷ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"גּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\237\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"≮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226਼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\204�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\224�\202�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"聰", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\210�\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"弢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ί", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\230�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\210�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ặ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ạ�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"טּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ṭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṭ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"麟", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ṻ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\204�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\222�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"即", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ạ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ạ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ņ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"å", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ྲྀ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ྲ�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𢬌", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213ᬵ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𡴋", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"h�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"恵", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ậ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ạ�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ợ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\233̣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"糨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"糨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𤲒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"易", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"а�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"黾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḷ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"况", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\206�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"㡢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ῼ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḿ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"m�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἦ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\223�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211ᬵ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"累", Erest@1/binary>>, Eacc@1);
canonical_order(<<"缾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"缾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\224�\202�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\204�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"㨮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\202�\225",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"鶴", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"鶴", Erest@1/binary>>, Eacc@1);
canonical_order(<<"揤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ῶ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"淋", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"á", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"㣣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\225\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ἡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𦔣", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𣢧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𣢧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\224�\200�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"立", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"漢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"衣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"и�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ū", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𡬘", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"N�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\235�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"`", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"`", Erest@1/binary>>, Eacc@1);
canonical_order(<<"瑇", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ῳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206ா", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"爐", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\223�\201�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ų", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ų", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"巡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ư", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"璘", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"שּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"¨�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"T�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203\230", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ȯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḩ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"é", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\217�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ἳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"尿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"尿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ş", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḍ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṉ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"洴", Erest@1/binary>>, Eacc@1);
canonical_order(<<"画", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"鸞", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"縂", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"婦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"婦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṛ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"並", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"並", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211\215̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"充", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"港", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"菊", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḇ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"衠", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṟ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ọ�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"麻", Erest@1/binary>>, Eacc@1);
canonical_order(<<"頋", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ṥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"s�\201�\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ļ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ļ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\227�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"糣", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"糣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"拉", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"R�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἢ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"C�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"捻", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"㮝", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḻ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḻ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206\224̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\223�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"蠟", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"樂", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\207\224̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\222\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ὤ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"鱗", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ड़", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḭ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\207\220̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"喝", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"掠", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"海", Erest@1/binary>>, Eacc@1);
canonical_order(<<"擄", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṳ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"派", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᬽ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ᬽ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233ֿ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\223�\200�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ẩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\202�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ӳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203�\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"屠", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"屠", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ñ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"n�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\204�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"S�\201�\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"翺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"翺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"來", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\225�\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"羕", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"h�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"辰", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"辰", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\236\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ó", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𩅅", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ךּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\210�\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ų", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ų", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾲ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\200�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"墨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"墨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\237�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ț", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\231\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ṭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṭ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"罹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"罹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\223�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"華", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ẽ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ţ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ţ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ο�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ẖ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"羚", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\224�\202�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"郱", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḳ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"刻", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\214\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ḷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḷ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṋ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𨜮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḙ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\223�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"悔", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"寮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"寮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"῾�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201\237�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ӣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221ֿ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ú", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ἡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"狼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𦌾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὺ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"博", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"嬨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"फ़", Erest@1/binary>>, Eacc@1);
canonical_order(<<"浪", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"浪", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὠ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"卑", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ὣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"犀", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\230�\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202ᬵ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"禮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"禮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṣ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225़", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ẳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\206�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"C�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḍ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"轢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ế", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\202�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ữ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\233�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ḹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḷ�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṽ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"V�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"異", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𧏊", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ü", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\215\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\215\207�\221\214�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"雃", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\217\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾴ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\201�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ù", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"櫛", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"㔕", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ǩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"K�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"X�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"≠", Erest@1/binary>>, Eacc@1);
canonical_order(<<"û", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ऱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ऱ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾦ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\223�\202�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"W�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ů", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201\216", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\215�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ę", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蓳", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ӫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ө�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\205\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ǫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ǫ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"榣", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"榣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"輪", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"巢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"漣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ώ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\231�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"略", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"嵃", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"浩", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ȩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ȩ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ậ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ạ�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"а�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𤾡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𤾡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ị", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\210�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"啕", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"M�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"g�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\224�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"靈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"率", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ḫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḫ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"墬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ӵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ч�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\236\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𦈨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ẩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\202�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ū", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"庶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𥁄", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"絛", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"䦕", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾮ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\223�\202�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ứ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\233�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\217\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ଡ଼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"醴", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"㤜", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"X�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἠ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\210�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"C�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ȫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\210�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"塞", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\206�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\206��\235\205��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ǯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ʒ�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"آ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ا�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ǧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"G�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"嬾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"嬾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蔖", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ḣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"H�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"嶲", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"嶲", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\224�\200�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ș", Erest@1/binary>>, Eacc@1);
canonical_order(<<"扝", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"懞", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ọ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"免", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ȫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\210�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\202�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"郞", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"岍", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\224�\201�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"葉", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ӱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\202\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"墳", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"墳", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\224�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"𧢮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201\227�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ź", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"z�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ḭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḭ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ئ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"鈴", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"䩶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"䩶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"緇", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"臨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ę", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ã", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ũ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ᾱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ǣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𥮫", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𥮫", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ṣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṣ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"練", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"練", Erest@1/binary>>, Eacc@1);
canonical_order(<<"睊", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ǰ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"j�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𦉇", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"憲", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"次", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"次", Erest@1/binary>>, Eacc@1);
canonical_order(<<"尢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"尢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἴ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"隣", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蜎", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"沈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\217�\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ẳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\206�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234ྷ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"浸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"檨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"檨", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṷ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"𥪧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"יּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ç�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"שּׁ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"שּ�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ǽ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"層", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"層", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ଢ଼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\206�\202\231",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𣪍", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ạ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ạ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"藺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"奔", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"虜", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"謁", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234਼", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\234\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"廉", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\202�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ť", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"T�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"𩬰", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\226�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\226��\221\226�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210\203̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\223�\202�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𨵷", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𨵷", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḅ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\204�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\204��\221\204�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"洖", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ȩ�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\234\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṟ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ķ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ķ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"漢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\225�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\210�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"例", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𩈚", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ṩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṣ�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\205\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ὢ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"視", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"拔", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ṿ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṿ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"当", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\224�\201�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\224�\201�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"繅", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\230�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"屮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"屮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"黹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"鵧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"殮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"殮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"兩", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"е�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"卿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𤘈", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ί", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\207�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\223�\202�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ό", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\204�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"d�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"謹", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"謹", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ỵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ỵ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\204�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"竮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḑ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"嬾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"嬾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"難", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"器", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"掃", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"全", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"綠", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"綠", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"辶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"辶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"刺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𤰶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𤰶", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"彫", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\204\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"勉", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"䔫", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"怜", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234़", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"慌", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ά", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ѷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ѵ�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"य़", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"p�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233\212", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"郎", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\224�\201�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"起", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ŵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"w�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"㰘", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"韠", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𦾱", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𦾱", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ǡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\207�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"女", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὲ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ε�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"䬳", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\223�\200�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ủ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ű", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ǽ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"識", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ὠ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\201�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ſ�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"侮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"侮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"潮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𦖨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"喝", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"W�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ῷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\202�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ÿ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"y�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"סּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\233�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ș", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"壷", Erest@1/binary>>, Eacc@1);
canonical_order(<<"聠", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"老", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"㺸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"㺸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\232�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"䊠", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"冀", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ģ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ģ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ĭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ầ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\202�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𣲼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𣲼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\210�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ό", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ο�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\203�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ἰ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\234\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ṱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṱ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"諾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"諾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"桒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"誠", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蛢", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ὤ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\223�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"僧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ǧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"g�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ṯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṯ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\202�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾶ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205ᬵ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"έ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ε�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"卿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"灰", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𣑭", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ὼ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"懶", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"勤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226़", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ὸ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ྦྷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ྦྷ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"署", Erest@1/binary>>, Eacc@1);
canonical_order(<<"š", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"s�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"罺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"罺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"沿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"沿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"u�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\233�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"包", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"s�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"侮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ỳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"y�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ऴ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ऴ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"者", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"B�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"慺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ą", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ẓ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"≯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\234\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\202�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"椔", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"冷", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"林", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ḱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"K�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"叫", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"â", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\234\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Z�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"רּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"匿", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ḳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḳ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\210�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ẫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\202�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207া", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"襤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"襤", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222�\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"寘", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"㤺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"㤺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ӵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ἥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"綾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𧃒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḁ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"獵", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"蘆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ņ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ž", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"z�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḇ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"逸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"r�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ŭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ẹ�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"r�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\230\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ģ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ģ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207ᬵ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"侻", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\221", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ö", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"頋", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"嵐", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"瑩", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"í", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"שּׂ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"שּ�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ऩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ऩ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"嵫", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"嵫", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ž", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Z�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"秫", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\206�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\206��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\234\236", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"頩", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"W�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ỷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Y�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"省", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṛ�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\225\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"憯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ụ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ụ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ĥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"H�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\223�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"藍", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227\215", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ĵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"J�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"飯", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"飯", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"D�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"f�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200��\200�", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḏ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"䩮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"䩮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207\214", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"視", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212\221̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"H�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ṧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"S�\214�\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ŷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Y�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ಿ�\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ī", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"弢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"年", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḁ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾼ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"N�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"溺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"溺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ế", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\202�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ĩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ȭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\203�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ǭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ǫ�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\206�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\206��\235\205��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"n�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"瘐", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\205�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\205\230�\235\205��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"惇", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ᾫ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\224�\200�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"獺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"䈧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ẕ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"צּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"汧", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"汧", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\202�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𡷦", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𡷦", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\205�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\205\230�\235\205��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"貫", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"売", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ྫྷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ྫྷ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ӭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ḽ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḽ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ӭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Э�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\231�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ỵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ỵ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"硫", Erest@1/binary>>, Eacc@1);
canonical_order(<<"碌", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"牐", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211\220", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḓ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"絣", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"絣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"櫓", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ι�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\232\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ắ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\206�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ἳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ḿ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"M�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1);
canonical_order(<<"拾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"理", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ṿ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṿ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206�\226", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"都", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\223�\201�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"卽", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"殟", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ẹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ẹ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ẓ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𣚣", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"憎", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ж�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ụ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ụ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ε�\223", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蜨", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ǭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ǫ�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221\222", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𢯱", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𢯱", Erest@1/binary>>, Eacc@1);
canonical_order(<<"璅", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"דּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\223ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ȧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ȭ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\203�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṉ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"婢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ῡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ŷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"y�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\224�\202�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"裡", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"裡", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\224", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"說", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"說", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\210\211", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210\210̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"I�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"蕤", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"虜", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231\234", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"螆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"鹿", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"濫", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"濫", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"¨�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\221\226�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221\226��\221\226�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ḵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḵ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"周", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220�\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\204�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ḙ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"寃", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1);
canonical_order(<<"甾", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\224�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"節", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṱ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225ֹ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ť", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"t�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ὰ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ů", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\223", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"г�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"F�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\237�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\233�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"飢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"N�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ỳ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Y�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ὴ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"η�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"朗", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Š", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"S�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"瑱", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"o�\202�\211", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235\205�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\205\230�\235\205��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ọ�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ΰ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\210�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"й", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"и�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"G�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\212", Erest@1/binary>>, Eacc@1);
canonical_order(<<"荓", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\224", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ẕ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\211\205̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"n�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ο�\224�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ä", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ἰ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\223", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"懲", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\206�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\206��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"r�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\223�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"什", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\217", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\221", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"履", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"駾", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\223\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"夢", Erest@1/binary>>, Eacc@1);
canonical_order(<<"鐕", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220\225", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\211�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1);
canonical_order(<<"אַ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220ַ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"露", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\234�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"李", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\235\216", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ṯ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṯ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"紀", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\223�\202�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\212\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212\202̸", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\234�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"x�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\227़", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"姘", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ο�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"飼", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"飼", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\212�̸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ḩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḩ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\200\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"嶺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"嶺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ự", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\233̣", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233ྷ", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\234", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ỷ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"y�\211", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ḱ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"k�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\232", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\237", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"য়", Erest@1/binary>>, Eacc@1);
canonical_order(<<"領", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ᾩ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ω�\224�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ǹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"n�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\217�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\211", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"i�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\236", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\210\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"𤾸", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𤾸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\212�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"笠", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"笠", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ῠ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Υ�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"淪", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"丸", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\212", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"תּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\205�", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\205\230�\235\205��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\235", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231�\217�\212",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"駱", Erest@1/binary>>, Eacc@1);
canonical_order(<<"屮", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"屮", Erest@1/binary>>, Eacc@1);
canonical_order(<<"館", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"館", Erest@1/binary>>, Eacc@1);
canonical_order(<<"剆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\230", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ŗ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\205\237", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\205\230�\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ῦ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\215", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\230�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"料", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\226\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Y�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ῡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\204", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\205�\224�\202", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\210", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ỡ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"O�\233�\203", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ʹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ʹ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ṇ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"歲", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"歲", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\214", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\207�\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ḹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"Ḷ�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\201�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"勺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"α�\224�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ǻ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"a�\212�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ṧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"s�\214�\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"隷", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"悔", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\204�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\227", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\206\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ľ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"l�\214", Erest@1/binary>>, Eacc@1);
canonical_order(<<"勇", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213\207", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ῥ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\201�\224", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"挽", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ṹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"U�\203�\201", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1);
canonical_order(<<"מּ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236ּ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ǣ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"æ�\204", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\217\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"姬", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"姬", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\213", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\226", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ṃ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\225", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ķ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ķ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\235\207\200", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\235\206��\235\205��\235\205�",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ῲ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\211�\200�\205", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\233�", Erest@1/binary>>, Eacc@1);
canonical_order(<<"䍙", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\215\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"戛", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210\233", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"䕝", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\225\235", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\201", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"m�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\233", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\232", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ẹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ẹ", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\217", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\221�\224�\202�\205",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\207", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"輻", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\205", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ą", Erest@1/binary>>, Eacc@1);
canonical_order(<<"将", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\206", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\220�\210", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\202�", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\202��\202\231", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"Ȧ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\207", Erest@1/binary>>, Eacc@1);
canonical_order(<<"㱎", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"北", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214\227", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"ε�\223�\200", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\210", Erest@1/binary>>, Eacc@1);
canonical_order(<<"Ǹ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"N�\200", Erest@1/binary>>, Eacc@1);
canonical_order(<<"𣫺", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"𣫺", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\202", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"A�\221", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\203\224", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\203\222�\202\232",
		      Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"匆", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\214\206", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"E�\217", Erest@1/binary>>, Eacc@1);
canonical_order(<<"諒", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\222", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\206", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\234\237", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"ĵ", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"j�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\204", Erest@1/binary>>,
		Eacc@1) ->
    canonical_order(<<"�\220\213", Erest@1/binary>>,
		    Eacc@1);
canonical_order(<<"�\220", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\236", Erest@1/binary>>, Eacc@1);
canonical_order(<<"�\231", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"�\216", Erest@1/binary>>, Eacc@1);
canonical_order(<<"ê", Erest@1/binary>>, Eacc@1) ->
    canonical_order(<<"e�\202", Erest@1/binary>>, Eacc@1);
canonical_order(<<Eh@1/utf8, Et@1/binary>>, Eacc@1) ->
    case combining_class(Eh@1) of
      0 ->
	  <<(canonical_order(Eacc@1))/binary,
	    (canonical_order(Et@1, [{Eh@1, 0}]))/binary>>;
      En@1 -> canonical_order(Et@1, [{Eh@1, En@1} | Eacc@1])
    end;
canonical_order(<<>>, Eacc@1) ->
    canonical_order(Eacc@1).

combining_class(6836) -> 230;
combining_class(7636) -> 230;
combining_class(8406) -> 230;
combining_class(122910) -> 230;
combining_class(6459) -> 220;
combining_class(878) -> 230;
combining_class(2637) -> 9;
combining_class(3405) -> 9;
combining_class(1851) -> 220;
combining_class(92980) -> 230;
combining_class(122888) -> 230;
combining_class(7378) -> 230;
combining_class(1559) -> 230;
combining_class(1773) -> 220;
combining_class(6679) -> 230;
combining_class(2293) -> 230;
combining_class(7377) -> 230;
combining_class(831) -> 230;
combining_class(1763) -> 220;
combining_class(7382) -> 220;
combining_class(7626) -> 220;
combining_class(7655) -> 230;
combining_class(42737) -> 230;
combining_class(1450) -> 220;
combining_class(3659) -> 107;
combining_class(851) -> 220;
combining_class(43307) -> 220;
combining_class(3971) -> 230;
combining_class(2028) -> 230;
combining_class(1442) -> 220;
combining_class(821) -> 1;
combining_class(11765) -> 230;
combining_class(65069) -> 220;
combining_class(1477) -> 220;
combining_class(125257) -> 230;
combining_class(65071) -> 230;
combining_class(8401) -> 230;
combining_class(775) -> 230;
combining_class(65065) -> 220;
combining_class(43240) -> 230;
combining_class(841) -> 220;
combining_class(1454) -> 228;
combining_class(1447) -> 220;
combining_class(850) -> 230;
combining_class(7616) -> 230;
combining_class(125254) -> 230;
combining_class(7659) -> 230;
combining_class(7398) -> 1;
combining_class(71103) -> 9;
combining_class(784) -> 230;
combining_class(7660) -> 230;
combining_class(7646) -> 230;
combining_class(2035) -> 230;
combining_class(803) -> 220;
combining_class(69940) -> 9;
combining_class(806) -> 220;
combining_class(2079) -> 230;
combining_class(70003) -> 7;
combining_class(1461) -> 15;
combining_class(70198) -> 7;
combining_class(42620) -> 230;
combining_class(70377) -> 7;
combining_class(11763) -> 230;
combining_class(2080) -> 230;
combining_class(838) -> 230;
combining_class(1616) -> 32;
combining_class(1621) -> 220;
combining_class(7025) -> 230;
combining_class(7632) -> 202;
combining_class(70507) -> 230;
combining_class(6778) -> 230;
combining_class(866) -> 233;
combining_class(811) -> 220;
combining_class(1553) -> 230;
combining_class(1772) -> 230;
combining_class(3657) -> 107;
combining_class(7388) -> 220;
combining_class(1463) -> 17;
combining_class(1453) -> 222;
combining_class(70851) -> 7;
combining_class(1631) -> 220;
combining_class(70506) -> 230;
combining_class(119176) -> 230;
combining_class(92913) -> 1;
combining_class(879) -> 230;
combining_class(42612) -> 230;
combining_class(2029) -> 230;
combining_class(794) -> 232;
combining_class(7625) -> 230;
combining_class(856) -> 232;
combining_class(119144) -> 1;
combining_class(11775) -> 230;
combining_class(8430) -> 220;
combining_class(125137) -> 220;
combining_class(4959) -> 230;
combining_class(7383) -> 220;
combining_class(3530) -> 9;
combining_class(1850) -> 230;
combining_class(3974) -> 230;
combining_class(122913) -> 230;
combining_class(1557) -> 230;
combining_class(2090) -> 230;
combining_class(6774) -> 230;
combining_class(2086) -> 230;
combining_class(2301) -> 230;
combining_class(1558) -> 230;
combining_class(816) -> 220;
combining_class(7023) -> 230;
combining_class(3768) -> 118;
combining_class(1771) -> 230;
combining_class(799) -> 220;
combining_class(43246) -> 230;
combining_class(2137) -> 220;
combining_class(1427) -> 230;
combining_class(1860) -> 220;
combining_class(769) -> 230;
combining_class(43766) -> 9;
combining_class(119153) -> 216;
combining_class(8422) -> 1;
combining_class(122916) -> 230;
combining_class(819) -> 220;
combining_class(1855) -> 230;
combining_class(871) -> 230;
combining_class(119362) -> 230;
combining_class(2269) -> 230;
combining_class(802) -> 202;
combining_class(7628) -> 230;
combining_class(8423) -> 230;
combining_class(779) -> 230;
combining_class(1156) -> 230;
combining_class(873) -> 230;
combining_class(119177) -> 230;
combining_class(119164) -> 220;
combining_class(1471) -> 23;
combining_class(1853) -> 230;
combining_class(7386) -> 230;
combining_class(11761) -> 230;
combining_class(2294) -> 220;
combining_class(1443) -> 220;
combining_class(1856) -> 230;
combining_class(3641) -> 103;
combining_class(2033) -> 230;
combining_class(2284) -> 230;
combining_class(1159) -> 230;
combining_class(122895) -> 230;
combining_class(876) -> 230;
combining_class(2278) -> 220;
combining_class(119152) -> 216;
combining_class(1768) -> 230;
combining_class(1857) -> 230;
combining_class(119212) -> 230;
combining_class(3642) -> 9;
combining_class(69759) -> 9;
combining_class(8429) -> 220;
combining_class(1445) -> 220;
combining_class(7666) -> 230;
combining_class(2268) -> 230;
combining_class(122893) -> 230;
combining_class(122886) -> 230;
combining_class(2492) -> 7;
combining_class(11745) -> 230;
combining_class(867) -> 230;
combining_class(6832) -> 230;
combining_class(7380) -> 1;
combining_class(122902) -> 230;
combining_class(7223) -> 7;
combining_class(43233) -> 230;
combining_class(785) -> 230;
combining_class(7679) -> 220;
combining_class(11760) -> 230;
combining_class(7631) -> 220;
combining_class(11504) -> 230;
combining_class(72767) -> 9;
combining_class(119143) -> 1;
combining_class(1155) -> 230;
combining_class(7024) -> 230;
combining_class(66272) -> 220;
combining_class(71351) -> 7;
combining_class(7635) -> 230;
combining_class(7642) -> 230;
combining_class(7082) -> 9;
combining_class(43245) -> 230;
combining_class(1425) -> 220;
combining_class(1858) -> 220;
combining_class(119141) -> 216;
combining_class(125139) -> 220;
combining_class(43248) -> 230;
combining_class(2085) -> 230;
combining_class(7623) -> 230;
combining_class(857) -> 220;
combining_class(854) -> 220;
combining_class(65060) -> 230;
combining_class(4237) -> 220;
combining_class(6843) -> 230;
combining_class(875) -> 230;
combining_class(11757) -> 230;
combining_class(1628) -> 220;
combining_class(2267) -> 230;
combining_class(7651) -> 230;
combining_class(1840) -> 230;
combining_class(2272) -> 230;
combining_class(66424) -> 230;
combining_class(8409) -> 1;
combining_class(1629) -> 230;
combining_class(11759) -> 230;
combining_class(2027) -> 230;
combining_class(2081) -> 230;
combining_class(7668) -> 230;
combining_class(863) -> 233;
combining_class(7654) -> 230;
combining_class(8432) -> 230;
combining_class(1429) -> 230;
combining_class(1843) -> 230;
combining_class(6109) -> 230;
combining_class(2139) -> 220;
combining_class(12333) -> 222;
combining_class(92914) -> 1;
combining_class(2138) -> 220;
combining_class(1759) -> 230;
combining_class(773) -> 230;
combining_class(1479) -> 18;
combining_class(7412) -> 230;
combining_class(1845) -> 230;
combining_class(836) -> 230;
combining_class(2876) -> 7;
combining_class(2295) -> 230;
combining_class(1626) -> 230;
combining_class(43239) -> 230;
combining_class(69818) -> 7;
combining_class(7154) -> 9;
combining_class(1618) -> 34;
combining_class(65058) -> 230;
combining_class(122909) -> 230;
combining_class(1433) -> 230;
combining_class(64286) -> 26;
combining_class(2073) -> 230;
combining_class(42736) -> 230;
combining_class(3864) -> 220;
combining_class(43237) -> 230;
combining_class(820) -> 1;
combining_class(8404) -> 230;
combining_class(6837) -> 220;
combining_class(68159) -> 9;
combining_class(66425) -> 230;
combining_class(8410) -> 1;
combining_class(122900) -> 230;
combining_class(797) -> 220;
combining_class(3149) -> 9;
combining_class(12442) -> 8;
combining_class(11772) -> 230;
combining_class(70512) -> 230;
combining_class(1760) -> 230;
combining_class(70502) -> 230;
combining_class(122882) -> 230;
combining_class(842) -> 230;
combining_class(2271) -> 230;
combining_class(5940) -> 9;
combining_class(2262) -> 230;
combining_class(1612) -> 28;
combining_class(1435) -> 220;
combining_class(69939) -> 9;
combining_class(3784) -> 122;
combining_class(852) -> 220;
combining_class(70513) -> 230;
combining_class(8405) -> 230;
combining_class(1753) -> 230;
combining_class(1841) -> 220;
combining_class(7669) -> 230;
combining_class(2279) -> 230;
combining_class(3260) -> 7;
combining_class(7397) -> 1;
combining_class(7405) -> 220;
combining_class(125258) -> 7;
combining_class(7641) -> 230;
combining_class(122880) -> 230;
combining_class(2265) -> 230;
combining_class(43249) -> 230;
combining_class(71467) -> 9;
combining_class(66426) -> 230;
combining_class(798) -> 220;
combining_class(119211) -> 230;
combining_class(42614) -> 230;
combining_class(844) -> 230;
combining_class(4151) -> 7;
combining_class(815) -> 220;
combining_class(2077) -> 230;
combining_class(826) -> 220;
combining_class(6845) -> 220;
combining_class(7627) -> 230;
combining_class(7650) -> 230;
combining_class(1465) -> 19;
combining_class(122921) -> 230;
combining_class(125138) -> 220;
combining_class(11767) -> 230;
combining_class(122918) -> 230;
combining_class(125256) -> 230;
combining_class(65063) -> 220;
combining_class(43309) -> 220;
combining_class(122889) -> 230;
combining_class(6777) -> 230;
combining_class(6841) -> 220;
combining_class(6835) -> 230;
combining_class(11771) -> 230;
combining_class(68325) -> 230;
combining_class(3972) -> 9;
combining_class(1560) -> 30;
combining_class(3656) -> 107;
combining_class(1436) -> 230;
combining_class(42613) -> 230;
combining_class(7620) -> 230;
combining_class(862) -> 234;
combining_class(1848) -> 220;
combining_class(7658) -> 230;
combining_class(790) -> 220;
combining_class(1157) -> 230;
combining_class(119145) -> 1;
combining_class(1764) -> 230;
combining_class(7155) -> 9;
combining_class(122908) -> 230;
combining_class(7021) -> 230;
combining_class(7389) -> 220;
combining_class(2765) -> 9;
combining_class(7662) -> 230;
combining_class(2509) -> 9;
combining_class(43699) -> 230;
combining_class(70516) -> 230;
combining_class(789) -> 232;
combining_class(6780) -> 230;
combining_class(70726) -> 7;
combining_class(8412) -> 230;
combining_class(865) -> 234;
combining_class(44013) -> 9;
combining_class(65061) -> 230;
combining_class(7392) -> 230;
combining_class(3968) -> 130;
combining_class(11752) -> 230;
combining_class(788) -> 230;
combining_class(1438) -> 230;
combining_class(11769) -> 230;
combining_class(7634) -> 230;
combining_class(1552) -> 230;
combining_class(807) -> 202;
combining_class(829) -> 230;
combining_class(66423) -> 230;
combining_class(1444) -> 220;
combining_class(1158) -> 230;
combining_class(2275) -> 220;
combining_class(70508) -> 230;
combining_class(1854) -> 220;
combining_class(70505) -> 230;
combining_class(43443) -> 7;
combining_class(2620) -> 7;
combining_class(1452) -> 230;
combining_class(2292) -> 230;
combining_class(8402) -> 1;
combining_class(1614) -> 30;
combining_class(1446) -> 220;
combining_class(12335) -> 224;
combining_class(12334) -> 224;
combining_class(119142) -> 216;
combining_class(122885) -> 230;
combining_class(7416) -> 230;
combining_class(7639) -> 230;
combining_class(11755) -> 230;
combining_class(125253) -> 230;
combining_class(1770) -> 220;
combining_class(122890) -> 230;
combining_class(7390) -> 220;
combining_class(809) -> 220;
combining_class(3895) -> 220;
combining_class(122899) -> 230;
combining_class(3786) -> 122;
combining_class(113822) -> 1;
combining_class(7394) -> 1;
combining_class(1474) -> 25;
combining_class(2748) -> 7;
combining_class(7630) -> 214;
combining_class(1861) -> 230;
combining_class(43232) -> 230;
combining_class(42654) -> 230;
combining_class(3963) -> 130;
combining_class(11753) -> 230;
combining_class(796) -> 220;
combining_class(71104) -> 7;
combining_class(11647) -> 9;
combining_class(1430) -> 220;
combining_class(7617) -> 230;
combining_class(119179) -> 220;
combining_class(122903) -> 230;
combining_class(43704) -> 230;
combining_class(2300) -> 230;
combining_class(3865) -> 220;
combining_class(7652) -> 230;
combining_class(1756) -> 230;
combining_class(3658) -> 107;
combining_class(877) -> 230;
combining_class(4038) -> 220;
combining_class(65066) -> 220;
combining_class(2280) -> 230;
combining_class(7633) -> 230;
combining_class(7027) -> 230;
combining_class(7400) -> 1;
combining_class(2078) -> 230;
combining_class(6783) -> 220;
combining_class(814) -> 220;
combining_class(2261) -> 230;
combining_class(1617) -> 33;
combining_class(777) -> 230;
combining_class(2082) -> 230;
combining_class(7667) -> 230;
combining_class(43698) -> 230;
combining_class(42615) -> 230;
combining_class(92979) -> 230;
combining_class(12330) -> 218;
combining_class(834) -> 230;
combining_class(1864) -> 220;
combining_class(69817) -> 9;
combining_class(11748) -> 230;
combining_class(2270) -> 230;
combining_class(11768) -> 230;
combining_class(859) -> 230;
combining_class(70503) -> 230;
combining_class(864) -> 234;
combining_class(2299) -> 230;
combining_class(7621) -> 230;
combining_class(6680) -> 220;
combining_class(2030) -> 230;
combining_class(70722) -> 9;
combining_class(7645) -> 230;
combining_class(791) -> 220;
combining_class(1457) -> 11;
combining_class(2072) -> 230;
combining_class(70514) -> 230;
combining_class(68109) -> 220;
combining_class(119213) -> 230;
combining_class(11744) -> 230;
combining_class(71350) -> 9;
combining_class(11747) -> 230;
combining_class(1623) -> 230;
combining_class(2388) -> 230;
combining_class(119163) -> 220;
combining_class(839) -> 220;
combining_class(1451) -> 230;
combining_class(7083) -> 9;
combining_class(828) -> 220;
combining_class(42607) -> 230;
combining_class(6833) -> 230;
combining_class(43241) -> 230;
combining_class(2083) -> 230;
combining_class(8411) -> 230;
combining_class(2296) -> 230;
combining_class(6980) -> 9;
combining_class(1469) -> 22;
combining_class(774) -> 230;
combining_class(1428) -> 230;
combining_class(822) -> 1;
combining_class(7622) -> 230;
combining_class(11754) -> 230;
combining_class(2303) -> 230;
combining_class(7391) -> 220;
combining_class(1460) -> 14;
combining_class(119363) -> 230;
combining_class(770) -> 230;
combining_class(3954) -> 130;
combining_class(7020) -> 220;
combining_class(122892) -> 230;
combining_class(68111) -> 230;
combining_class(1844) -> 220;
combining_class(1847) -> 220;
combining_class(2286) -> 220;
combining_class(42621) -> 230;
combining_class(122897) -> 230;
combining_class(1852) -> 220;
combining_class(824) -> 1;
combining_class(2289) -> 28;
combining_class(7026) -> 230;
combining_class(70197) -> 9;
combining_class(3277) -> 9;
combining_class(8428) -> 220;
combining_class(2264) -> 230;
combining_class(1842) -> 230;
combining_class(837) -> 240;
combining_class(1767) -> 230;
combining_class(4154) -> 9;
combining_class(12332) -> 232;
combining_class(7675) -> 230;
combining_class(122881) -> 230;
combining_class(6834) -> 230;
combining_class(92916) -> 1;
combining_class(43204) -> 9;
combining_class(65056) -> 230;
combining_class(2893) -> 9;
combining_class(7647) -> 230;
combining_class(42619) -> 230;
combining_class(122904) -> 230;
combining_class(70477) -> 9;
combining_class(7399) -> 1;
combining_class(1863) -> 230;
combining_class(7019) -> 230;
combining_class(3975) -> 230;
combining_class(2273) -> 230;
combining_class(125142) -> 220;
combining_class(1849) -> 220;
combining_class(69702) -> 9;
combining_class(125252) -> 230;
combining_class(68152) -> 230;
combining_class(2092) -> 230;
combining_class(8426) -> 1;
combining_class(42616) -> 230;
combining_class(119169) -> 220;
combining_class(92981) -> 230;
combining_class(1466) -> 19;
combining_class(122922) -> 230;
combining_class(805) -> 220;
combining_class(7417) -> 230;
combining_class(1615) -> 31;
combining_class(768) -> 230;
combining_class(7657) -> 230;
combining_class(119150) -> 216;
combining_class(122901) -> 230;
combining_class(6964) -> 7;
combining_class(2298) -> 220;
combining_class(122919) -> 230;
combining_class(3956) -> 132;
combining_class(2297) -> 220;
combining_class(7376) -> 230;
combining_class(3970) -> 230;
combining_class(65062) -> 230;
combining_class(2290) -> 29;
combining_class(2287) -> 220;
combining_class(861) -> 234;
combining_class(823) -> 1;
combining_class(870) -> 230;
combining_class(8403) -> 1;
combining_class(2291) -> 230;
combining_class(2093) -> 230;
combining_class(4153) -> 9;
combining_class(43014) -> 9;
combining_class(7661) -> 230;
combining_class(119151) -> 216;
combining_class(42655) -> 230;
combining_class(1456) -> 10;
combining_class(11762) -> 230;
combining_class(70080) -> 9;
combining_class(855) -> 230;
combining_class(119174) -> 230;
combining_class(783) -> 230;
combining_class(43700) -> 220;
combining_class(125255) -> 230;
combining_class(122898) -> 230;
combining_class(1622) -> 220;
combining_class(119178) -> 220;
combining_class(122912) -> 230;
combining_class(92982) -> 230;
combining_class(2266) -> 230;
combining_class(2385) -> 230;
combining_class(43713) -> 230;
combining_class(1613) -> 29;
combining_class(1434) -> 222;
combining_class(7629) -> 234;
combining_class(119168) -> 220;
combining_class(8408) -> 1;
combining_class(3964) -> 130;
combining_class(68326) -> 220;
combining_class(3021) -> 9;
combining_class(92915) -> 1;
combining_class(780) -> 230;
combining_class(65070) -> 230;
combining_class(830) -> 230;
combining_class(65068) -> 220;
combining_class(1648) -> 35;
combining_class(7677) -> 220;
combining_class(69888) -> 230;
combining_class(119170) -> 220;
combining_class(69889) -> 230;
combining_class(1620) -> 230;
combining_class(849) -> 230;
combining_class(1761) -> 230;
combining_class(6775) -> 230;
combining_class(6773) -> 230;
combining_class(1468) -> 21;
combining_class(778) -> 230;
combining_class(43236) -> 230;
combining_class(43711) -> 230;
combining_class(1862) -> 220;
combining_class(43456) -> 9;
combining_class(787) -> 230;
combining_class(2281) -> 220;
combining_class(1441) -> 230;
combining_class(1439) -> 230;
combining_class(70850) -> 9;
combining_class(1865) -> 230;
combining_class(1809) -> 36;
combining_class(66045) -> 220;
combining_class(7381) -> 220;
combining_class(1455) -> 230;
combining_class(7678) -> 230;
combining_class(6840) -> 220;
combining_class(2285) -> 220;
combining_class(1627) -> 230;
combining_class(1555) -> 230;
combining_class(2032) -> 230;
combining_class(2076) -> 230;
combining_class(818) -> 220;
combining_class(8421) -> 1;
combining_class(65067) -> 220;
combining_class(2034) -> 220;
combining_class(6844) -> 230;
combining_class(833) -> 230;
combining_class(125140) -> 220;
combining_class(1467) -> 20;
combining_class(810) -> 220;
combining_class(6838) -> 220;
combining_class(3785) -> 122;
combining_class(6839) -> 220;
combining_class(11764) -> 230;
combining_class(7640) -> 230;
combining_class(11756) -> 230;
combining_class(1462) -> 16;
combining_class(812) -> 220;
combining_class(12441) -> 8;
combining_class(66422) -> 230;
combining_class(1846) -> 230;
combining_class(1859) -> 230;
combining_class(70378) -> 9;
combining_class(776) -> 230;
combining_class(122883) -> 230;
combining_class(43235) -> 230;
combining_class(3965) -> 130;
combining_class(1473) -> 24;
combining_class(1448) -> 230;
combining_class(2386) -> 220;
combining_class(1750) -> 230;
combining_class(832) -> 230;
combining_class(782) -> 230;
combining_class(2070) -> 230;
combining_class(122891) -> 230;
combining_class(11770) -> 230;
combining_class(6776) -> 230;
combining_class(11758) -> 230;
combining_class(11774) -> 230;
combining_class(8417) -> 230;
combining_class(7649) -> 230;
combining_class(1762) -> 230;
combining_class(1464) -> 18;
combining_class(70090) -> 7;
combining_class(122920) -> 230;
combining_class(92977) -> 230;
combining_class(70460) -> 7;
combining_class(3953) -> 129;
combining_class(1630) -> 230;
combining_class(7676) -> 233;
combining_class(11503) -> 230;
combining_class(868) -> 230;
combining_class(771) -> 230;
combining_class(860) -> 233;
combining_class(11749) -> 230;
combining_class(817) -> 220;
combining_class(7384) -> 220;
combining_class(125136) -> 220;
combining_class(848) -> 230;
combining_class(843) -> 230;
combining_class(2263) -> 230;
combining_class(8425) -> 230;
combining_class(813) -> 220;
combining_class(3962) -> 130;
combining_class(1752) -> 230;
combining_class(793) -> 220;
combining_class(92976) -> 230;
combining_class(8407) -> 230;
combining_class(12331) -> 228;
combining_class(835) -> 230;
combining_class(2089) -> 230;
combining_class(2260) -> 230;
combining_class(7637) -> 230;
combining_class(8431) -> 220;
combining_class(119210) -> 230;
combining_class(11766) -> 230;
combining_class(7663) -> 230;
combining_class(43347) -> 9;
combining_class(43243) -> 230;
combining_class(122915) -> 230;
combining_class(2276) -> 230;
combining_class(65064) -> 220;
combining_class(43242) -> 230;
combining_class(122896) -> 230;
combining_class(69890) -> 230;
combining_class(65059) -> 230;
combining_class(7638) -> 230;
combining_class(6752) -> 9;
combining_class(119149) -> 226;
combining_class(2364) -> 7;
combining_class(1619) -> 230;
combining_class(70515) -> 230;
combining_class(8427) -> 1;
combining_class(43696) -> 230;
combining_class(1458) -> 12;
combining_class(1561) -> 31;
combining_class(2282) -> 230;
combining_class(4957) -> 230;
combining_class(7385) -> 220;
combining_class(68153) -> 1;
combining_class(825) -> 220;
combining_class(2071) -> 230;
combining_class(6842) -> 220;
combining_class(872) -> 230;
combining_class(7644) -> 230;
combining_class(7665) -> 230;
combining_class(125141) -> 220;
combining_class(7656) -> 230;
combining_class(11773) -> 230;
combining_class(2087) -> 230;
combining_class(858) -> 220;
combining_class(119165) -> 220;
combining_class(43703) -> 230;
combining_class(119175) -> 230;
combining_class(6313) -> 228;
combining_class(7142) -> 7;
combining_class(1554) -> 230;
combining_class(122911) -> 230;
combining_class(11505) -> 230;
combining_class(8424) -> 220;
combining_class(2387) -> 230;
combining_class(43247) -> 230;
combining_class(122907) -> 230;
combining_class(795) -> 216;
combining_class(11750) -> 230;
combining_class(1449) -> 230;
combining_class(869) -> 230;
combining_class(92978) -> 230;
combining_class(2283) -> 230;
combining_class(43244) -> 230;
combining_class(7022) -> 230;
combining_class(1755) -> 230;
combining_class(1440) -> 230;
combining_class(43710) -> 230;
combining_class(65057) -> 230;
combining_class(1459) -> 13;
combining_class(2277) -> 230;
combining_class(1624) -> 230;
combining_class(781) -> 230;
combining_class(1866) -> 230;
combining_class(3893) -> 220;
combining_class(7619) -> 230;
combining_class(119173) -> 230;
combining_class(6098) -> 9;
combining_class(11751) -> 230;
combining_class(1625) -> 230;
combining_class(2091) -> 230;
combining_class(804) -> 220;
combining_class(122894) -> 230;
combining_class(1754) -> 230;
combining_class(4958) -> 230;
combining_class(827) -> 220;
combining_class(3787) -> 122;
combining_class(42618) -> 230;
combining_class(7664) -> 230;
combining_class(7624) -> 230;
combining_class(1562) -> 32;
combining_class(7396) -> 1;
combining_class(853) -> 220;
combining_class(7618) -> 220;
combining_class(2302) -> 230;
combining_class(2288) -> 27;
combining_class(5908) -> 9;
combining_class(840) -> 220;
combining_class(801) -> 202;
combining_class(792) -> 220;
combining_class(1431) -> 230;
combining_class(70504) -> 230;
combining_class(8400) -> 230;
combining_class(874) -> 230;
combining_class(43238) -> 230;
combining_class(119154) -> 216;
combining_class(1432) -> 230;
combining_class(6458) -> 230;
combining_class(43308) -> 220;
combining_class(71231) -> 9;
combining_class(3769) -> 118;
combining_class(3157) -> 84;
combining_class(11746) -> 230;
combining_class(1611) -> 27;
combining_class(7395) -> 1;
combining_class(119364) -> 230;
combining_class(1426) -> 230;
combining_class(119166) -> 220;
combining_class(2031) -> 230;
combining_class(772) -> 230;
combining_class(119167) -> 220;
combining_class(1751) -> 230;
combining_class(1556) -> 230;
combining_class(3897) -> 216;
combining_class(42617) -> 230;
combining_class(786) -> 230;
combining_class(800) -> 220;
combining_class(7387) -> 230;
combining_class(122884) -> 230;
combining_class(1476) -> 230;
combining_class(7648) -> 230;
combining_class(3158) -> 91;
combining_class(1437) -> 230;
combining_class(808) -> 202;
combining_class(845) -> 220;
combining_class(43234) -> 230;
combining_class(7653) -> 230;
combining_class(7643) -> 230;
combining_class(2075) -> 230;
combining_class(92912) -> 1;
combining_class(6779) -> 230;
combining_class(2381) -> 9;
combining_class(846) -> 220;
combining_class(6457) -> 222;
combining_class(68154) -> 220;
combining_class(3640) -> 103;
combining_class(_E) -> 0.

compose(<<Elead@1/utf8, Evowel@1/utf8, Erest@1/binary>>)
    when (erlang:is_integer(Elead@1) andalso
	    Elead@1 >= 4352 andalso Elead@1 =< 4370)
	   andalso
	   erlang:is_integer(Evowel@1) andalso
	     Evowel@1 >= 4449 andalso Evowel@1 =< 4469 ->
    Ecodepoint@1 = 44032 + (Elead@1 - 4352) * 588 +
		     (Evowel@1 - 4449) * 28,
    case Erest@1 of
      <<Etrail@1/utf8, Eaccents@1/binary>>
	  when erlang:is_integer(Etrail@1) andalso
		 Etrail@1 >= 4519 andalso Etrail@1 =< 4546 ->
	  <<(Ecodepoint@1 + Etrail@1 - 4519)/utf8,
	    Eaccents@1/binary>>;
      _E -> <<Ecodepoint@1/utf8, Erest@1/binary>>
    end;
compose(Ebinary@1) ->
    case compose_one(Ebinary@1) of
      _E@1 when (_E@1 =:= nil) or (_E@1 =:= false) ->
	  <<Ecp@1/utf8, Erest@1/binary>> = Ebinary@1,
	  compose_many(Erest@1, <<Ecp@1/utf8>>, <<>>,
		       combining_class(Ecp@1) - 1);
      _E@2 -> {Erest@1, Ecp@1} = {nil, nil}, _E@2
    end.

compose_many(<<>>, Ebase@1, Eaccents@1, _E) ->
    <<Ebase@1/binary, Eaccents@1/binary>>;
compose_many(<<Ecp@1/utf8, Erest@1/binary>>, Ebase@1,
	     Eaccents@1, Elast_class@1) ->
    Epart_class@1 = combining_class(Ecp@1),
    Ecombined@1 = <<Ebase@1/binary, Ecp@1/utf8>>,
    case Ecomposed@1 = case Elast_class@1 < Epart_class@1 of
			 _E@1 when (_E@1 =:= nil) or (_E@1 =:= false) -> _E@1;
			 _E -> compose_one(Ecombined@1)
		       end
	of
      _E@2 when (_E@2 =:= nil) or (_E@2 =:= false) ->
	  compose_many(Erest@1, Ebase@1,
		       <<Eaccents@1/binary, Ecp@1/utf8>>, Epart_class@1);
      _E ->
	  compose_many(Erest@1, Ecomposed@1, Eaccents@1,
		       Elast_class@1)
    end.

compose_one(<<"a�\214">>) -> <<"�\216">>;
compose_one(<<"Ἰ�\200">>) -> <<"Ἲ">>;
compose_one(<<"Ḻ">>) -> <<"Ḻ">>;
compose_one(<<"o�\233">>) -> <<"ơ">>;
compose_one(<<"a�\217">>) -> <<"�\201">>;
compose_one(<<"c�\201">>) -> <<"�\207">>;
compose_one(<<"o�\217">>) -> <<"�\215">>;
compose_one(<<"�\234�\200">>) -> <<"�\233">>;
compose_one(<<"G�\201">>) -> <<"Ǵ">>;
compose_one(<<"�\211�̸">>) -> <<"�\212\200">>;
compose_one(<<"῾�\201">>) -> <<"�\236">>;
compose_one(<<"Ư�\201">>) -> <<"Ứ">>;
compose_one(<<"�\215�\201">>) -> <<"�\223">>;
compose_one(<<"L�\201">>) -> <<"Ĺ">>;
compose_one(<<"�\212�\200">>) -> <<"�\200">>;
compose_one(<<"ư�\203">>) -> <<"ữ">>;
compose_one(<<"�\201��\202\232">>) -> <<"�\201�">>;
compose_one(<<"I�\203">>) -> <<"Ĩ">>;
compose_one(<<"к�\201">>) -> <<"�\234">>;
compose_one(<<"ж�\206">>) -> <<"�\202">>;
compose_one(<<"H�\210">>) -> <<"Ḧ">>;
compose_one(<<"е�\206">>) -> <<"�\227">>;
compose_one(<<"Ἰ�\202">>) -> <<"Ἶ">>;
compose_one(<<"ṵ">>) -> <<"ṵ">>;
compose_one(<<"r�\217">>) -> <<"�\221">>;
compose_one(<<"�\215ᬵ">>) -> <<"�\216">>;
compose_one(<<"w�\207">>) -> <<"�\207">>;
compose_one(<<"ε�\201">>) -> <<"έ">>;
compose_one(<<"ŗ">>) -> <<"�\227">>;
compose_one(<<"w�\212">>) -> <<"�\230">>;
compose_one(<<"Ơ�\201">>) -> <<"�\232">>;
compose_one(<<"ṣ�\207">>) -> <<"ṩ">>;
compose_one(<<"D�\214">>) -> <<"�\216">>;
compose_one(<<"R�\214">>) -> <<"�\230">>;
compose_one(<<"ι�\206">>) -> <<"�\220">>;
compose_one(<<"�\202\235�\202\231">>) ->
    <<"�\202\236">>;
compose_one(<<"I�\201">>) -> <<"�\215">>;
compose_one(<<"Ὢ�\205">>) -> <<"ᾪ">>;
compose_one(<<"�\221\202\231�\221\202�">>) ->
    <<"�\221\202\232">>;
compose_one(<<"o�\204">>) -> <<"�\215">>;
compose_one(<<"e�\211">>) -> <<"ẻ">>;
compose_one(<<"ѵ�\217">>) -> <<"ѷ">>;
compose_one(<<"e�\200">>) -> <<"è">>;
compose_one(<<"ḏ">>) -> <<"�\217">>;
compose_one(<<"i�\200">>) -> <<"ì">>;
compose_one(<<"ἤ�\205">>) -> <<"�\224">>;
compose_one(<<"Ȯ�\204">>) -> <<"Ȱ">>;
compose_one(<<"�\205�\201">>) -> <<"�\215">>;
compose_one(<<"ợ">>) -> <<"ợ">>;
compose_one(<<"Ṋ">>) -> <<"�\212">>;
compose_one(<<"и�\204">>) -> <<"ӣ">>;
compose_one(<<"�\212\206̸">>) -> <<"�\212\210">>;
compose_one(<<"ự">>) -> <<"ự">>;
compose_one(<<"U�\200">>) -> <<"�\231">>;
compose_one(<<"�\226�\206">>) -> <<"�\201">>;
compose_one(<<"�\213�\200">>) -> <<"ῢ">>;
compose_one(<<"c�\202">>) -> <<"�\211">>;
compose_one(<<"α�\200">>) -> <<"ὰ">>;
compose_one(<<"Ư�\200">>) -> <<"Ừ">>;
compose_one(<<"�\225�\200">>) -> <<"�\210">>;
compose_one(<<"Ū�\210">>) -> <<"Ṻ">>;
compose_one(<<"�\200�\201">>) -> <<"�\204">>;
compose_one(<<"w�\201">>) -> <<"�\203">>;
compose_one(<<"U�\211">>) -> <<"Ủ">>;
compose_one(<<"�\237�\224">>) -> <<"�\211">>;
compose_one(<<"t�\207">>) -> <<"ṫ">>;
compose_one(<<"�\230�\210">>) -> <<"Ӥ">>;
compose_one(<<"Ḛ">>) -> <<"�\232">>;
compose_one(<<"�\201�\223">>) -> <<"ῤ">>;
compose_one(<<"ὥ�\205">>) -> <<"ᾥ">>;
compose_one(<<"�\201\223�\202\231">>) ->
    <<"�\201\224">>;
compose_one(<<"g�\206">>) -> <<"�\237">>;
compose_one(<<"W�\202">>) -> <<"Ŵ">>;
compose_one(<<"ὴ�\205">>) -> <<"�\202">>;
compose_one(<<"�\221�\201">>) -> <<"�\225">>;
compose_one(<<"Ȧ�\204">>) -> <<"Ǡ">>;
compose_one(<<"Ȩ�\206">>) -> <<"�\234">>;
compose_one(<<"s�\207">>) -> <<"ṡ">>;
compose_one(<<"Ἡ�\202">>) -> <<"Ἧ">>;
compose_one(<<"Ṃ">>) -> <<"�\202">>;
compose_one(<<"v�\203">>) -> <<"ṽ">>;
compose_one(<<"Ὡ�\201">>) -> <<"Ὥ">>;
compose_one(<<"Ὠ�\202">>) -> <<"Ὦ">>;
compose_one(<<"�\231�\210">>) -> <<"Ϊ">>;
compose_one(<<"�\202�\201">>) -> <<"Ấ">>;
compose_one(<<"�\221�\201">>) -> <<"�\206">>;
compose_one(<<"A�\203">>) -> <<"�\203">>;
compose_one(<<"ḑ">>) -> <<"�\221">>;
compose_one(<<"�\211�̸">>) -> <<"�\211�">>;
compose_one(<<"e�\217">>) -> <<"�\205">>;
compose_one(<<"g�\204">>) -> <<"ḡ">>;
compose_one(<<"�\212�\200">>) -> <<"�\222">>;
compose_one(<<"�\212\207̸">>) -> <<"�\212\211">>;
compose_one(<<"α�\206">>) -> <<"ᾰ">>;
compose_one(<<"A�\201">>) -> <<"�\201">>;
compose_one(<<"ᭀ">>) -> <<"�\200">>;
compose_one(<<"�\212�̸">>) -> <<"�\213�">>;
compose_one(<<"ũ�\201">>) -> <<"ṹ">>;
compose_one(<<"R�\217">>) -> <<"�\220">>;
compose_one(<<"�\201\225�\202\231">>) ->
    <<"�\201\226">>;
compose_one(<<"�\227�\223">>) -> <<"Ἠ">>;
compose_one(<<"�\207\222̸">>) -> <<"�\207\217">>;
compose_one(<<"�\203��\202\231">>) -> <<"�\203�">>;
compose_one(<<"u�\206">>) -> <<"ŭ">>;
compose_one(<<"У�\213">>) -> <<"Ӳ">>;
compose_one(<<"Ἢ�\205">>) -> <<"�\232">>;
compose_one(<<"g�\207">>) -> <<"ġ">>;
compose_one(<<"ê�\203">>) -> <<"�\205">>;
compose_one(<<"ṳ">>) -> <<"ṳ">>;
compose_one(<<"�\221\202\233�\221\202�">>) ->
    <<"�\221\202\234">>;
compose_one(<<"ο�\224">>) -> <<"�\201">>;
compose_one(<<"з�\210">>) -> <<"�\237">>;
compose_one(<<"�\224�\201">>) -> <<"�\220">>;
compose_one(<<"�\203�\204">>) -> <<"ӯ">>;
compose_one(<<"�\211�\205">>) -> <<"�\211">>;
compose_one(<<"�\200�\200">>) -> <<"�\202">>;
compose_one(<<"�\201\233�\202\231">>) ->
    <<"�\201\234">>;
compose_one(<<"Ç">>) -> <<"�\207">>;
compose_one(<<"�\201��\202\231">>) -> <<"�\201�">>;
compose_one(<<"�\210�\202">>) -> <<"�\216">>;
compose_one(<<"ὠ�\202">>) -> <<"ὦ">>;
compose_one(<<"�\203�\206">>) -> <<"�\236">>;
compose_one(<<"ş">>) -> <<"�\237">>;
compose_one(<<"a�\200">>) -> <<"à">>;
compose_one(<<"�\221\222��\221\222�">>) ->
    <<"�\221\222�">>;
compose_one(<<"У�\204">>) -> <<"Ӯ">>;
compose_one(<<"U�\233">>) -> <<"Ư">>;
compose_one(<<"ὤ�\205">>) -> <<"ᾤ">>;
compose_one(<<"O�\202">>) -> <<"�\224">>;
compose_one(<<"ἡ�\200">>) -> <<"ἣ">>;
compose_one(<<"G�\207">>) -> <<"Ġ">>;
compose_one(<<"y�\204">>) -> <<"ȳ">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"P�\207">>) -> <<"�\226">>;
compose_one(<<"�\227�\210">>) -> <<"�\236">>;
compose_one(<<"�\220�\201">>) -> <<"�\224">>;
compose_one(<<"�\212�\202">>) -> <<"�\227">>;
compose_one(<<"ἠ�\201">>) -> <<"ἤ">>;
compose_one(<<"῾�\202">>) -> <<"�\237">>;
compose_one(<<"Ἡ�\201">>) -> <<"Ἥ">>;
compose_one(<<"Ẉ">>) -> <<"�\210">>;
compose_one(<<"�\225�\210">>) -> <<"�\216">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"o�\200">>) -> <<"ò">>;
compose_one(<<"O�\210">>) -> <<"�\226">>;
compose_one(<<"�\201��\202\231">>) -> <<"�\201�">>;
compose_one(<<"η�\201">>) -> <<"ή">>;
compose_one(<<"o�\207">>) -> <<"ȯ">>;
compose_one(<<"i�\202">>) -> <<"î">>;
compose_one(<<"�\212�̸">>) -> <<"�\212�">>;
compose_one(<<"�\203�\203">>) -> <<"ẵ">>;
compose_one(<<"Ө�\210">>) -> <<"Ӫ">>;
compose_one(<<"R�\207">>) -> <<"�\230">>;
compose_one(<<"ẉ">>) -> <<"�\211">>;
compose_one(<<"ȯ�\204">>) -> <<"ȱ">>;
compose_one(<<"P�\201">>) -> <<"�\224">>;
compose_one(<<"į">>) -> <<"į">>;
compose_one(<<"�\221\222��\221\222�">>) ->
    <<"�\221\222�">>;
compose_one(<<"ǫ">>) -> <<"ǫ">>;
compose_one(<<"�\201\213�\202\231">>) ->
    <<"�\201\214">>;
compose_one(<<"a�\211">>) -> <<"ả">>;
compose_one(<<"�\222�\214">>) -> <<"ǯ">>;
compose_one(<<"Ὡ�\202">>) -> <<"Ὧ">>;
compose_one(<<"�\210�\200">>) -> <<"�\212">>;
compose_one(<<"S�\201">>) -> <<"�\232">>;
compose_one(<<"O�\204">>) -> <<"�\214">>;
compose_one(<<"Ω�\224">>) -> <<"Ὡ">>;
compose_one(<<"�\221\222��\221\222�">>) ->
    <<"�\221\222�">>;
compose_one(<<"�\223�\200">>) -> <<"�\225">>;
compose_one(<<"�\225�\210">>) -> <<"�\201">>;
compose_one(<<"ḵ">>) -> <<"ḵ">>;
compose_one(<<"Ẹ�\202">>) -> <<"�\206">>;
compose_one(<<"�\231�\217">>) -> <<"�\234">>;
compose_one(<<"Υ�\200">>) -> <<"Ὺ">>;
compose_one(<<"�\213�\202">>) -> <<"ῧ">>;
compose_one(<<"z�\207">>) -> <<"ż">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"�\202�\200">>) -> <<"Ằ">>;
compose_one(<<"Ὠ�\205">>) -> <<"ᾨ">>;
compose_one(<<"G�\206">>) -> <<"�\236">>;
compose_one(<<"ȩ">>) -> <<"ȩ">>;
compose_one(<<"E�\211">>) -> <<"Ẻ">>;
compose_one(<<"�\201��\202\232">>) -> <<"�\201�">>;
compose_one(<<"Y�\203">>) -> <<"Ỹ">>;
compose_one(<<"ὢ�\205">>) -> <<"ᾢ">>;
compose_one(<<"p�\201">>) -> <<"�\225">>;
compose_one(<<"ç�\201">>) -> <<"�\211">>;
compose_one(<<"N�\214">>) -> <<"�\207">>;
compose_one(<<"ḛ">>) -> <<"�\233">>;
compose_one(<<"�\202�\201">>) -> <<"Ắ">>;
compose_one(<<"�\203\225�\202\231">>) ->
    <<"�\203\226">>;
compose_one(<<"r�\214">>) -> <<"�\231">>;
compose_one(<<"�\203��\202\231">>) -> <<"�\203�">>;
compose_one(<<"Y�\210">>) -> <<"Ÿ">>;
compose_one(<<"�\230�\210">>) -> <<"�\232">>;
compose_one(<<"I�\204">>) -> <<"Ī">>;
compose_one(<<"�\230�\200">>) -> <<"�\232">>;
compose_one(<<"Ὤ�\205">>) -> <<"ᾬ">>;
compose_one(<<"�\206ാ">>) -> <<"�\212">>;
compose_one(<<"x�\210">>) -> <<"�\215">>;
compose_one(<<"Ἠ�\201">>) -> <<"Ἤ">>;
compose_one(<<"E�\202">>) -> <<"�\212">>;
compose_one(<<"�\224�\211">>) -> <<"�\224">>;
compose_one(<<"�\201��\202\232">>) -> <<"�\201�">>;
compose_one(<<"Ρ�\224">>) -> <<"Ῥ">>;
compose_one(<<"�\210\213̸">>) -> <<"�\210\214">>;
compose_one(<<"Ḫ">>) -> <<"Ḫ">>;
compose_one(<<"ø�\201">>) -> <<"ǿ">>;
compose_one(<<"d�\207">>) -> <<"�\213">>;
compose_one(<<"�\233�\204">>) -> <<"�\235">>;
compose_one(<<"ἰ�\202">>) -> <<"ἶ">>;
compose_one(<<"s�\201">>) -> <<"�\233">>;
compose_one(<<"�\225�\224">>) -> <<"�\231">>;
compose_one(<<"�\200�\200">>) -> <<"�\202">>;
compose_one(<<"�\212�\205">>) -> <<"�\212">>;
compose_one(<<"Ἧ�\205">>) -> <<"�\237">>;
compose_one(<<"I�\211">>) -> <<"�\210">>;
compose_one(<<"�\211�\200">>) -> <<"�\213">>;
compose_one(<<"Ἤ�\205">>) -> <<"�\234">>;
compose_one(<<"ᾶ�\205">>) -> <<"ᾷ">>;
compose_one(<<"Ы�\210">>) -> <<"Ӹ">>;
compose_one(<<"�\203\233�\202\232">>) ->
    <<"�\203\235">>;
compose_one(<<"ὡ�\205">>) -> <<"ᾡ">>;
compose_one(<<"Ἱ�\201">>) -> <<"Ἵ">>;
compose_one(<<"ḓ">>) -> <<"�\223">>;
compose_one(<<"�\211�\224">>) -> <<"ὡ">>;
compose_one(<<"ț">>) -> <<"�\233">>;
compose_one(<<"�\201\217�\202\231">>) ->
    <<"�\201\220">>;
compose_one(<<"�\220�\202">>) -> <<"�\226">>;
compose_one(<<"h�\202">>) -> <<"ĥ">>;
compose_one(<<"�\211\210̸">>) -> <<"�\211\211">>;
compose_one(<<"ا�\224">>) -> <<"أ">>;
compose_one(<<"ê�\211">>) -> <<"�\203">>;
compose_one(<<"ơ�\211">>) -> <<"�\237">>;
compose_one(<<"U�\213">>) -> <<"Ű">>;
compose_one(<<"�\207ാ">>) -> <<"�\213">>;
compose_one(<<"Ơ�\211">>) -> <<"�\236">>;
compose_one(<<"g�\201">>) -> <<"ǵ">>;
compose_one(<<"�\221\215\207�\221\215\227">>) ->
    <<"�\221\215\214">>;
compose_one(<<"�\201�\205">>) -> <<"�\201">>;
compose_one(<<"t�\210">>) -> <<"�\227">>;
compose_one(<<"�\205�\206">>) -> <<"ῠ">>;
compose_one(<<"ὠ�\200">>) -> <<"ὢ">>;
compose_one(<<"ü�\200">>) -> <<"�\234">>;
compose_one(<<"�\202�\200">>) -> <<"Ầ">>;
compose_one(<<"�\210�\200">>) -> <<"�\212">>;
compose_one(<<"ṷ">>) -> <<"ṷ">>;
compose_one(<<"ḥ">>) -> <<"ḥ">>;
compose_one(<<"�\211�\201">>) -> <<"�\215">>;
compose_one(<<"ا�\225">>) -> <<"إ">>;
compose_one(<<"�\201�\201">>) -> <<"�\205">>;
compose_one(<<"�\212\222̸">>) -> <<"�\213�">>;
compose_one(<<"ư�\211">>) -> <<"ử">>;
compose_one(<<"�\221ᬵ">>) -> <<"�\222">>;
compose_one(<<"�\221�\206">>) -> <<"Ᾰ">>;
compose_one(<<"�\206�\227">>) -> <<"�\214">>;
compose_one(<<"ṇ">>) -> <<"�\207">>;
compose_one(<<"L�\214">>) -> <<"Ľ">>;
compose_one(<<"ἡ�\202">>) -> <<"ἧ">>;
compose_one(<<"�\205�\223">>) -> <<"�\220">>;
compose_one(<<"e�\210">>) -> <<"ë">>;
compose_one(<<"�\221�\200">>) -> <<"�\223">>;
compose_one(<<"ι�\200">>) -> <<"ὶ">>;
compose_one(<<"�\212�̸">>) -> <<"�\212�">>;
compose_one(<<"�\210�̸">>) -> <<"�\211\201">>;
compose_one(<<"A�\210">>) -> <<"�\204">>;
compose_one(<<"Į">>) -> <<"Į">>;
compose_one(<<"ἠ�\200">>) -> <<"ἢ">>;
compose_one(<<"Ị">>) -> <<"�\212">>;
compose_one(<<"᾿�\201">>) -> <<"�\216">>;
compose_one(<<"�\212�̸">>) -> <<"�\213�">>;
compose_one(<<"I�\210">>) -> <<"�\217">>;
compose_one(<<"e�\214">>) -> <<"�\233">>;
compose_one(<<"O�\233">>) -> <<"Ơ">>;
compose_one(<<"�\207ா">>) -> <<"�\213">>;
compose_one(<<"Ļ">>) -> <<"Ļ">>;
compose_one(<<"e�\203">>) -> <<"ẽ">>;
compose_one(<<"e�\207">>) -> <<"�\227">>;
compose_one(<<"�\203��\202\231">>) -> <<"�\203�">>;
compose_one(<<"�\230�\201">>) -> <<"�\234">>;
compose_one(<<"�\231�\212">>) -> <<"�\232">>;
compose_one(<<"Y�\204">>) -> <<"Ȳ">>;
compose_one(<<"Ἠ�\202">>) -> <<"Ἦ">>;
compose_one(<<"a�\221">>) -> <<"�\203">>;
compose_one(<<"o�\211">>) -> <<"�\217">>;
compose_one(<<"A�\200">>) -> <<"�\200">>;
compose_one(<<"l�\201">>) -> <<"ĺ">>;
compose_one(<<"�\202�\203">>) -> <<"Ẵ">>;
compose_one(<<"Ư�\211">>) -> <<"Ử">>;
compose_one(<<"ᭁ">>) -> <<"�\201">>;
compose_one(<<"y�\203">>) -> <<"ỹ">>;
compose_one(<<"о�\210">>) -> <<"ӧ">>;
compose_one(<<"�\216�\205">>) -> <<"ῴ">>;
compose_one(<<"o�\202">>) -> <<"ô">>;
compose_one(<<"�\217�\201">>) -> <<"Ḯ">>;
compose_one(<<"�\207�\226">>) -> <<"�\210">>;
compose_one(<<"ç">>) -> <<"ç">>;
compose_one(<<"ο�\223">>) -> <<"�\200">>;
compose_one(<<"�\225�\224">>) -> <<"�\200">>;
compose_one(<<"R�\201">>) -> <<"�\224">>;
compose_one(<<"ὡ�\201">>) -> <<"ὥ">>;
compose_one(<<"ạ�\206">>) -> <<"ặ">>;
compose_one(<<"E�\221">>) -> <<"�\206">>;
compose_one(<<"�\202�\203">>) -> <<"Ẫ">>;
compose_one(<<"�\203�\200">>) -> <<"ằ">>;
compose_one(<<"Y�\201">>) -> <<"�\235">>;
compose_one(<<"E�\214">>) -> <<"�\232">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"Ἱ�\202">>) -> <<"Ἷ">>;
compose_one(<<"O�\221">>) -> <<"�\216">>;
compose_one(<<"�\211�̸">>) -> <<"�\211�">>;
compose_one(<<"ê�\200">>) -> <<"�\201">>;
compose_one(<<"�\230�\206">>) -> <<"�\231">>;
compose_one(<<"ὠ�\205">>) -> <<"ᾠ">>;
compose_one(<<"ἰ�\200">>) -> <<"ἲ">>;
compose_one(<<"и�\210">>) -> <<"ӥ">>;
compose_one(<<"�\234�\201">>) -> <<"�\227">>;
compose_one(<<"Ṵ">>) -> <<"Ṵ">>;
compose_one(<<"y�\201">>) -> <<"ý">>;
compose_one(<<"�\210�\205">>) -> <<"�\210">>;
compose_one(<<"�\200�\201">>) -> <<"�\204">>;
compose_one(<<"U�\214">>) -> <<"�\223">>;
compose_one(<<"I�\214">>) -> <<"�\217">>;
compose_one(<<"�\205�\201">>) -> <<"Ǻ">>;
compose_one(<<"�\211\203̸">>) -> <<"�\211\204">>;
compose_one(<<"�\210�̸">>) -> <<"�\210�">>;
compose_one(<<"�\203\201�\202\231">>) ->
    <<"�\203\202">>;
compose_one(<<"â�\201">>) -> <<"ấ">>;
compose_one(<<"¨�\200">>) -> <<"῭">>;
compose_one(<<"c�\207">>) -> <<"�\213">>;
compose_one(<<"ἦ�\205">>) -> <<"�\226">>;
compose_one(<<"n�\201">>) -> <<"�\204">>;
compose_one(<<"�\203\233�\202\231">>) ->
    <<"�\203\234">>;
compose_one(<<"ơ�\203">>) -> <<"ỡ">>;
compose_one(<<"Z�\207">>) -> <<"Ż">>;
compose_one(<<"�\214�\201">>) -> <<"�\222">>;
compose_one(<<"u�\203">>) -> <<"ũ">>;
compose_one(<<"�\211�\200">>) -> <<"ὼ">>;
compose_one(<<"�\221�\201">>) -> <<"�\225">>;
compose_one(<<"�\212�\211">>) -> <<"�\202">>;
compose_one(<<"�\207ା">>) -> <<"�\213">>;
compose_one(<<"O�\211">>) -> <<"�\216">>;
compose_one(<<"ὣ�\205">>) -> <<"ᾣ">>;
compose_one(<<"ο�\200">>) -> <<"ὸ">>;
compose_one(<<"᾿�\202">>) -> <<"�\217">>;
compose_one(<<"I�\217">>) -> <<"�\210">>;
compose_one(<<"C�\207">>) -> <<"�\212">>;
compose_one(<<"ἥ�\205">>) -> <<"�\225">>;
compose_one(<<"G�\204">>) -> <<"Ḡ">>;
compose_one(<<"Υ�\210">>) -> <<"Ϋ">>;
compose_one(<<"i�\210">>) -> <<"ï">>;
compose_one(<<"�\226�\210">>) -> <<"�\234">>;
compose_one(<<"W�\207">>) -> <<"�\206">>;
compose_one(<<"�\237�\201">>) -> <<"�\214">>;
compose_one(<<"Ţ">>) -> <<"Ţ">>;
compose_one(<<"�\210�\224">>) -> <<"ؤ">>;
compose_one(<<"ι�\204">>) -> <<"�\221">>;
compose_one(<<"h�\210">>) -> <<"ḧ">>;
compose_one(<<"�\204�\204">>) -> <<"�\236">>;
compose_one(<<"�\231�\206">>) -> <<"�\230">>;
compose_one(<<"е�\200">>) -> <<"�\220">>;
compose_one(<<"᾿�\200">>) -> <<"�\215">>;
compose_one(<<"ε�\224">>) -> <<"�\221">>;
compose_one(<<"ä�\204">>) -> <<"�\237">>;
compose_one(<<"�\206\222̸">>) -> <<"�\206\233">>;
compose_one(<<"�\220�\201">>) -> <<"�\224">>;
compose_one(<<"�\231�\224">>) -> <<"Ἱ">>;
compose_one(<<"I�\206">>) -> <<"Ĭ">>;
compose_one(<<"S�\202">>) -> <<"�\234">>;
compose_one(<<"�\213�\210">>) -> <<"ӹ">>;
compose_one(<<"α�\205">>) -> <<"ᾳ">>;
compose_one(<<"�\224�\203">>) -> <<"�\226">>;
compose_one(<<"ἰ�\201">>) -> <<"ἴ">>;
compose_one(<<"ư�\200">>) -> <<"ừ">>;
compose_one(<<"Ἠ�\205">>) -> <<"�\230">>;
compose_one(<<"Ḥ">>) -> <<"Ḥ">>;
compose_one(<<"c�\214">>) -> <<"�\215">>;
compose_one(<<"�\215�\200">>) -> <<"�\221">>;
compose_one(<<"ᬻ">>) -> <<"ᬻ">>;
compose_one(<<"Υ�\224">>) -> <<"�\231">>;
compose_one(<<"A�\202">>) -> <<"�\202">>;
compose_one(<<"Ἡ�\200">>) -> <<"Ἣ">>;
compose_one(<<"ṛ">>) -> <<"�\233">>;
compose_one(<<"�\221�\200">>) -> <<"�\223">>;
compose_one(<<"w�\200">>) -> <<"�\201">>;
compose_one(<<"�\206\220̸">>) -> <<"�\206\232">>;
compose_one(<<"У�\210">>) -> <<"Ӱ">>;
compose_one(<<"У�\206">>) -> <<"�\216">>;
compose_one(<<"b�\207">>) -> <<"�\203">>;
compose_one(<<"I�\207">>) -> <<"İ">>;
compose_one(<<"�\213�\205">>) -> <<"�\213">>;
compose_one(<<"y�\212">>) -> <<"�\231">>;
compose_one(<<"o�\203">>) -> <<"õ">>;
compose_one(<<"Ḅ">>) -> <<"�\204">>;
compose_one(<<"�\236�\210">>) -> <<"Ӧ">>;
compose_one(<<"�\225�\201">>) -> <<"�\214">>;
compose_one(<<"Z�\201">>) -> <<"Ź">>;
compose_one(<<"õ�\210">>) -> <<"�\217">>;
compose_one(<<"ḽ">>) -> <<"ḽ">>;
compose_one(<<"�\221\202��\221\202�">>) ->
    <<"�\221\202�">>;
compose_one(<<"S�\207">>) -> <<"Ṡ">>;
compose_one(<<"w�\210">>) -> <<"�\205">>;
compose_one(<<"�\221\204��\221\204�">>) ->
    <<"�\221\204�">>;
compose_one(<<"�\211�̸">>) -> <<"�\213�">>;
compose_one(<<"E�\201">>) -> <<"�\211">>;
compose_one(<<"�\201�\202">>) -> <<"�\207">>;
compose_one(<<"y�\207">>) -> <<"�\217">>;
compose_one(<<"U�\202">>) -> <<"�\233">>;
compose_one(<<"O�\206">>) -> <<"�\216">>;
compose_one(<<"�\201\221�\202\231">>) ->
    <<"�\201\222">>;
compose_one(<<"A�\211">>) -> <<"Ả">>;
compose_one(<<"ọ">>) -> <<"�\215">>;
compose_one(<<"�\223�\201">>) -> <<"�\227">>;
compose_one(<<"z�\202">>) -> <<"�\221">>;
compose_one(<<"k�\214">>) -> <<"ǩ">>;
compose_one(<<"�\227�\200">>) -> <<"�\212">>;
compose_one(<<"�\212\203̸">>) -> <<"�\212\205">>;
compose_one(<<"�\230�\201">>) -> <<"Ǿ">>;
compose_one(<<"�\203�\205">>) -> <<"�\203">>;
compose_one(<<"�\224�\200">>) -> <<"�\222">>;
compose_one(<<"≮">>) -> <<"�\211�">>;
compose_one(<<"�\214�\200">>) -> <<"�\220">>;
compose_one(<<"Ὧ�\205">>) -> <<"ᾯ">>;
compose_one(<<"O�\201">>) -> <<"�\223">>;
compose_one(<<"ü�\214">>) -> <<"�\232">>;
compose_one(<<"�\210�\201">>) -> <<"�\214">>;
compose_one(<<"ι�\201">>) -> <<"ί">>;
compose_one(<<"�\203\230�\202\231">>) ->
    <<"�\203\231">>;
compose_one(<<"ü�\201">>) -> <<"�\230">>;
compose_one(<<"Ạ�\206">>) -> <<"Ặ">>;
compose_one(<<"ṭ">>) -> <<"ṭ">>;
compose_one(<<"�\201�\224">>) -> <<"�\202">>;
compose_one(<<"ū�\210">>) -> <<"ṻ">>;
compose_one(<<"�\203\222�\202\231">>) ->
    <<"�\203\223">>;
compose_one(<<"Ạ">>) -> <<"Ạ">>;
compose_one(<<"ņ">>) -> <<"�\206">>;
compose_one(<<"a�\212">>) -> <<"å">>;
compose_one(<<"�\211�\200">>) -> <<"�\213">>;
compose_one(<<"�\213ᬵ">>) -> <<"�\214">>;
compose_one(<<"h�\207">>) -> <<"ḣ">>;
compose_one(<<"Ạ�\202">>) -> <<"Ậ">>;
compose_one(<<"Ợ">>) -> <<"Ợ">>;
compose_one(<<"а�\206">>) -> <<"�\221">>;
compose_one(<<"ḷ">>) -> <<"ḷ">>;
compose_one(<<"ι�\224">>) -> <<"ἱ">>;
compose_one(<<"�\201\206�\202\231">>) ->
    <<"�\202\224">>;
compose_one(<<"Ω�\205">>) -> <<"ῼ">>;
compose_one(<<"m�\201">>) -> <<"ḿ">>;
compose_one(<<"ἠ�\202">>) -> <<"ἦ">>;
compose_one(<<"η�\202">>) -> <<"�\206">>;
compose_one(<<"�\226�\210">>) -> <<"�\227">>;
compose_one(<<"�\211ᬵ">>) -> <<"�\212">>;
compose_one(<<"ἧ�\205">>) -> <<"�\227">>;
compose_one(<<"�\212�\225">>) -> <<"�\213">>;
compose_one(<<"�\211�\202">>) -> <<"ῶ">>;
compose_one(<<"a�\201">>) -> <<"á">>;
compose_one(<<"η�\224">>) -> <<"ἡ">>;
compose_one(<<"ἣ�\205">>) -> <<"�\223">>;
compose_one(<<"и�\200">>) -> <<"�\235">>;
compose_one(<<"U�\204">>) -> <<"Ū">>;
compose_one(<<"N�\203">>) -> <<"�\221">>;
compose_one(<<"�\201\235�\202\231">>) ->
    <<"�\201\236">>;
compose_one(<<"�\231�\201">>) -> <<"�\212">>;
compose_one(<<"�\211�\205">>) -> <<"ῳ">>;
compose_one(<<"�\206ா">>) -> <<"�\212">>;
compose_one(<<"�\214�\205">>) -> <<"�\214">>;
compose_one(<<"Ų">>) -> <<"Ų">>;
compose_one(<<"u�\233">>) -> <<"ư">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"�\227�\205">>) -> <<"�\214">>;
compose_one(<<"¨�\202">>) -> <<"�\201">>;
compose_one(<<"T�\207">>) -> <<"Ṫ">>;
compose_one(<<"�\206�\202">>) -> <<"�\212">>;
compose_one(<<"O�\207">>) -> <<"Ȯ">>;
compose_one(<<"ḩ">>) -> <<"ḩ">>;
compose_one(<<"e�\201">>) -> <<"é">>;
compose_one(<<"�\203\217�\202\231">>) ->
    <<"�\203\220">>;
compose_one(<<"�\225�\206">>) -> <<"�\226">>;
compose_one(<<"ἱ�\200">>) -> <<"ἳ">>;
compose_one(<<"Ş">>) -> <<"�\236">>;
compose_one(<<"ḍ">>) -> <<"�\215">>;
compose_one(<<"Ṉ">>) -> <<"�\210">>;
compose_one(<<"Ṛ">>) -> <<"�\232">>;
compose_one(<<"�\211\215̸">>) -> <<"�\211�">>;
compose_one(<<"A�\217">>) -> <<"�\200">>;
compose_one(<<"ḇ">>) -> <<"�\207">>;
compose_one(<<"�\211�\201">>) -> <<"�\215">>;
compose_one(<<"ṟ">>) -> <<"�\237">>;
compose_one(<<"�\211�̸">>) -> <<"�\213�">>;
compose_one(<<"�\214�\202">>) -> <<"�\230">>;
compose_one(<<"�\233�\207">>) -> <<"ṥ">>;
compose_one(<<"ļ">>) -> <<"ļ">>;
compose_one(<<"R�\221">>) -> <<"�\222">>;
compose_one(<<"Ἠ�\200">>) -> <<"Ἢ">>;
compose_one(<<"C�\202">>) -> <<"�\210">>;
compose_one(<<"ḻ">>) -> <<"ḻ">>;
compose_one(<<"�\206\224̸">>) -> <<"�\206�">>;
compose_one(<<"ἠ�\205">>) -> <<"�\220">>;
compose_one(<<"�\207\224̸">>) -> <<"�\207\216">>;
compose_one(<<"�\210�\201">>) -> <<"�\214">>;
compose_one(<<"ὠ�\201">>) -> <<"ὤ">>;
compose_one(<<"ḭ">>) -> <<"ḭ">>;
compose_one(<<"�\207\220̸">>) -> <<"�\207\215">>;
compose_one(<<"Ṳ">>) -> <<"Ṳ">>;
compose_one(<<"ᬽ">>) -> <<"ᬽ">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"�\202�\205">>) -> <<"�\202">>;
compose_one(<<"�\202�\211">>) -> <<"Ẩ">>;
compose_one(<<"�\203�\213">>) -> <<"ӳ">>;
compose_one(<<"n�\203">>) -> <<"ñ">>;
compose_one(<<"�\203\204�\202\231">>) ->
    <<"�\203\205">>;
compose_one(<<"A�\206">>) -> <<"�\202">>;
compose_one(<<"�\232�\207">>) -> <<"Ṥ">>;
compose_one(<<"�\211�̸">>) -> <<"�\211�">>;
compose_one(<<"I�\200">>) -> <<"�\214">>;
compose_one(<<"�\203\225�\202\232">>) ->
    <<"�\203\227">>;
compose_one(<<"o�\213">>) -> <<"�\221">>;
compose_one(<<"α�\204">>) -> <<"ᾱ">>;
compose_one(<<"h�\214">>) -> <<"�\237">>;
compose_one(<<"�\231�\200">>) -> <<"�\232">>;
compose_one(<<"o�\201">>) -> <<"ó">>;
compose_one(<<"�\206�\227">>) -> <<"�\214">>;
compose_one(<<"�\234�\214">>) -> <<"�\231">>;
compose_one(<<"ų">>) -> <<"ų">>;
compose_one(<<"�\237�\223">>) -> <<"�\210">>;
compose_one(<<"U�\221">>) -> <<"�\226">>;
compose_one(<<"ὰ�\205">>) -> <<"ᾲ">>;
compose_one(<<"Ț">>) -> <<"�\232">>;
compose_one(<<"Ṭ">>) -> <<"Ṭ">>;
compose_one(<<"E�\203">>) -> <<"Ẽ">>;
compose_one(<<"ţ">>) -> <<"ţ">>;
compose_one(<<"ο�\201">>) -> <<"�\214">>;
compose_one(<<"ẖ">>) -> <<"�\226">>;
compose_one(<<"�\201��\202\231">>) -> <<"�\201�">>;
compose_one(<<"�\206�\225">>) -> <<"�\207">>;
compose_one(<<"ὧ�\205">>) -> <<"ᾧ">>;
compose_one(<<"ḳ">>) -> <<"ḳ">>;
compose_one(<<"�\212�̸">>) -> <<"�\213�">>;
compose_one(<<"Ḷ">>) -> <<"Ḷ">>;
compose_one(<<"ṋ">>) -> <<"�\213">>;
compose_one(<<"Ḙ">>) -> <<"�\230">>;
compose_one(<<"῾�\200">>) -> <<"�\235">>;
compose_one(<<"�\201\237�\202\231">>) -> <<"�\201�">>;
compose_one(<<"�\230�\204">>) -> <<"Ӣ">>;
compose_one(<<"�\223�\201">>) -> <<"�\203">>;
compose_one(<<"u�\201">>) -> <<"ú">>;
compose_one(<<"�\201��\202\231">>) -> <<"�\201�">>;
compose_one(<<"�\227�\224">>) -> <<"Ἡ">>;
compose_one(<<"�\205�\200">>) -> <<"ὺ">>;
compose_one(<<"�\211�\223">>) -> <<"ὠ">>;
compose_one(<<"Ὡ�\200">>) -> <<"Ὣ">>;
compose_one(<<"�\203\230�\202\232">>) ->
    <<"�\203\232">>;
compose_one(<<"�\202ᬵ">>) -> <<"�\203">>;
compose_one(<<"Ṣ">>) -> <<"Ṣ">>;
compose_one(<<"ἱ�\201">>) -> <<"ἵ">>;
compose_one(<<"�\203�\211">>) -> <<"ẳ">>;
compose_one(<<"�\211�̸">>) -> <<"�\211�">>;
compose_one(<<"C�\201">>) -> <<"�\206">>;
compose_one(<<"Ḍ">>) -> <<"�\214">>;
compose_one(<<"�\212�\201">>) -> <<"Ế">>;
compose_one(<<"Ư�\203">>) -> <<"Ữ">>;
compose_one(<<"�\211�\201">>) -> <<"�\216">>;
compose_one(<<"ḷ�\204">>) -> <<"ḹ">>;
compose_one(<<"V�\203">>) -> <<"Ṽ">>;
compose_one(<<"η�\205">>) -> <<"�\203">>;
compose_one(<<"u�\210">>) -> <<"ü">>;
compose_one(<<"U�\201">>) -> <<"�\232">>;
compose_one(<<"�\221\215\207�\221\214�">>) ->
    <<"�\221\215\213">>;
compose_one(<<"�\203��\202\231">>) -> <<"�\203�">>;
compose_one(<<"α�\223">>) -> <<"�\200">>;
compose_one(<<"ά�\205">>) -> <<"ᾴ">>;
compose_one(<<"u�\200">>) -> <<"ù">>;
compose_one(<<"K�\214">>) -> <<"Ǩ">>;
compose_one(<<"X�\210">>) -> <<"�\214">>;
compose_one(<<"≠">>) -> <<"�\211�">>;
compose_one(<<"u�\202">>) -> <<"û">>;
compose_one(<<"ऱ">>) -> <<"ऱ">>;
compose_one(<<"ὦ�\205">>) -> <<"ᾦ">>;
compose_one(<<"W�\210">>) -> <<"�\204">>;
compose_one(<<"u�\212">>) -> <<"ů">>;
compose_one(<<"�\201\215�\202\231">>) ->
    <<"�\201\216">>;
compose_one(<<"�\231�\202">>) -> <<"�\237">>;
compose_one(<<"ę">>) -> <<"�\231">>;
compose_one(<<"ө�\210">>) -> <<"ӫ">>;
compose_one(<<"�\212�̸">>) -> <<"�\213�">>;
compose_one(<<"Ǫ">>) -> <<"Ǫ">>;
compose_one(<<"�\201\231�\202\231">>) ->
    <<"�\201\232">>;
compose_one(<<"Ȩ">>) -> <<"Ȩ">>;
compose_one(<<"ạ�\202">>) -> <<"ậ">>;
compose_one(<<"а�\210">>) -> <<"�\223">>;
compose_one(<<"ị">>) -> <<"�\213">>;
compose_one(<<"�\203\210�\202\231">>) ->
    <<"�\203\211">>;
compose_one(<<"M�\207">>) -> <<"�\200">>;
compose_one(<<"g�\202">>) -> <<"�\235">>;
compose_one(<<"ἡ�\205">>) -> <<"�\221">>;
compose_one(<<"ḫ">>) -> <<"ḫ">>;
compose_one(<<"Ч�\210">>) -> <<"Ӵ">>;
compose_one(<<"â�\211">>) -> <<"ẩ">>;
compose_one(<<"u�\204">>) -> <<"ū">>;
compose_one(<<"Ὦ�\205">>) -> <<"ᾮ">>;
compose_one(<<"ư�\201">>) -> <<"ứ">>;
compose_one(<<"E�\206">>) -> <<"�\224">>;
compose_one(<<"ἱ�\202">>) -> <<"ἷ">>;
compose_one(<<"X�\207">>) -> <<"�\212">>;
compose_one(<<"η�\223">>) -> <<"ἠ">>;
compose_one(<<"�\212�\201">>) -> <<"�\220">>;
compose_one(<<"�\222�\210">>) -> <<"�\224">>;
compose_one(<<"C�\214">>) -> <<"�\214">>;
compose_one(<<"ö�\204">>) -> <<"ȫ">>;
compose_one(<<"�\206�\210">>) -> <<"�\207">>;
compose_one(<<"�\211�̸">>) -> <<"�\211�">>;
compose_one(<<"Ʒ�\214">>) -> <<"Ǯ">>;
compose_one(<<"�\230�\200">>) -> <<"�\215">>;
compose_one(<<"�\231�\201">>) -> <<"�\235">>;
compose_one(<<"ا�\223">>) -> <<"آ">>;
compose_one(<<"G�\214">>) -> <<"Ǧ">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"E�\200">>) -> <<"�\210">>;
compose_one(<<"i�\221">>) -> <<"�\213">>;
compose_one(<<"H�\207">>) -> <<"Ḣ">>;
compose_one(<<"o�\214">>) -> <<"�\222">>;
compose_one(<<"ὡ�\200">>) -> <<"ὣ">>;
compose_one(<<"Ἣ�\205">>) -> <<"�\233">>;
compose_one(<<"Ș">>) -> <<"�\230">>;
compose_one(<<"Ọ">>) -> <<"�\214">>;
compose_one(<<"�\226�\204">>) -> <<"Ȫ">>;
compose_one(<<"ô�\203">>) -> <<"�\227">>;
compose_one(<<"�\231�\201">>) -> <<"�\235">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\203�">>;
compose_one(<<"�\201��\202\232">>) -> <<"�\201�">>;
compose_one(<<"Ἥ�\205">>) -> <<"�\235">>;
compose_one(<<"�\203�\210">>) -> <<"ӱ">>;
compose_one(<<"Ἡ�\205">>) -> <<"�\231">>;
compose_one(<<"E�\210">>) -> <<"�\213">>;
compose_one(<<"�\201\227�\202\231">>) ->
    <<"�\201\230">>;
compose_one(<<"z�\201">>) -> <<"ź">>;
compose_one(<<"Ḭ">>) -> <<"Ḭ">>;
compose_one(<<"�\212�\224">>) -> <<"ئ">>;
compose_one(<<"�\222�\201">>) -> <<"�\223">>;
compose_one(<<"Ę">>) -> <<"�\230">>;
compose_one(<<"�\212�̸">>) -> <<"�\212�">>;
compose_one(<<"a�\203">>) -> <<"ã">>;
compose_one(<<"U�\203">>) -> <<"Ũ">>;
compose_one(<<"�\221�\204">>) -> <<"Ᾱ">>;
compose_one(<<"�\206�\204">>) -> <<"Ǣ">>;
compose_one(<<"ṣ">>) -> <<"ṣ">>;
compose_one(<<"A�\214">>) -> <<"�\215">>;
compose_one(<<"j�\214">>) -> <<"ǰ">>;
compose_one(<<"Ἰ�\201">>) -> <<"Ἴ">>;
compose_one(<<"�\203\217�\202\232">>) ->
    <<"�\203\221">>;
compose_one(<<"�\202�\211">>) -> <<"Ẳ">>;
compose_one(<<"u�\217">>) -> <<"�\225">>;
compose_one(<<"Ṷ">>) -> <<"Ṷ">>;
compose_one(<<"�\207�\201">>) -> <<"�\210">>;
compose_one(<<"U�\217">>) -> <<"�\224">>;
compose_one(<<"�\206�\201">>) -> <<"Ǽ">>;
compose_one(<<"�\203\206�\202\231">>) ->
    <<"�\203\207">>;
compose_one(<<"ạ">>) -> <<"ạ">>;
compose_one(<<"Υ�\201">>) -> <<"�\216">>;
compose_one(<<"e�\204">>) -> <<"�\223">>;
compose_one(<<"�\212�\203">>) -> <<"�\204">>;
compose_one(<<"T�\214">>) -> <<"Ť">>;
compose_one(<<"�\227�\201">>) -> <<"�\211">>;
compose_one(<<"�\221\226��\221\226�">>) ->
    <<"�\221\226�">>;
compose_one(<<"�\210\203̸">>) -> <<"�\210\204">>;
compose_one(<<"Ἦ�\205">>) -> <<"�\236">>;
compose_one(<<"ḅ">>) -> <<"�\205">>;
compose_one(<<"�\221\204��\221\204�">>) ->
    <<"�\221\204�">>;
compose_one(<<"u�\214">>) -> <<"�\224">>;
compose_one(<<"ȩ�\206">>) -> <<"�\235">>;
compose_one(<<"Ṟ">>) -> <<"�\236">>;
compose_one(<<"Ķ">>) -> <<"Ķ">>;
compose_one(<<"�\221�\224">>) -> <<"�\211">>;
compose_one(<<"ü�\204">>) -> <<"�\226">>;
compose_one(<<"Ṣ�\207">>) -> <<"Ṩ">>;
compose_one(<<"Ὠ�\200">>) -> <<"Ὢ">>;
compose_one(<<"�\225�\201">>) -> <<"�\210">>;
compose_one(<<"Ṿ">>) -> <<"Ṿ">>;
compose_one(<<"�\205�\205">>) -> <<"�\205">>;
compose_one(<<"Ὥ�\205">>) -> <<"ᾭ">>;
compose_one(<<"е�\210">>) -> <<"�\221">>;
compose_one(<<"�\231�\237">>) -> <<"�\236">>;
compose_one(<<"�\231�\204">>) -> <<"�\231">>;
compose_one(<<"�\216�\205">>) -> <<"�\216">>;
compose_one(<<"�\222�\201">>) -> <<"�\226">>;
compose_one(<<"d�\214">>) -> <<"�\217">>;
compose_one(<<"Ỵ">>) -> <<"Ỵ">>;
compose_one(<<"�\222�\200">>) -> <<"�\224">>;
compose_one(<<"Ḑ">>) -> <<"�\220">>;
compose_one(<<"ι�\210">>) -> <<"�\212">>;
compose_one(<<"α�\201">>) -> <<"ά">>;
compose_one(<<"Ѵ�\217">>) -> <<"Ѷ">>;
compose_one(<<"p�\207">>) -> <<"�\227">>;
compose_one(<<"o�\221">>) -> <<"�\217">>;
compose_one(<<"�\231�\200">>) -> <<"�\233">>;
compose_one(<<"�\215�\205">>) -> <<"�\215">>;
compose_one(<<"�\210�̸">>) -> <<"�\210�">>;
compose_one(<<"w�\202">>) -> <<"ŵ">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"o�\206">>) -> <<"�\217">>;
compose_one(<<"ȧ�\204">>) -> <<"ǡ">>;
compose_one(<<"ε�\200">>) -> <<"ὲ">>;
compose_one(<<"ἢ�\205">>) -> <<"�\222">>;
compose_one(<<"u�\211">>) -> <<"ủ">>;
compose_one(<<"u�\213">>) -> <<"ű">>;
compose_one(<<"æ�\201">>) -> <<"ǽ">>;
compose_one(<<"�\201��\202\231">>) -> <<"�\201�">>;
compose_one(<<"Ω�\223">>) -> <<"Ὠ">>;
compose_one(<<"ή�\205">>) -> <<"�\204">>;
compose_one(<<"ſ�\207">>) -> <<"�\233">>;
compose_one(<<"W�\200">>) -> <<"�\200">>;
compose_one(<<"ῶ�\205">>) -> <<"ῷ">>;
compose_one(<<"y�\210">>) -> <<"ÿ">>;
compose_one(<<"ơ�\201">>) -> <<"�\233">>;
compose_one(<<"i�\211">>) -> <<"�\211">>;
compose_one(<<"ș">>) -> <<"�\231">>;
compose_one(<<"�\201��\202\231">>) -> <<"�\201�">>;
compose_one(<<"A�\204">>) -> <<"�\200">>;
compose_one(<<"ģ">>) -> <<"ģ">>;
compose_one(<<"i�\206">>) -> <<"ĭ">>;
compose_one(<<"�\221�\223">>) -> <<"�\210">>;
compose_one(<<"â�\200">>) -> <<"ầ">>;
compose_one(<<"ï�\201">>) -> <<"ḯ">>;
compose_one(<<"õ�\201">>) -> <<"�\215">>;
compose_one(<<"ι�\223">>) -> <<"ἰ">>;
compose_one(<<"I�\202">>) -> <<"�\216">>;
compose_one(<<"ὡ�\202">>) -> <<"ὧ">>;
compose_one(<<"ṱ">>) -> <<"ṱ">>;
compose_one(<<"Ὠ�\201">>) -> <<"Ὤ">>;
compose_one(<<"g�\214">>) -> <<"ǧ">>;
compose_one(<<"ṯ">>) -> <<"ṯ">>;
compose_one(<<"�\206�\205">>) -> <<"�\207">>;
compose_one(<<"α�\202">>) -> <<"ᾶ">>;
compose_one(<<"�\205ᬵ">>) -> <<"�\206">>;
compose_one(<<"�\231�\210">>) -> <<"�\233">>;
compose_one(<<"Ω�\200">>) -> <<"Ὼ">>;
compose_one(<<"�\203��\202\231">>) -> <<"�\203�">>;
compose_one(<<"�\237�\200">>) -> <<"Ὸ">>;
compose_one(<<"s�\214">>) -> <<"š">>;
compose_one(<<"u�\221">>) -> <<"�\227">>;
compose_one(<<"Ơ�\200">>) -> <<"�\234">>;
compose_one(<<"s�\202">>) -> <<"�\235">>;
compose_one(<<"�\201��\202\231">>) -> <<"�\201�">>;
compose_one(<<"y�\200">>) -> <<"ỳ">>;
compose_one(<<"ऴ">>) -> <<"ऴ">>;
compose_one(<<"B�\207">>) -> <<"�\202">>;
compose_one(<<"Ą">>) -> <<"�\204">>;
compose_one(<<"Ẓ">>) -> <<"�\222">>;
compose_one(<<"≯">>) -> <<"�\211�">>;
compose_one(<<"ô�\200">>) -> <<"�\223">>;
compose_one(<<"K�\201">>) -> <<"Ḱ">>;
compose_one(<<"a�\202">>) -> <<"â">>;
compose_one(<<"Z�\202">>) -> <<"�\220">>;
compose_one(<<"�\211�̸">>) -> <<"�\211�">>;
compose_one(<<"Ḳ">>) -> <<"Ḳ">>;
compose_one(<<"�\234�\204">>) -> <<"�\225">>;
compose_one(<<"â�\203">>) -> <<"ẫ">>;
compose_one(<<"�\207া">>) -> <<"�\213">>;
compose_one(<<"�\222�\227">>) -> <<"�\224">>;
compose_one(<<"�\207�\210">>) -> <<"ӵ">>;
compose_one(<<"e�\206">>) -> <<"�\225">>;
compose_one(<<"ἡ�\201">>) -> <<"ἥ">>;
compose_one(<<"Ḁ">>) -> <<"�\200">>;
compose_one(<<"Ņ">>) -> <<"�\205">>;
compose_one(<<"z�\214">>) -> <<"ž">>;
compose_one(<<"Ḇ">>) -> <<"�\206">>;
compose_one(<<"r�\201">>) -> <<"�\225">>;
compose_one(<<"U�\206">>) -> <<"Ŭ">>;
compose_one(<<"ẹ�\202">>) -> <<"�\207">>;
compose_one(<<"r�\221">>) -> <<"�\223">>;
compose_one(<<"O�\200">>) -> <<"�\222">>;
compose_one(<<"Ģ">>) -> <<"Ģ">>;
compose_one(<<"�\207ᬵ">>) -> <<"�\210">>;
compose_one(<<"o�\210">>) -> <<"ö">>;
compose_one(<<"�\222�\224">>) -> <<"�\223">>;
compose_one(<<"i�\201">>) -> <<"í">>;
compose_one(<<"ऩ">>) -> <<"ऩ">>;
compose_one(<<"Z�\214">>) -> <<"Ž">>;
compose_one(<<"W�\201">>) -> <<"�\202">>;
compose_one(<<"Y�\211">>) -> <<"Ỷ">>;
compose_one(<<"�\232�\204">>) -> <<"�\234">>;
compose_one(<<"O�\203">>) -> <<"�\225">>;
compose_one(<<"Ụ">>) -> <<"Ụ">>;
compose_one(<<"H�\202">>) -> <<"Ĥ">>;
compose_one(<<"�\200�\202">>) -> <<"�\206">>;
compose_one(<<"�\201��\202\231">>) -> <<"�\201�">>;
compose_one(<<"J�\202">>) -> <<"Ĵ">>;
compose_one(<<"D�\207">>) -> <<"�\212">>;
compose_one(<<"f�\207">>) -> <<"�\237">>;
compose_one(<<"�\200��\200�">>) -> <<"�\200�">>;
compose_one(<<"Ḏ">>) -> <<"�\216">>;
compose_one(<<"�\212\221̸">>) -> <<"�\213�">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"H�\214">>) -> <<"�\236">>;
compose_one(<<"Š�\207">>) -> <<"Ṧ">>;
compose_one(<<"Y�\202">>) -> <<"Ŷ">>;
compose_one(<<"ಿ�\225">>) -> <<"�\200">>;
compose_one(<<"i�\204">>) -> <<"ī">>;
compose_one(<<"ḁ">>) -> <<"�\201">>;
compose_one(<<"Ω�\201">>) -> <<"�\217">>;
compose_one(<<"�\221�\205">>) -> <<"ᾼ">>;
compose_one(<<"N�\207">>) -> <<"�\204">>;
compose_one(<<"ê�\201">>) -> <<"ế">>;
compose_one(<<"i�\203">>) -> <<"ĩ">>;
compose_one(<<"õ�\204">>) -> <<"ȭ">>;
compose_one(<<"ǫ�\204">>) -> <<"ǭ">>;
compose_one(<<"n�\207">>) -> <<"�\205">>;
compose_one(<<"i�\214">>) -> <<"�\220">>;
compose_one(<<"Ὣ�\205">>) -> <<"ᾫ">>;
compose_one(<<"�\211�̸">>) -> <<"�\212\201">>;
compose_one(<<"Ẕ">>) -> <<"�\224">>;
compose_one(<<"ô�\201">>) -> <<"�\221">>;
compose_one(<<"�\215�\210">>) -> <<"ӭ">>;
compose_one(<<"Ḽ">>) -> <<"Ḽ">>;
compose_one(<<"Э�\210">>) -> <<"Ӭ">>;
compose_one(<<"E�\204">>) -> <<"�\222">>;
compose_one(<<"ỵ">>) -> <<"ỵ">>;
compose_one(<<"�\206�\226">>) -> <<"�\210">>;
compose_one(<<"Ḓ">>) -> <<"�\222">>;
compose_one(<<"ι�\202">>) -> <<"�\226">>;
compose_one(<<"�\203�\201">>) -> <<"ắ">>;
compose_one(<<"Ἱ�\200">>) -> <<"Ἳ">>;
compose_one(<<"M�\201">>) -> <<"Ḿ">>;
compose_one(<<"ṿ">>) -> <<"ṿ">>;
compose_one(<<"�\206�\226">>) -> <<"�\210">>;
compose_one(<<"�\204�\205">>) -> <<"�\204">>;
compose_one(<<"Ẹ">>) -> <<"Ẹ">>;
compose_one(<<"ẓ">>) -> <<"�\223">>;
compose_one(<<"ж�\210">>) -> <<"�\235">>;
compose_one(<<"U�\210">>) -> <<"�\234">>;
compose_one(<<"ụ">>) -> <<"ụ">>;
compose_one(<<"ε�\223">>) -> <<"�\220">>;
compose_one(<<"Ǫ�\204">>) -> <<"Ǭ">>;
compose_one(<<"�\225�\223">>) -> <<"�\230">>;
compose_one(<<"a�\207">>) -> <<"ȧ">>;
compose_one(<<"�\225�\204">>) -> <<"Ȭ">>;
compose_one(<<"ṉ">>) -> <<"�\211">>;
compose_one(<<"�\225�\200">>) -> <<"�\200">>;
compose_one(<<"Υ�\204">>) -> <<"Ῡ">>;
compose_one(<<"y�\202">>) -> <<"ŷ">>;
compose_one(<<"O�\213">>) -> <<"�\220">>;
compose_one(<<"�\207�\205">>) -> <<"�\207">>;
compose_one(<<"�\210\210̸">>) -> <<"�\210\211">>;
compose_one(<<"I�\221">>) -> <<"�\212">>;
compose_one(<<"�\205�\224">>) -> <<"�\221">>;
compose_one(<<"¨�\201">>) -> <<"�\205">>;
compose_one(<<"�\221\226��\221\226�">>) ->
    <<"�\221\226�">>;
compose_one(<<"Ḵ">>) -> <<"Ḵ">>;
compose_one(<<"�\220�\206">>) -> <<"�\220">>;
compose_one(<<"ḙ">>) -> <<"�\231">>;
compose_one(<<"Ṱ">>) -> <<"Ṱ">>;
compose_one(<<"t�\214">>) -> <<"ť">>;
compose_one(<<"�\205�\210">>) -> <<"�\213">>;
compose_one(<<"�\221�\200">>) -> <<"Ὰ">>;
compose_one(<<"U�\212">>) -> <<"Ů">>;
compose_one(<<"г�\201">>) -> <<"�\223">>;
compose_one(<<"F�\207">>) -> <<"�\236">>;
compose_one(<<"ơ�\200">>) -> <<"�\235">>;
compose_one(<<"N�\201">>) -> <<"�\203">>;
compose_one(<<"Y�\200">>) -> <<"Ỳ">>;
compose_one(<<"η�\200">>) -> <<"ὴ">>;
compose_one(<<"S�\214">>) -> <<"Š">>;
compose_one(<<"�\231�\200">>) -> <<"�\233">>;
compose_one(<<"ô�\211">>) -> <<"�\225">>;
compose_one(<<"�\215�\202">>) -> <<"�\231">>;
compose_one(<<"�\213�\201">>) -> <<"ΰ">>;
compose_one(<<"и�\206">>) -> <<"й">>;
compose_one(<<"G�\202">>) -> <<"�\234">>;
compose_one(<<"A�\212">>) -> <<"�\205">>;
compose_one(<<"α�\224">>) -> <<"�\201">>;
compose_one(<<"ẕ">>) -> <<"�\225">>;
compose_one(<<"�\211\205̸">>) -> <<"�\211\207">>;
compose_one(<<"n�\214">>) -> <<"�\210">>;
compose_one(<<"�\201�\201">>) -> <<"�\205">>;
compose_one(<<"a�\210">>) -> <<"ä">>;
compose_one(<<"�\231�\223">>) -> <<"Ἰ">>;
compose_one(<<"�\232�\201">>) -> <<"�\214">>;
compose_one(<<"r�\207">>) -> <<"�\231">>;
compose_one(<<"�\200�\205">>) -> <<"�\200">>;
compose_one(<<"e�\221">>) -> <<"�\207">>;
compose_one(<<"O�\214">>) -> <<"�\221">>;
compose_one(<<"�\211�̸">>) -> <<"�\211�">>;
compose_one(<<"Ṯ">>) -> <<"Ṯ">>;
compose_one(<<"�\206�\205">>) -> <<"�\206">>;
compose_one(<<"�\212\202̸">>) -> <<"�\212\204">>;
compose_one(<<"x�\207">>) -> <<"�\213">>;
compose_one(<<"�\201�\200">>) -> <<"�\203">>;
compose_one(<<"�\212�̸">>) -> <<"�\212�">>;
compose_one(<<"Ḩ">>) -> <<"Ḩ">>;
compose_one(<<"�\220�\200">>) -> <<"�\222">>;
compose_one(<<"Ự">>) -> <<"Ự">>;
compose_one(<<"y�\211">>) -> <<"ỷ">>;
compose_one(<<"k�\201">>) -> <<"ḱ">>;
compose_one(<<"�\201��\202\232">>) -> <<"�\201�">>;
compose_one(<<"a�\206">>) -> <<"�\203">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\203\200">>;
compose_one(<<"O�\217">>) -> <<"�\214">>;
compose_one(<<"Ὡ�\205">>) -> <<"ᾩ">>;
compose_one(<<"n�\200">>) -> <<"ǹ">>;
compose_one(<<"i�\217">>) -> <<"�\211">>;
compose_one(<<"a�\204">>) -> <<"�\201">>;
compose_one(<<"Υ�\206">>) -> <<"Ῠ">>;
compose_one(<<"�\234�\212">>) -> <<"�\235">>;
compose_one(<<"Ŗ">>) -> <<"�\226">>;
compose_one(<<"�\207�\227">>) -> <<"�\214">>;
compose_one(<<"�\205�\202">>) -> <<"ῦ">>;
compose_one(<<"Y�\207">>) -> <<"�\216">>;
compose_one(<<"�\211�\202">>) -> <<"�\217">>;
compose_one(<<"�\205�\204">>) -> <<"ῡ">>;
compose_one(<<"�\221�\202">>) -> <<"�\227">>;
compose_one(<<"Ơ�\203">>) -> <<"Ỡ">>;
compose_one(<<"Ṇ">>) -> <<"�\206">>;
compose_one(<<"�\207�\227">>) -> <<"�\214">>;
compose_one(<<"Ḷ�\204">>) -> <<"Ḹ">>;
compose_one(<<"�\201��\202\231">>) -> <<"�\201�">>;
compose_one(<<"�\201�\200">>) -> <<"�\203">>;
compose_one(<<"å�\201">>) -> <<"ǻ">>;
compose_one(<<"š�\207">>) -> <<"ṧ">>;
compose_one(<<"l�\214">>) -> <<"ľ">>;
compose_one(<<"�\201�\224">>) -> <<"ῥ">>;
compose_one(<<"Ũ�\201">>) -> <<"Ṹ">>;
compose_one(<<"æ�\204">>) -> <<"ǣ">>;
compose_one(<<"E�\207">>) -> <<"�\226">>;
compose_one(<<"ṃ">>) -> <<"�\203">>;
compose_one(<<"ķ">>) -> <<"ķ">>;
compose_one(<<"ὼ�\205">>) -> <<"ῲ">>;
compose_one(<<"m�\207">>) -> <<"�\201">>;
compose_one(<<"ẹ">>) -> <<"ẹ">>;
compose_one(<<"�\217�\205">>) -> <<"�\217">>;
compose_one(<<"ą">>) -> <<"�\205">>;
compose_one(<<"�\220�\210">>) -> <<"�\222">>;
compose_one(<<"�\202��\202\231">>) -> <<"�\202�">>;
compose_one(<<"A�\207">>) -> <<"Ȧ">>;
compose_one(<<"�\220�\200">>) -> <<"�\222">>;
compose_one(<<"N�\200">>) -> <<"Ǹ">>;
compose_one(<<"A�\221">>) -> <<"�\202">>;
compose_one(<<"�\203\222�\202\232">>) ->
    <<"�\203\224">>;
compose_one(<<"E�\217">>) -> <<"�\204">>;
compose_one(<<"j�\202">>) -> <<"ĵ">>;
compose_one(<<"e�\202">>) -> <<"ê">>;
compose_one(_E) -> nil.

normalize(Estring@1, nfd)
    when erlang:is_binary(Estring@1) ->
    normalize_nfd(Estring@1, <<>>);
normalize(Estring@1, nfc)
    when erlang:is_binary(Estring@1) ->
    normalize_nfc(Estring@1, <<>>).

normalize_nfc(<<>>, Eacc@1) -> Eacc@1;
normalize_nfc(<<Ecp@1/utf8, Erest@1/binary>>, Eacc@1)
    when erlang:is_integer(Ecp@1) andalso
	   Ecp@1 >= 44032 andalso Ecp@1 =< 55203 ->
    normalize_nfc(Erest@1,
		  <<Eacc@1/binary, <<Ecp@1/utf8>>/binary>>);
normalize_nfc(Ebinary@1, Eacc@1) ->
    {En@1, Erest@1} =
	'Elixir.String.Unicode':next_grapheme_size(Ebinary@1),
    Epart@1 = binary:part(Ebinary@1, 0, En@1),
    case En@1 of
      1 ->
	  normalize_nfc(Erest@1,
			<<Eacc@1/binary, Epart@1/binary>>);
      _E ->
	  normalize_nfc(Erest@1,
			<<Eacc@1/binary,
			  (compose(normalize_nfd(Epart@1, <<>>)))/binary>>)
    end.

normalize_nfd(<<>>, Eacc@1) -> Eacc@1;
normalize_nfd(<<Ecp@1/utf8, Erest@1/binary>>, Eacc@1)
    when erlang:is_integer(Ecp@1) andalso
	   Ecp@1 >= 44032 andalso Ecp@1 =< 55203 ->
    {Esyllable_index@1, Et_count@1, En_count@1} = {Ecp@1 -
						     44032,
						   28, 588},
    Elead@1 = 4352 + Esyllable_index@1 div En_count@1,
    Evowel@1 = 4449 +
		 Esyllable_index@1 rem En_count@1 div Et_count@1,
    Etrail@1 = 4519 + Esyllable_index@1 rem Et_count@1,
    Ebinary@1 = case Etrail@1 == 4519 of
		  false -> <<Elead@1/utf8, Evowel@1/utf8, Etrail@1/utf8>>;
		  true -> <<Elead@1/utf8, Evowel@1/utf8>>
		end,
    normalize_nfd(Erest@1,
		  <<Eacc@1/binary, Ebinary@1/binary>>);
normalize_nfd(Ebinary@1, Eacc@1) ->
    {En@1, Erest@1} =
	'Elixir.String.Unicode':next_grapheme_size(Ebinary@1),
    Epart@1 = binary:part(Ebinary@1, 0, En@1),
    case En@1 of
      1 ->
	  normalize_nfd(Erest@1,
			<<Eacc@1/binary, Epart@1/binary>>);
      _E ->
	  normalize_nfd(Erest@1,
			<<Eacc@1/binary,
			  (canonical_order(Epart@1, []))/binary>>)
    end.