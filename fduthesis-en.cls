%%
%% This is file `fduthesis-en.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% fduthesis.dtx  (with options: `class-en')
%% 
%%     Copyright (C) 2017, 2018 by Xiangdong Zeng <xdzeng96@gmail.com>
%% 
%%     This work may be distributed and/or modified under the
%%     conditions of the LaTeX Project Public License, either
%%     version 1.3c of this license or (at your option) any later
%%     version. The latest version of this license is in:
%% 
%%       http://www.latex-project.org/lppl.txt
%% 
%%     and version 1.3 or later is part of all distributions of
%%     LaTeX version 2005/12/01 or later.
%% 
%%     This work has the LPPL maintenance status `maintained'.
%% 
%%     The Current Maintainer of this work is Xiangdong Zeng.
%% 
%%     This work consists of the files fduthesis.dtx,
%%                                     fduthesis-doc.dtx,
%%                                     fduthesis-logo.dtx,
%%               and the derived files fduthesis.ins,
%%                                     fduthesis.cls,
%%                                     fduthesis-en.cls,
%%                                     fduthesis.def,
%%                                     fdudoc.cls,
%%                                     fdulogo.sty,
%%                                     fdulogo-example.tex,
%%                                     fduthesis-cover.tex,
%%                                     fduthesis-en.tex,
%%                                     fduthesis.pdf,
%%                                     fduthesis-en.pdf,
%%                                     latexmkrc,
%%                                     latexmkrc-en,
%%                                 and README.md.
%% 
\NeedsTeXFormat{LaTeX2e}
\RequirePackage{expl3}
\GetIdInfo $Id: fduthesis.dtx 0.6 2017-12-01 12:00:00Z Xiangdong Zeng <xdzeng96@gmail.com> $
  {Thesis template for Fudan University (English version)}
\ProvidesExplClass{\ExplFileName-en}
  {\ExplFileDate}{\ExplFileVersion}{\ExplFileDescription}
\RequirePackage { xparse, l3keys2e }
\clist_map_inline:nn { expl3, xparse, l3keys2e }
  {
    \@ifpackagelater {#1} { 2017/12/16 }
      { } { \msg_error:nnn { fduthesis } { l3-too-old } {#1} }
  }
\msg_new:nnn { fduthesis } { l3-too-old }
  {
    Package~ "#1"~ is~ too~ old. \\\\
    Please~ update~ an~ up-to-date~ version~ of~ the~ bundles \\
    "l3kernel"~ and~ "l3packages"~ using~ your~ TeX~ package \\
    manager~ or~ from~ CTAN.
  }
\sys_if_engine_xetex:F
  {
    \sys_if_engine_luatex:F
      {
        \msg_fatal:nnx { fduthesis } { unsupported-engine }
          { \c_sys_engine_str }
      }
  }
\msg_new:nnn { fduthesis } { unsupported-engine }
  {
    The~ fduthesis~ class~ requires~ either~ XeTeX~ or~ LuaTeX. \\\\
    "#1"~ is~ not~ supported~ at~ present.~ You~ must~ change \\
    your~ typesetting~ engine~ to~ "xelatex"~ or~ "lualatex".
  }
\box_new:N   \l__fdu_tmpa_box
\dim_new:N   \l__fdu_tmpa_dim
\dim_new:N   \l__fdu_tmpb_dim
\tl_new:N    \l__fdu_tmpa_tl
\tl_new:N    \l__fdu_tmpb_tl
\clist_new:N \l__fdu_tmpa_clist
\clist_new:N \l__fdu_tmpb_clist
\int_new:N \g__fdu_thesis_type_int
\clist_new:N \g__fdu_to_ctexbook_clist
\clist_new:N \g__fdu_to_hyperref_clist
\bool_new:N \g__fdu_twoside_bool
\bool_set_true:N \g__fdu_twoside_bool
\bool_new:N \g__fdu_draft_bool
\tl_new:N \g__fdu_config_tl
\cs_generate_variant:Nn \cs_generate_variant:Nn { cn }
\cs_generate_variant:Nn \file_input:n           { V  }
\cs_generate_variant:Nn \int_to_arabic:n        { v  }
\cs_generate_variant:Nn \keys_define:nn         { nx }
\prg_generate_conditional_variant:Nnn \tl_if_eq:nn { Vn } { T, TF }
\cs_new:Npn \__fdu_quad:  { \skip_horizontal:n { 1 em } }
\cs_new:Npn \__fdu_qquad: { \skip_horizontal:n { 2 em } }
\cs_new:Npn \__fdu_symbol:n #1 { \tex_char:D #1 \scan_stop: }
\cs_new:Npn \__fdu_arabic:n #1
  { \int_to_arabic:v { c@ #1 } }
\cs_new_protected:Npn \__fdu_patch_cmd:Nnn #1#2#3
  {
    \ctex_patch_cmd_once:NnnnTF #1 { } {#2} {#3}
      { } { \ctex_patch_failure:N #1 }
  }
\cs_new_protected:Npn \__fdu_appto_cmd:Nn #1#2
  {
    \ctex_appto_cmd:NnnTF #1 { } {#2}
      { } { \ctex_patch_failure:N #1 }
  }
\cs_new_protected:Npn \__fdu_define_fn_style:nn #1#2
  { \tl_const:cn { c__fdu_fn_style_ #1 _tl } {#2} }
\cs_new_protected:Npn \__fdu_define_punct:nn #1#2
  { \tl_const:cn { c__fdu_ #1 _tl } { \__fdu_symbol:n {#2} } }
\cs_new_protected:Npn \__fdu_define_sep:nn #1#2
  { \tl_const:cn { c__fdu_def_ #1 _sep_tl } {#2} }
\cs_new_protected:Npn \__fdu_define_format:nn #1#2
  { \tl_const:cn { c__fdu_def_ #1 _format_tl } {#2} }
\cs_new_protected:Npn \__fdu_define_name:nn #1#2
  { \tl_const:cn { c__fdu_def_name_ #1 _tl } {#2} }
\cs_new_protected:Npn \__fdu_define_name:nnn #1#2#3
  {
    \tl_const:cn { c__fdu_def_name_ #1    _tl } {#2}
    \tl_const:cn { c__fdu_def_name_ #1 _en_tl } {#3}
  }
\cs_new:Npn \__fdu_msg_new:nn  { \msg_new:nnn      { fduthesis } }
\cs_new:Npn \__fdu_error:n     { \msg_error:nn     { fduthesis } }
\cs_new:Npn \__fdu_error:nn    { \msg_error:nnn    { fduthesis } }
\cs_new:Npn \__fdu_error:nx    { \msg_error:nnx    { fduthesis } }
\cs_new:Npn \__fdu_error:nnn   { \msg_error:nnnn   { fduthesis } }
\cs_new:Npn \__fdu_warning:n   { \msg_warning:nn   { fduthesis } }
\cs_new:Npn \__fdu_warning:nn  { \msg_warning:nnn  { fduthesis } }
\cs_new:Npn \__fdu_warning:nxx { \msg_warning:nnxx { fduthesis } }
\cs_new:Npn \__fdu_info:nx     { \msg_info:nnx     { fduthesis } }
\keys_define:nn { fdu / option }
  {
    type .choice:,
    type .value_required:n = true,
    type .choices:nn =
      { doctor, master, bachelor }
      { \int_set_eq:NN \g__fdu_thesis_type_int \l_keys_choice_int },
    type .initial:n = bachelor,
    oneside .value_forbidden:n = true,
    twoside .value_forbidden:n = true,
    oneside .code:n =
      {
        \clist_gput_right:Nn \g__fdu_to_ctexbook_clist { oneside }
        \bool_set_false:N    \g__fdu_twoside_bool
      },
    twoside .code:n =
      {
        \clist_gput_right:Nn \g__fdu_to_ctexbook_clist { twoside }
        \bool_set_true:N     \g__fdu_twoside_bool
      },
    draft .choice:,
    draft / true  .code:n =
      {
        \bool_set_true:N     \g__fdu_draft_bool
        \clist_gput_right:Nn \g__fdu_to_ctexbook_clist { draft }
      },
    draft / false .code:n =
      { \bool_set_false:N    \g__fdu_draft_bool },
    draft .default:n = true,
    draft .initial:n = false,
    config .tl_set:N = \g__fdu_config_tl,
    unknown .code:n = { \__fdu_error:n { unknown-option } }
  }
\__fdu_msg_new:nn { unknown-option }
  { Class~ option~ "\l_keys_key_tl"~ is~ unknown. }
\ProcessKeysOptions { fdu / option }
\file_input:n { fduthesis.def }
\tl_if_empty:NF \g__fdu_config_tl
  {
    \file_input:V \g__fdu_config_tl
    \__fdu_info:nx { load-config-file } { \g__fdu_config_tl }
  }
\__fdu_msg_new:nn { load-config-file }
  { You~ are~ loading~ config~ file~ '#1'. }
\PassOptionsToClass
  {
    UTF8,
    scheme     = plain,
    heading    = true,
    fontset    = fandol,
    zihao      = \c__fdu_def_font_size_tl,
    \g__fdu_to_ctexbook_clist
  }
  { ctexbook }
\clist_map_inline:nn
  {
    { no-math           } { fontspec },
    { perpage           } { footmisc },
    { amsmath, thmmarks } { ntheorem }
  }
  { \PassOptionsToPackage #1 }
\RequirePackage { etoolbox }
\LoadClass { ctexbook }
\RequirePackage
  {
    amsmath,
    unicode-math,
    geometry,
    fancyhdr,
    footmisc,
    ntheorem,
    graphicx,
    longtable,
    caption,
    xcolor
  }
\cs_new_protected:Npn \__fdu_check_package:nnn #1#2#3
  {
    \@ifpackagelater {#1} {#2}
      { } { \__fdu_error:nnn { package-too-old } {#1} {#3} }
  }
\__fdu_msg_new:nn { package-too-old }
  {
    Package~ "#1"~ is~ too~ old. \\
    The~ fduthesis~ class~ only~ supports~ "#1"~ with~ a~ version \\
    higher~ than~ v#2. \\\\
    Please~ update~ an~ up-to-date~ version~ of~ it~ using~ your \\
    TeX~ package~ manager~ or~ from~ CTAN.
  }
\__fdu_check_package:nnn { ctex         } { 2017/08/07 } { 2.4.10 }
\__fdu_check_package:nnn { fontspec     } { 2017/09/22 } { 2.6e   }
\__fdu_check_package:nnn { unicode-math } { 2017/11/18 } { 0.8i   }
\sys_if_engine_xetex:T
  { \__fdu_check_package:nnn { xeCJK } { 2017/08/07 } { 3.5.0 } }
\geometry
  {
    paper      = \c__fdu_def_paper_size_tl,
    top        = \c__fdu_def_page_margin_top_dim,
    bottom     = \c__fdu_def_page_margin_bottom_dim,
    left       = \c__fdu_def_page_margin_left_dim,
    right      = \c__fdu_def_page_margin_right_dim,
    headheight = \c__fdu_def_header_height_dim
  }
\bool_if:NT \g__fdu_draft_bool { \geometry { showframe } }
\prop_new:N \g__fdu_font_name_prop
\prop_new:N \g__fdu_font_options_prop
\prop_new:N \g__fdu_cjk_font_name_prop
\prop_new:N \g__fdu_cjk_font_options_prop
\keys_define:nn { fdu / style }
  {
    font .choice:,
    font .value_required:n = true,
    font / libertinus .code:n =
      {
        \fdu_choose_font:nn { main } { Libertinus~ Serif }
        \fdu_choose_font:nn { sans } { Libertinus~ Sans  }
        \fdu_choose_font_with_option:nnn { mono }
          { TeX~ Gyre~ Cursor } { Ligatures = Common Off }
        \fdu_choose_font:nn { math } { Libertinus~ Math  }
        \keys_set:nn { fdu / style } { footnotestyle = libertinus }
      },
    font / lm .code:n =
      {
        \fdu_choose_font:nn { main } { Latin~ Modern~ Roman }
        \fdu_choose_font:nn { sans } { Latin~ Modern~ Sans  }
        \fdu_choose_font:nn { mono } { Latin~ Modern~ Mono  }
        \fdu_choose_font:nn { math } { Latin~ Modern~ Math  }
        \keys_set:nn { fdu / style } { footnotestyle = pifont }
      },
    font / palatino .code:n =
      {
        \fdu_choose_font:nn { main } { TeX~ Gyre~ Pagella }
        \fdu_choose_font:nn { sans } { TeX~ Gyre~ Heros   }
        \fdu_choose_font_with_option:nnn { mono }
          { TeX~ Gyre~ Cursor } { Ligatures = Common Off }
        \fdu_choose_font:nn { math } { TeX~ Gyre~ Pagella~ Math }
        \keys_set:nn { fdu / style } { footnotestyle = pifont }
      },
    font / times .code:n =
      {
        \fdu_choose_font_with_option:nnn { main } { XITS }
          {
            UprightFeatures    = { SmallCapsFont = *               },
            BoldFeatures       = { SmallCapsFont = *~ Bold         },
            ItalicFeatures     = { SmallCapsFont = *~ Italic       },
            BoldItalicFeatures = { SmallCapsFont = *~ Bold~ Italic },
          }
        \fdu_choose_font:nn { sans } { TeX~ Gyre~ Heros  }
        \fdu_choose_font_with_option:nnn { mono }
          { TeX~ Gyre~ Cursor } { Ligatures = Common Off }
        \fdu_choose_font:nn { math } { XITS~ Math        }
        \keys_set:nn { fdu / style } { footnotestyle = xits }
      },
    font / none .code:n =
      {
        \__fdu_initialize_prop:Nn \g__fdu_font_name_prop
          { main, sans, mono, math }
        \__fdu_initialize_prop:Nn \g__fdu_font_options_prop
          { main, sans, mono, math }
        \keys_set:nn { fdu / style } { footnotestyle = plain }
      }
  }
\cs_new:Npn \__fdu_initialize_prop:Nn #1#2
  {
    \prop_clear:N #1
    \clist_map_inline:nn {#2} { \prop_put:Nnn #1 {##1} { } }
  }
\RenewDocumentCommand \setmainfont { O { } m O { } }
  { \fdu_choose_font_with_option:nnn { main } {#2} { #1, #3 } }
\RenewDocumentCommand \setsansfont { O { } m O { } }
  { \fdu_choose_font_with_option:nnn { sans } {#2} { #1, #3 } }
\RenewDocumentCommand \setmonofont { O { } m O { } }
  { \fdu_choose_font_with_option:nnn { mono } {#2} { #1, #3 } }
\RenewDocumentCommand \setmathfont { O { } m O { } }
  { \fdu_choose_font_with_option:nnn { math } {#2} { #1, #3 } }
\cs_new_protected:Npn \fdu_choose_font_with_option:nnn #1#2#3
  {
    \prop_put:Nnn \g__fdu_font_name_prop    {#1} {#2}
    \prop_put:Nnn \g__fdu_font_options_prop {#1} {#3}
  }
\cs_new_protected:Npn \fdu_choose_font:nn #1#2
  {
    \prop_put:Nnn \g__fdu_font_name_prop    {#1} {#2}
    \prop_put:Nnn \g__fdu_font_options_prop {#1} {  }
  }
\cs_new_protected:Npn \fdu_choose_cjk_font_with_option:nnn #1#2#3
  {
    \prop_put:Nnn \g__fdu_cjk_font_name_prop    {#1} {#2}
    \prop_put:Nnn \g__fdu_cjk_font_options_prop {#1} {#3}
  }
\cs_new_protected:Npn \fdu_choose_cjk_font:nn #1#2
  {
    \prop_put:Nnn \g__fdu_cjk_font_name_prop    {#1} {#2}
    \prop_put:Nnn \g__fdu_cjk_font_options_prop {#1} {  }
  }
\cs_new_protected:Npn \__fdu_set_font:
  {
    \clist_map_inline:nn { main, sans, mono, math }
      {
        \prop_get:NnN \g__fdu_font_name_prop    {##1}
          \l__fdu_tmpa_tl
        \prop_get:NnN \g__fdu_font_options_prop {##1}
          \l__fdu_tmpb_tl
        \tl_if_empty:NT \l__fdu_tmpa_tl
          { \__fdu_error:nn { font-not-defined } {##1} }
        \use:c { __fdu_set_ ##1 _font:VV }
          \l__fdu_tmpa_tl \l__fdu_tmpb_tl
      }
  }
\clist_map_inline:nn { main, sans, mono }
  {
    \cs_new:cpx { __fdu_set_ #1 _font:nn } ##1 ##2
      { \exp_not:c { __fontspec_main_set #1 font:nn } {##2} {##1} }
  }
\cs_new:Npn \__fdu_set_math_font:nn #1#2
  { \__um_setmathfont:nn {#2} {#1} }
\clist_map_inline:nn { main, sans, mono, math }
  { \cs_generate_variant:cn { __fdu_set_ #1 _font:nn } { VV } }
\__fdu_msg_new:nn { font-not-defined }
  {
    \str_upper_case:f { \tl_head:n {#1} } \tl_tail:n {#1} ~
    font~ is~ not~ defined. \\\\
    You~ can~ set~ option~ "font"~ via~ "\string\fdusetup",~
    or~ use~ command~ \\
    "\string\set #1 font"~ to~ define~ new~ font~ families.
  }
\ctex_at_end_preamble:n
  {
    \__fdu_set_font:
  }
\keys_set:nn { unicode-math }
  {
    math-style = ISO,
    bold-style = ISO,
  }
\keys_define:nn { fdu / style }
  {
    fontsize .choice:,
    fontsize .value_required:n = true,
    fontsize / -4 .code:n = { },
    fontsize /  5 .code:n =
      {
        \RenewDocumentCommand \tiny         { } { \zihao {  7 } }
        \RenewDocumentCommand \scriptsize   { } { \zihao { -6 } }
        \RenewDocumentCommand \footnotesize { } { \zihao {  6 } }
        \RenewDocumentCommand \small        { } { \zihao { -5 } }
        \RenewDocumentCommand \normalsize   { } { \zihao {  5 } }
        \RenewDocumentCommand \large        { } { \zihao { -4 } }
        \RenewDocumentCommand \Large        { } { \zihao { -3 } }
        \RenewDocumentCommand \LARGE        { } { \zihao { -2 } }
        \RenewDocumentCommand \huge         { } { \zihao {  2 } }
        \RenewDocumentCommand \Huge         { } { \zihao {  1 } }
      }
  }
\keys_set:nn { ctex }
  {
    chapter =
      {
        format      = \c__fdu_def_chapter_en_format_tl,
        nameformat  = \c__fdu_def_chapter_name_en_format_tl,
        titleformat = \c__fdu_def_chapter_title_en_format_tl,
        aftername   = \c__fdu_def_chapter_after_name_en_tl,
        beforeskip  = \c__fdu_def_chapter_before_sep_tl,
        afterskip   = \c__fdu_def_chapter_after_sep_tl,
        number      = { \__fdu_arabic:n { chapter } },
        fixskip     = true
      },
    section =
      {
        format      = \c__fdu_def_section_en_format_tl,
        beforeskip  = \c__fdu_def_section_before_sep_tl,
        afterskip   = \c__fdu_def_section_after_sep_tl,
        fixskip     = true
      },
    subsection =
      {
        format      = \c__fdu_def_subsection_en_format_tl,
        beforeskip  = \c__fdu_def_subsection_before_sep_tl,
        afterskip   = \c__fdu_def_subsection_after_sep_tl,
        fixskip     = true
      }
  }
\fancyhf { }
\tl_new:N \l__fdu_header_center_mark_tl
\bool_if:NTF \g__fdu_twoside_bool
  {
    \fancyhead [ EL ] { \small \nouppercase { \itshape \leftmark  } }
    \fancyhead [ OR ] { \small \nouppercase { \itshape \rightmark } }
  }
  {
    \fancyhead [ L ] { \small \nouppercase { \itshape \leftmark  } }
    \fancyhead [ R ] { \small \nouppercase { \itshape \rightmark } }
    \fancyhead [ C ]
      {
        \small \nouppercase
          { \itshape \l__fdu_header_center_mark_tl }
      }
  }
\fancyfoot [ C ] { \small \thepage }
\cs_new:Npn \fdu_front_matter_header:n #1
  {
    \bool_if:NTF \g__fdu_twoside_bool
      { \markboth {#1} {#1} }
      {
        \markboth { } { }
        \tl_gset:Nn \l__fdu_header_center_mark_tl {#1}
      }
  }
\RenewDocumentCommand \cleardoublepage { }
  {
    \clearpage
    \bool_if:NT \g__fdu_twoside_bool
      {
        \int_if_odd:nF \c@page
          { \hbox:n { } \thispagestyle { empty } \newpage }
      }
    \tl_gset:Nn \l__fdu_header_center_mark_tl { }
  }
\pagestyle { fancy }
\clist_map_inline:nn
  {
    { plain           } { plain           },
    { libertinus      } { libertinus      },
    { libertinus_neg  } { libertinus*     },
    { libertinus_sans } { libertinus-sans },
    { pifont          } { pifont          },
    { pifont_neg      } { pifont*         },
    { pifont_sans     } { pifont-sans     },
    { pifont_sans_neg } { pifont-sans*    },
    { xits            } { xits            },
    { xits_sans       } { xits-sans       },
    { xits_sans_neg   } { xits-sans*      }
  }
  { \__fdu_define_fn_style:nn #1 }
\tl_new:N \l__fdu_fn_style_tl
\keys_define:nn { fdu / style }
  {
    footnotestyle .choices:nn =
      {
        plain,
        libertinus, libertinus*, libertinus-sans,
        pifont,     pifont*,     pifont-sans,     pifont-sans*,
        xits,                    xits-sans,       xits-sans*
      }
      {
        \tl_gset_eq:NN \l__fdu_fn_style_tl \l_keys_choice_tl
        \int_compare:nT { 5 <= \l_keys_choice_int <= 8 }
          { \RequirePackage { pifont } }
      },
    footnotestyle .value_required:n = true
  }
\cs_new:Npn \__fdu_fn_symbol_libertinus:n #1
  {
    \int_compare:nTF { #1 >= 21 }
      {
        \int_compare:nTF { #1 >= 47 }
          { \__fdu_symbol:n { \int_eval:n { "24B6 - 47 + #1 } } }
          { \__fdu_symbol:n { \int_eval:n { "24D0 - 21 + #1 } } }
      }
      { \__fdu_symbol:n { \int_eval:n { "2460 - 1 + #1 } } }
  }
\cs_new:Npn \__fdu_fn_symbol_libertinus_neg:n #1
  {
    \int_compare:nTF { #1 >= 11 }
      { \__fdu_symbol:n { \int_eval:n { "24EB - 11 + #1 } } }
      { \__fdu_symbol:n { \int_eval:n { "2776 -  1 + #1 } } }
  }
\cs_new_eq:NN \__fdu_fn_symbol_libertinus_sans:n
  \__fdu_fn_symbol_libertinus:n
\cs_new:Npn \__fdu_fn_symbol_pifont:n #1
  { \ding { \int_eval:n { 171 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_pifont_neg:n #1
  { \ding { \int_eval:n { 181 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_pifont_sans:n #1
  { \ding { \int_eval:n { 191 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_pifont_sans_neg:n #1
  { \ding { \int_eval:n { 201 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_xits:n #1
  {
    \int_compare:nTF { #1 >= 10 }
      {
        \int_compare:nTF { #1 >= 36 }
          { \__fdu_symbol:n { \int_eval:n { "24B6 - 36 + #1 } } }
          { \__fdu_symbol:n { \int_eval:n { "24D0 - 10 + #1 } } }
      }
      { \__fdu_symbol:n { \int_eval:n { "2460 - 1 + #1 } } }
  }
\cs_new:Npn \__fdu_fn_symbol_xits_sans:n #1
  { \__fdu_symbol:n { \int_eval:n { "2780 - 1 + #1 } } }
\cs_new:Npn \__fdu_fn_symbol_xits_sans_neg:n #1
  { \__fdu_symbol:n { \int_eval:n { "278A - 1 + #1 } } }
\cs_set:Npn \thefootnote { \fdu_footnote_number:N \c@footnote }
\cs_new:Npn \fdu_footnote_number:N #1
  {
    \tl_case:NnF \l__fdu_fn_style_tl
      {
        \c__fdu_fn_style_plain_tl
          { \int_use:N #1 }
        \c__fdu_fn_style_libertinus_tl
          {
            \fontspec { Libertinus~ Serif }
            \__fdu_fn_symbol_libertinus:n {#1}
          }
        \c__fdu_fn_style_libertinus_neg_tl
          {
            \fontspec { Libertinus~ Serif }
            \__fdu_fn_symbol_libertinus_neg:n {#1}
          }
        \c__fdu_fn_style_libertinus_sans_tl
          {
            \fontspec { Libertinus~ Sans }
            \__fdu_fn_symbol_libertinus_sans:n {#1}
          }
        \c__fdu_fn_style_pifont_tl
          { \__fdu_fn_symbol_pifont:n {#1} }
        \c__fdu_fn_style_pifont_neg_tl
          { \__fdu_fn_symbol_pifont_neg:n {#1} }
        \c__fdu_fn_style_pifont_sans_tl
          { \__fdu_fn_symbol_pifont_sans:n {#1} }
        \c__fdu_fn_style_pifont_sans_neg_tl
          { \__fdu_fn_symbol_pifont_sans_neg:n {#1} }
        \c__fdu_fn_style_xits_tl
          {
            \fontspec { XITS }
            \__fdu_fn_symbol_xits:n {#1}
          }
        \c__fdu_fn_style_xits_sans_tl
          {
            \fontspec { XITS }
            \__fdu_fn_symbol_xits_sans:n {#1}
          }
        \c__fdu_fn_style_xits_sans_neg_tl
          {
            \fontspec { XITS }
            \__fdu_fn_symbol_xits_sans_neg:n {#1}
          }
      }
      { \int_use:N #1 }
  }
\cs_set:Npn \@makefntext #1
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn { \c__fdu_def_fn_mark_sep_tl } { \@thefnmark \hfil }
    #1
  }
\clist_const:Nn \c__fdu_thm_style_plain_clist
  { plain, margin, change }
\clist_const:Nn \c__fdu_thm_style_break_clist
  { break, marginbreak, changebreak }
\tl_new:N \l__fdu_thm_style_tl
\tl_new:N \l__fdu_thm_header_font_tl
\tl_new:N \l__fdu_thm_body_font_tl
\tl_new:N \l__fdu_thm_qed_tl
\tl_new:N \l__fdu_thm_counter_tl
\keys_define:nn { fdu / theorem }
  {
    style      .tl_set:N  = \l__fdu_thm_style_tl,
    headerfont .tl_set:N  = \l__fdu_thm_header_font_tl,
    bodyfont   .tl_set:N  = \l__fdu_thm_body_font_tl,
    qed        .tl_set:N  = \l__fdu_thm_qed_tl,
    counter    .tl_set:N  = \l__fdu_thm_counter_tl
  }
\cs_new_eq:NN \__fdu_thm_ntheorem_style:n \theoremstyle
\cs_new_eq:NN \__fdu_thm_ntheorem_new:w   \newtheorem
\RenewDocumentCommand \newtheorem { s o m m }
  {
    \IfBooleanTF {#1}
      { \tl_set:Nn \l__fdu_thm_qed_tl { \ensuremath { \QED } } }
      { \tl_set:Nn \l__fdu_thm_qed_tl { } }
    \tl_set:Nn \l__fdu_thm_style_tl { plain }
    \IfValueT {#2} { \keys_set:nn { fdu / theorem } {#2} }
    \fdu_thm_set_header_font:V \l__fdu_thm_header_font_tl
    \fdu_thm_set_body_font:V   \l__fdu_thm_body_font_tl
    \fdu_thm_set_qed:V         \l__fdu_thm_qed_tl
    \IfBooleanTF {#1}
      {
        \clist_if_in:nVF { plain, break } \l__fdu_thm_style_tl
          {
            \clist_if_in:NVTF
              \c__fdu_thm_style_plain_clist \l__fdu_thm_style_tl
              { \__fdu_thm_redefine_style:n { plain } }
              {
                \clist_if_in:NVTF
                  \c__fdu_thm_style_break_clist \l__fdu_thm_style_tl
                  { \__fdu_thm_redefine_style:n { break } }
                  {
                    \__fdu_error:nx { unknown-theorem-style }
                      { \l__fdu_thm_style_tl }
                  }
              }
          }
        \tl_put_left:Nn \l__fdu_thm_style_tl { nonumber }
        \fdu_thm_new_no_number:Vxx \l__fdu_thm_style_tl {#3} {#4}
      }
      {
        \clist_clear:N \l__fdu_tmpa_clist
        \clist_concat:NNN \l__fdu_tmpa_clist
          \c__fdu_thm_style_plain_clist \c__fdu_thm_style_break_clist
        \clist_if_in:NVF \l__fdu_tmpa_clist \l__fdu_thm_style_tl
          {
            \__fdu_error:nx { unknown-theorem-style }
              { \l__fdu_thm_style_tl }
          }
        \fdu_thm_new:VVxx \l__fdu_thm_style_tl \l__fdu_thm_counter_tl
          {#3} {#4}
      }
  }
\cs_new:Npn \__fdu_thm_redefine_style:n #1
  {
    \__fdu_warning:nxx { redefine-theorem-style }
      {#1} { \l__fdu_thm_style_tl }
    \tl_set:Nn \l__fdu_thm_style_tl {#1}
  }
\__fdu_msg_new:nn { redefine-theorem-style }
  { Theorem~ style~ "#2"~ will~ be~ redefined~ as~ "#1". }
\__fdu_msg_new:nn { unknown-theorem-style }
  { Theorem~ style~ "#1"~ is~ unknown. }
\cs_new:Npn \fdu_thm_new:nnnn #1#2#3#4
  {
    \__fdu_thm_ntheorem_style:n {#1}
    \__fdu_thm_ntheorem_new:w   {#3} {#4} [#2]
  }
\cs_generate_variant:Nn \fdu_thm_new:nnnn { VVxx }
\cs_new:Npn \fdu_thm_new_no_number:nnn #1#2#3
  {
    \__fdu_thm_ntheorem_style:n {#1}
    \__fdu_thm_ntheorem_new:w   {#2} {#3}
  }
\cs_generate_variant:Nn \fdu_thm_new_no_number:nnn { Vxx }
\cs_new:Npn \fdu_thm_set_qed:n         #1 { \theoremsymbol     {#1} }
\cs_new:Npn \fdu_thm_set_header_font:n #1 { \theoremheaderfont {#1} }
\cs_new:Npn \fdu_thm_set_body_font:n   #1 { \theorembodyfont   {#1} }
\cs_generate_variant:Nn \fdu_thm_set_qed:n         { V }
\cs_generate_variant:Nn \fdu_thm_set_header_font:n { V }
\cs_generate_variant:Nn \fdu_thm_set_body_font:n   { V }
\captionsetup [ figure ]
  {
    font     = small,
    labelsep = quad
  }
\captionsetup [ table  ]
  {
    font     = { small, sf },
    labelsep = quad
  }
\cs_set:Npn \thefigure
  { \__fdu_arabic:n { chapter } - \__fdu_arabic:n { figure } }
\cs_set:Npn \thetable
  { \__fdu_arabic:n { chapter } - \__fdu_arabic:n { table  } }
\tl_new:N    \l__fdu_info_title_tl
\tl_new:N    \l__fdu_info_date_tl
\tl_new:N    \l__fdu_info_author_tl
\tl_new:N    \l__fdu_info_supervisor_tl
\clist_new:N \l__fdu_info_instructors_clist
\tl_new:N    \l__fdu_info_department_tl
\tl_new:N    \l__fdu_info_major_tl
\tl_new:N    \l__fdu_info_student_id_tl
\tl_new:N    \l__fdu_info_school_id_tl
\clist_new:N \l__fdu_info_keywords_clist
\tl_new:N    \l__fdu_info_clc_tl
\tl_new:N    \l__fdu_info_title_en_tl
\tl_new:N    \l__fdu_info_author_en_tl
\tl_new:N    \l__fdu_info_supervisor_en_tl
\tl_new:N    \l__fdu_info_department_en_tl
\tl_new:N    \l__fdu_info_major_en_tl
\clist_new:N \l__fdu_info_keywords_en_clist
\int_new:N \l__fdu_info_degree_type_int
\keys_define:nn { fdu / info }
  {
    degree      .choices:nn  =
      { academic, professional }
      {
        \int_set_eq:NN
          \l__fdu_info_degree_type_int \l_keys_choice_int
      },
    title       .tl_set:N    = \l__fdu_info_title_tl,
    title*      .tl_set:N    = \l__fdu_info_title_en_tl,
    date        .tl_set:N    = \l__fdu_info_date_tl,
    author      .tl_set:N    = \l__fdu_info_author_tl,
    author*     .tl_set:N    = \l__fdu_info_author_en_tl,
    supervisor  .tl_set:N    = \l__fdu_info_supervisor_tl,
    supervisor* .tl_set:N    = \l__fdu_info_supervisor_en_tl,
    instructors .clist_set:N = \l__fdu_info_instructors_clist,
    department  .tl_set:N    = \l__fdu_info_department_tl,
    department* .tl_set:N    = \l__fdu_info_department_en_tl,
    major       .tl_set:N    = \l__fdu_info_major_tl,
    major*      .tl_set:N    = \l__fdu_info_major_en_tl,
    studentid   .tl_set:N    = \l__fdu_info_student_id_tl,
    schoolid    .tl_set:N    = \l__fdu_info_school_id_tl,
    keywords    .clist_set:N = \l__fdu_info_keywords_clist,
    keywords*   .clist_set:N = \l__fdu_info_keywords_en_clist,
    clc         .tl_set:N    = \l__fdu_info_clc_tl
  }
\tl_new:N    \l__fdu_cover_logo_tl
\clist_new:N \l__fdu_cover_logo_size_clist
\keys_define:nn { fdu / style }
  {
    logo     .tl_set:N    = \l__fdu_cover_logo_tl,
    logosize .clist_set:N = \l__fdu_cover_logo_size_clist
  }
\bool_new:N \l__fdu_secret_bool
\tl_new:N \l__fdu_info_secret_level_tl
\keys_define:nn { fdu / info }
  {
    secretlevel .choices:nn  =
      { none, i, ii, iii }
      {
        \int_compare:nTF
          { \l_keys_choice_int >= 2 }
          {
            \bool_set_true:N \l__fdu_secret_bool
            \tl_set:Nn \l__fdu_info_secret_level_tl
              {
                \clist_item:Nn \c__fdu_def_secret_clist
                  { \l_keys_choice_int - 1 }
              }
          }
          { \bool_set_false:N \l__fdu_secret_bool }
      },
    secretlevel .value_required:n = true,
    secretyear .tl_set:N = \l__fdu_info_secret_year_tl
  }
\cs_new:Npn \__fdu_spread_box:nnn #1#2#3
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn {#1}
      { #3 \tl_map_inline:nn {#2} { \exp_not:n {##1} \hfil } \unskip }
  }
\cs_new:Npx \__fdu_spread_box:nn #1#2
  { \__fdu_spread_box:nnn {#1} {#2} { } }
\cs_generate_variant:Nn \__fdu_spread_box:nnn { VVn }
\cs_generate_variant:Nn \__fdu_spread_box:nn  { VV  }
\cs_new:Npn \__fdu_center_box:nnn #1#2#3
  {
    \mode_leave_vertical:
    \hbox_to_wd:nn {#1} { #3 \hfil #2 \hfil }
  }
\cs_new:Npx \__fdu_center_box:nn #1#2
  { \__fdu_center_box:nnn {#1} {#2} { } }
\cs_generate_variant:Nn \__fdu_center_box:nnn { VVn }
\cs_generate_variant:Nn \__fdu_center_box:nn  { VV  }
\cs_new:Npn \__fdu_fixed_width_box:nnn #1#2#3
  { \parbox {#1} { #3 #2 } }
\cs_generate_variant:Nn \__fdu_fixed_width_box:nnn { Vnn }
\cs_new:Npn \__fdu_fixed_width_center_box:nnn #1#2#3
  { \__fdu_fixed_width_box:nnn {#1} {#2} { \centering #3 } }
\cs_generate_variant:Nn \__fdu_fixed_width_center_box:nnn { VVn }
\cs_new:Npn \fdu_get_text_width:Nn #1#2
  {
    \hbox_set:Nn \l__fdu_tmpa_box {#2}
    \dim_set:Nn #1 { \box_wd:N \l__fdu_tmpa_box }
  }
\cs_generate_variant:Nn \fdu_get_text_width:Nn { NV }
\cs_new:Npn \fdu_get_max_text_width:NN #1#2
  {
    \group_begin:
    \clist_set_eq:NN \l__fdu_tmpa_clist #2
    \bool_until_do:nn { \clist_if_empty_p:N \l__fdu_tmpa_clist }
      {
        \clist_pop:NN \l__fdu_tmpa_clist \l__fdu_tmpa_tl
        \fdu_get_text_width:NV \l__fdu_tmpa_dim \l__fdu_tmpa_tl
        \dim_gset:Nn #1 { \dim_max:nn {#1} { \l__fdu_tmpa_dim } }
      }
    \group_end:
  }
\cs_new:Npn \fdu_blank_underline:N #1
  { \rule [ -0.5 ex ] {#1} { 0.4 pt } }
\cs_new:Npn \fdu_line_spread:n #1
  { \linespread {#1} \selectfont }
\cs_new:Npn \__fdu_cover_id:
  {
    \begin{flushright}
      \skip_set:Nn \rightskip { \c__fdu_def_cover_id_margin_sep_tl }
      \__fdu_fixed_width_box:Vnn \c__fdu_def_cover_id_width_tl
        {
          \bool_if:NT \l__fdu_secret_bool
            {
              \group_begin:
                \sffamily
                \c__fdu_def_name_secret_level_tl
                \c__fdu_fullwidth_colon_tl
                \l__fdu_info_secret_level_tl
                \c__fdu_def_name_secret_star_tl
                \l__fdu_info_secret_year_tl
              \group_end:
              \par
            }
          \c__fdu_def_name_school_id_tl
          \c__fdu_fullwidth_colon_tl
          \l__fdu_info_school_id_tl
          \par
          \c__fdu_def_name_student_id_tl
          \c__fdu_fullwidth_colon_tl
          \l__fdu_info_student_id_tl
        }
        { \__fdu_cover_font_size_small: }
    \end{flushright}
  }
\cs_new:Npn \__fdu_cover_logo:
  {
    \begin{center}
      \clist_pop:NN   \l__fdu_cover_logo_size_clist \l__fdu_tmpa_tl
      \clist_pop:NNTF \l__fdu_cover_logo_size_clist \l__fdu_tmpb_tl
        {
          \tl_if_empty:NTF \l__fdu_tmpa_tl
            { \includegraphics [ height = \l__fdu_tmpb_tl ] }
            {
              \includegraphics
                [
                  width  = \l__fdu_tmpa_tl,
                  height = \l__fdu_tmpb_tl
                ]
            }
        }
        { \includegraphics [ width = \l__fdu_tmpa_tl ] }
      { \l__fdu_cover_logo_tl }
    \end{center}
  }
\cs_new:Npn \__fdu_cover_title:
  {
    \begin{center}
      \tl_set:Nx \l__fdu_tmpa_tl
        {
          \clist_item:Nn \c__fdu_def_thesis_type_clist
            { \g__fdu_thesis_type_int }
        }
      \__fdu_spread_box:VVn
        \c__fdu_def_cover_type_width_tl
        \l__fdu_tmpa_tl
        { \__fdu_cover_font_size_huge: }
      \skip_vertical:n { \c__fdu_def_cover_v_sep_iii_tl }
      \int_compare:nNnT \g__fdu_thesis_type_int = \c_two
        {
          \tl_set:Nx \l__fdu_tmpa_tl
            {
              \clist_item:Nn \c__fdu_def_degree_type_clist
                { \l__fdu_info_degree_type_int }
            }
          \group_begin:
            \__fdu_cover_font_size_normal:
            \c__fdu_fullwidth_left_parenthesis_tl
            \l__fdu_tmpa_tl
            \c__fdu_fullwidth_right_parenthesis_tl
          \group_end:
        }
      \skip_vertical:n { \c__fdu_def_cover_v_sep_iv_tl }
      \__fdu_fixed_width_center_box:VVn
        \c__fdu_def_cover_title_width_tl
        \l__fdu_info_title_tl
        { \__fdu_cover_font_size_large: \sffamily }
      \skip_vertical:n { \c__fdu_def_cover_v_sep_v_tl }
      \__fdu_fixed_width_center_box:VVn
        \c__fdu_def_cover_title_en_width_tl
        \l__fdu_info_title_en_tl
        {
          \__fdu_cover_font_size_normal: \bfseries
          \fdu_line_spread:n
            { \fp_use:N \c__fdu_def_cover_title_en_line_spread_fp }
        }
    \end{center}
  }
\cs_new:Npn \__fdu_cover_info:
  {
    \begin{center}
      \clist_set:Nx \l__fdu_tmpa_clist
        {
          \c__fdu_def_name_department_tl,
          \c__fdu_def_name_major_tl,
          \c__fdu_def_name_author_tl,
          \c__fdu_def_name_supervisor_tl,
          \c__fdu_def_name_date_tl,
        }
      \clist_set:Nx \l__fdu_tmpb_clist
        {
          { \l__fdu_info_department_tl },
          { \l__fdu_info_major_tl      },
          { \l__fdu_info_author_tl     },
          { \l__fdu_info_supervisor_tl },
          { \l__fdu_info_date_tl       }
        }
      \begin{minipage} [ c ] { \textwidth }
        \centering \__fdu_cover_font_size_normal:
        \fdu_get_max_text_width:NN \l__fdu_tmpb_dim \l__fdu_tmpb_clist
        \bool_until_do:nn
          { \clist_if_empty_p:N \l__fdu_tmpa_clist }
          {
            \clist_pop:NN \l__fdu_tmpa_clist \l__fdu_tmpa_tl
            \clist_pop:NN \l__fdu_tmpb_clist \l__fdu_tmpb_tl
            \__fdu_spread_box:VV
              \c__fdu_def_cover_info_left_width_tl \l__fdu_tmpa_tl
            \c__fdu_fullwidth_colon_tl
            \__fdu_center_box:VV \l__fdu_tmpb_dim \l__fdu_tmpb_tl
            \skip_vertical:n { \c__fdu_def_cover_v_sep_vii_tl }
          }
      \end{minipage}
    \end{center}
  }
\cs_new:Npn \__fdu_decl_text:nnn #1#2#3
  {
    \begin{center}
      \fdu_line_spread:n { \fp_use:N \c__fdu_def_line_spread_fp }
      \__fdu_cover_font_size_large: \sffamily #1
    \end{center}
    \skip_vertical:n { \c__fdu_def_decl_v_sep_iv_tl }
    \__fdu_fixed_width_box:Vnn \textwidth
      { \__fdu_qquad: #2 }
      {
        \fdu_line_spread:n
          { \fp_use:N \c__fdu_def_decl_text_line_spread_fp }
      }
    \skip_vertical:n { \c__fdu_def_decl_v_sep_iv_tl }
    { \hfill #3 }
  }
\cs_generate_variant:Nn \__fdu_decl_text:nnn { VVn }
\NewDocumentCommand \makecoveri { }
  {
    \group_begin:
      \fdu_line_spread:n { \fp_use:N \c__fdu_def_line_spread_fp }
      \__fdu_cover_id:
      \skip_vertical:n { \c__fdu_def_cover_v_sep_i_tl  }
      \__fdu_cover_logo:
      \skip_vertical:n { \c__fdu_def_cover_v_sep_ii_tl }
      \__fdu_cover_title:
      \skip_vertical:n { \c__fdu_def_cover_v_sep_vi_tl }
      \__fdu_cover_info:
      \skip_vertical:n { \c__fdu_def_cover_v_sep_ix_tl }
    \group_end:
  }
\NewDocumentCommand \makecoverii { }
  {
    \group_begin:
      \cs_set_eq:NN \cleardoublepage \relax
      \thispagestyle { empty }
      \keys_set:nn { ctex }
        { chapter / titleformat = \c__fdu_def_chapter_format_tl }
      \fdu_line_spread:n { \fp_use:N \c__fdu_def_line_spread_fp }
      \@schapter
        {
          \__fdu_spread_box:VV
            \c__fdu_def_cover_instructors_width_tl
            \c__fdu_def_name_instructors_tl
        }
      \begin{center}
        \large
        \clist_use:Nn \l__fdu_info_instructors_clist { \par }
      \end{center}
    \group_end:
  }
\NewDocumentCommand \makecoveriii { }
  {
    \cleardoublepage
    \thispagestyle { empty }
    \mode_leave_vertical:
    \skip_vertical:n { \c__fdu_def_decl_v_sep_i_tl }
    \__fdu_decl_text:VVn
      \c__fdu_def_name_originality_decl_tl
      \c__fdu_def_originality_decl_text_tl
      {
        \c__fdu_def_name_author_sign_tl
        \c__fdu_fullwidth_colon_tl
        \fdu_blank_underline:N \c__fdu_def_decl_sign_width_tl
        \__fdu_quad:
        \c__fdu_def_name_sign_date_tl
        \c__fdu_fullwidth_colon_tl
        \fdu_blank_underline:N \c__fdu_def_decl_date_width_tl
      }
    \skip_vertical:n { \c__fdu_def_decl_v_sep_ii_tl }
    \__fdu_decl_text:VVn
      \c__fdu_def_name_authorization_decl_tl
      \c__fdu_def_authorization_decl_text_tl
      {
        \c__fdu_def_name_author_sign_tl
        \c__fdu_fullwidth_colon_tl
        \fdu_blank_underline:N \c__fdu_def_decl_sign_width_tl
        \__fdu_quad:
        \c__fdu_def_name_supervisor_sign_tl
        \c__fdu_fullwidth_colon_tl
        \fdu_blank_underline:N \c__fdu_def_decl_sign_width_tl
        \__fdu_quad:
        \c__fdu_def_name_sign_date_tl
        \c__fdu_fullwidth_colon_tl
        \fdu_blank_underline:N \c__fdu_def_decl_date_width_tl
      }
    \skip_vertical:n { \c__fdu_def_decl_v_sep_iii_tl }
  }
\bool_new:N \l__fdu_auto_make_cover_bool
\keys_define:nn { fdu / style }
  {
    automakecover .bool_set:N = \l__fdu_auto_make_cover_bool,
    automakecover .default:n  = true
  }
\AtBeginDocument
  {
    \bool_if:NT \l__fdu_auto_make_cover_bool
      {
        \begin{titlepage}
          \makecoveri \newpage \makecoverii
        \end{titlepage}
      }
  }
\AtEndDocument
  { \bool_if:NT \l__fdu_auto_make_cover_bool { \makecoveriii } }
\keys_set:nn { ctex }
  {
    contentsname = \c__fdu_def_name_toc_en_tl,
    chapter / tocline =
      {
        \c__fdu_def_chapter_toc_en_format_tl \CTEXnumberline {#1} #2
      },
    section / tocline =
      {
        \c__fdu_def_section_toc_en_format_tl \CTEXnumberline {#1} #2
      },
    subsection / tocline =
      {
        \c__fdu_def_subsection_toc_en_format_tl
        \CTEXnumberline {#1} #2
      }
  }
\__fdu_patch_cmd:Nnn \tableofcontents
  {
    \chapter*{\contentsname
      \@mkboth{%
        \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
  }
  {
    \chapter* { \contentsname }
    \fdu_front_matter_header:n { \c__fdu_def_name_toc_en_tl }
  }
\__fdu_patch_cmd:Nnn \@starttoc
  { \begingroup }
  {
    \begingroup
      \fdu_line_spread:n { \fp_use:N \c__fdu_def_line_spread_fp }
  }
\NewDocumentEnvironment { abstract } { }
  {
    \chapter* { \c__fdu_def_name_abstract_en_tl }
    \fdu_front_matter_header:n { \c__fdu_def_name_abstract_en_tl }
    \addcontentsline { toc } { chapter }
      {
        \c__fdu_def_chapter_toc_en_format_tl
        \c__fdu_def_name_abstract_en_tl
      }
  }
  {
    \par \mode_leave_vertical: \par
    \noindent \hangindent = 4 em \hangafter = 1
    \textbf { \c__fdu_def_name_keywords_en_tl } \__fdu_quad:
    \clist_use:Nn \l__fdu_info_keywords_en_clist { \__fdu_quad: }
    \par
    \noindent
    \textbf { \c__fdu_def_name_clc_en_tl } \__fdu_quad:
    \l__fdu_info_clc_tl
  }
\NewDocumentEnvironment { notation }
  { O { \c__fdu_def_notation_arg_tl } }
  {
    \chapter* { \c__fdu_def_name_notation_en_tl }
    \fdu_front_matter_header:n { \c__fdu_def_name_notation_en_tl }
    \addcontentsline { toc } { chapter }
      {
        \c__fdu_def_chapter_toc_en_format_tl
        \c__fdu_def_name_notation_en_tl
      }
    \group_begin:
      \cs_set_eq:NN \arraystretch
        \c__fdu_def_notation_line_stretch_en_tl
      \dim_set_eq:NN \LTpre  \c_zero_dim
      \dim_set_eq:NN \LTpost \c_zero_dim
      \begin{longtable} {#1}
  }
  {
      \end{longtable}
    \group_end:
  }
\bool_new:N \l__fdu_bibtex_bool
\tl_new:N \l__fdu_bib_style_tl
\tl_new:N \l__fdu_bib_gb_style_tl
\tl_new:N \l__fdu_cite_style_tl
\tl_new:N \l__fdu_bib_resource_tl
\keys_define:nn { fdu / style }
  {
    bibbackend .choice:,
    bibbackend .value_required:n = true,
    bibbackend / bibtex   .code:n =
      { \bool_set_true:N  \l__fdu_bibtex_bool },
    bibbackend / biblatex .code:n =
      { \bool_set_false:N \l__fdu_bibtex_bool },
    bibstyle .choice:,
    bibstyle .value_required:n = true,
    bibstyle / numerical   .code:n =
      {
        \tl_set:Nn  \l__fdu_bib_gb_style_tl { numerical  }
        \tl_clear:N \l__fdu_bib_style_tl
      },
    bibstyle / authoryear .code:n =
      {
        \tl_set:Nn  \l__fdu_bib_gb_style_tl { authoryear }
        \tl_clear:N \l__fdu_bib_style_tl
      },
    bibstyle / unknown    .code:n =
      { \tl_set_eq:NN \l__fdu_bib_style_tl \l_keys_value_tl },
    citestyle .code:n =
      {
        \bool_if:NTF \l__fdu_bibtex_bool
          { \__fdu_warning:n { cite-style-not-available } }
          { \tl_set:Nn \l__fdu_cite_style_tl {#1} }
      },
    bibresource .tl_set:N = \l__fdu_bib_resource_tl
  }
\__fdu_msg_new:nn { cite-style-not-available }
  { Option~ "citestyle"~ is~ not~ available~ in~ BibTeX. }
\ctex_at_end_preamble:n
  {
    \bool_if:NTF \l__fdu_bibtex_bool
      {
        \RequirePackage [ sort & compress ] { natbib }
        \__fdu_bibtex_setup:
        \NewDocumentCommand \printbibliography { o }
          {
            \exp_args:NV \bibliography \l__fdu_bib_resource_tl
            \IfValueT {#1}
              { \__fdu_warning:nn { invalid-option-in-bibtex } {#1} }
          }
      }
      {
        \__fdu_biblatex_setup:
        \RequirePackage [ backend = biber, hyperref = manual, natbib ]
          { biblatex }
        \exp_args:NV \addbibresource \l__fdu_bib_resource_tl
        \__fdu_biblatex_allow_url_break:
        \exp_args:Nnx \DefineBibliographyStrings { english }
          { bibliography = { \c__fdu_def_name_bib_en_tl } }
      }
  }
\__fdu_msg_new:nn { invalid-option-in-bibtex }
  { Option(s)~ "#1"~ are~ invalid~ in~ BibTeX. }
\cs_new:Npn \__fdu_bibtex_setup:
  {
    \tl_if_empty:NTF \l__fdu_bib_style_tl
      {
        \tl_if_eq:VnTF \l__fdu_bib_gb_style_tl { numerical }
          {
            \bibliographystyle { gbt7714-unsrt }
            \__fdu_set_cite_style_numerical:
          }
          {
            \tl_if_eq:VnT \l__fdu_bib_gb_style_tl { authoryear }
              {
                \bibliographystyle { gbt7714-plain }
                \__fdu_set_cite_style_author_year:
                \cs_set_eq:NN \cite \citep
              }
          }
      }
      { \exp_args:NV \bibliographystyle \l__fdu_bib_style_tl }
  }
\cs_new:Npn \__fdu_biblatex_setup:
  {
    \tl_if_empty:NTF \l__fdu_bib_style_tl
      {
        \tl_if_eq:VnTF \l__fdu_bib_gb_style_tl { numerical }
          { \PassOptionsToPackage { style = gb7714-2015 } }
          {
            \tl_if_eq:VnT \l__fdu_bib_gb_style_tl { authoryear }
              { \PassOptionsToPackage { style = gb7714-2015ay } }
          }
      }
      { \PassOptionsToPackage { style = \l__fdu_bib_style_tl } }
    { biblatex }
    \tl_if_empty:NF \l__fdu_cite_style_tl
      {
        \PassOptionsToPackage { citestyle = \l__fdu_bib_style_tl }
          { biblatex }
      }
  }
\cs_new:Npn \__fdu_biblatex_allow_url_break:
  {
    \int_set_eq:NN \c@biburlucpenalty  \c_one
    \int_set_eq:NN \c@biburlnumpenalty \c_one
    \int_set_eq:NN \c@biburllcpenalty  \c_one
  }
\cs_new:Npn \__fdu_set_cite_style_numerical:
  {
    \NAT@numberstrue \NAT@supertrue
    \cs_set:Npn \NAT@open  { [  }
    \cs_set:Npn \NAT@close { ]  }
    \cs_set:Npn \NAT@sep   { ,~ }
  }
\cs_new:Npn \__fdu_set_cite_style_author_year:
  {
    \NAT@numbersfalse
  }
\cs_set:Npn \bibsection
  {
    \chapter* { \bibname }
    \fdu_front_matter_header:n { \bibname }
    \addcontentsline { toc } { chapter }
      { \c__fdu_def_chapter_toc_format_tl \bibname }
  }
\NewDocumentCommand \hypersetup { m }
  { \fdu_hyperref_setup:n {#1} }
\cs_new_protected:Npn \fdu_hyperref_setup:n #1
  { \clist_gput_right:Nn \g__fdu_to_hyperref_clist {#1} }
\cs_new:Npn \__fdu_set_hyperlink_color_key:n #1
  {
    hyperlinkcolor / \clist_item:nn {#1} {1} .code:n =
      {
        \__fdu_define_hyperlink_color:nnn
          { \clist_item:nn {#1} {2} }
          { \clist_item:nn {#1} {3} }
          { \clist_item:nn {#1} {4} }
        \fdu_hyperref_setup:n
          {
            linkcolor = fdu@link, linkbordercolor = fdu@link,
            urlcolor  = fdu@url,  urlbordercolor  = fdu@url,
            citecolor = fdu@cite, citebordercolor = fdu@cite
          }
      },
  }
\cs_new_protected:Npn \__fdu_define_hyperlink_color:nnn #1#2#3
  {
    \definecolorset { HTML } { fdu@ } { }
      { link, #1; url, #2; cite, #3 }
  }
\keys_define:nx { fdu / style }
  {
    hyperlink .choice:,
    hyperlink .value_required:n = true,
    hyperlink / border .code:n = { },
    hyperlink / color  .code:n =
      { \fdu_hyperref_setup:n { colorlinks = true } },
    hyperlink / none   .code:n =
      { \fdu_hyperref_setup:n { hidelinks  = true } },
    hyperlinkcolor .choice:,
    hyperlinkcolor .value_required:n = true,
    \clist_map_function:nN
      {
        { autumn,    D70000, D75F00, AF8700 },
        { business,  D14542, 295497, 1F6E43 },
        { classic,   FF0000, 0000FF, 00FF00 },
        { default,   990000, 0000B2, 007F00 },
        { elegant,   961212, C31818, 9B764F },
        { fantasy,   FF4A19, FF3F94, 934BA1 },
        { material,  E91E63, 009688, 4CAF50 },
        { science,   CA0619, 389F9D, FF8920 },
        { summer,    00AFAF, 5F5FAF, 5F8700 },
        { graylevel, 616161, 616161, 616161 },
        { prl,       2D3092, 2D3092, 2D3092 }
      }
      \__fdu_set_hyperlink_color_key:n
  }
\cs_new:Npn \fdu_allow_url_break:
  {
    \cs_new:Npn \__fdu_add_url_break_points:
      { \tl_map_function:NN \c__fdu_url_break_points_tl \do }
    \__fdu_appto_cmd:Nn \UrlBreaks
      { \UrlOrds \__fdu_add_url_break_points: }
  }
\tl_const:Nn \c__fdu_url_break_points_tl
  {
    abcdefghijklmnopqrstuvwxyz
    ABCDEFGHIJKLMNOPQRSTUVWXYZ
    0123456789
  }
\ctex_at_end_preamble:n
  {
    \RequirePackage { hyperref }
    \hypersetup
      {
        bookmarksnumbered = true,
        pdftitle    = \l__fdu_info_title_en_tl,
        pdfauthor   = \l__fdu_info_author_en_tl,
        pdfkeywords = \l__fdu_info_keywords_en_clist,
        pdfcreator  = \c__fdu_def_name_pdf_creator_tl
      }
    \exp_args:NV \hypersetup \g__fdu_to_hyperref_clist
    \fdu_allow_url_break:
    \bool_if:NF \l__fdu_bibtex_bool { \BiblatexManualHyperrefOn }
  }
\ctex_at_end_package:nn { hyperref }
  {
    \pdfstringdefDisableCommands
      {
        \cs_set_eq:NN \fdu@kai \prg_do_nothing:
        \cs_set_eq:NN \quad    \c_space_tl
        \cs_set_eq:NN \qquad   \c_space_tl
      }
  }
\keys_define:nn { fdu }
  {
    info  .meta:nn = { fdu / info  } {#1},
    style .meta:nn = { fdu / style } {#1}
  }
\keys_set:nn { fdu }
  {
    style   / font           = times,
    style   / fontsize       = -4,
    style   / automakecover  = true,
    style   / logo           = { fudan-name.pdf },
    style   / logosize       = { 0.5 \textwidth },
    style   / hyperlink      = color,
    style   / hyperlinkcolor = default,
    style   / bibstyle       = numerical,
    info    / degree         = academic,
    info    / secretlevel    = none,
    info    / schoolid       = { 10246 },
    info    / date           = { \zhtoday },
    theorem / headerfont     = { \bfseries \upshape },
    theorem / bodyfont       = { \itshape },
    theorem / counter        = { chapter }
  }
\NewDocumentCommand \fdusetup { m }
  { \keys_set:nn { fdu } {#1} }
\newtheorem* { proof       } { \c__fdu_def_name_proof_en_tl      }
\newtheorem  { axiom       } { \c__fdu_def_name_axiom_en_tl      }
\newtheorem  { corollary   } { \c__fdu_def_name_corollary_en_tl  }
\newtheorem  { definition  } { \c__fdu_def_name_definition_en_tl }
\newtheorem  { example     } { \c__fdu_def_name_example_en_tl    }
\newtheorem  { lemma       } { \c__fdu_def_name_lemma_en_tl      }
\newtheorem  { theorem     } { \c__fdu_def_name_theorem_en_tl    }
\endinput
%%
%% End of file `fduthesis-en.cls'.
