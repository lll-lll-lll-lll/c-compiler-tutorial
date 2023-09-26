ARM アーキテクチャのアセンブリ言語
star:s, end:e

```.s
	#1 s .sectionから.build_versionまででプログラムのセクション情報が設定されている。
	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	#1 e
	#2  .global宣言はこの関数を外部から呼び出せることを宣言している。
	.globl	_plus                           ; -- Begin function plus
	# 2バイトの境界にアラインメントを調整
	.p2align	2
	# _plusはplus関数のラベルでこの関数のエントリポイントを示している
	_plus:                                  ; @plus
	.cfi_startproc
	# plus関数の本体
; %bb.0:
	# add命令はw0とw1の値を足して、結果をw0に格納する。
	add	w0, w1, w0
	# returnを意味する
	ret
	# コンパイラによるデバッグ終了
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	# アラインメントを2バイトで調整
	.p2align	2
_main:                                  ; @main
	# コンパイラによるデバッグ情報の開始
	.cfi_startproc
	# main関数の本体
; %bb.0:
	mov	w0, #7
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols

```

ret 命令が実行されるとスタック(メモリ内の特定の領域)から呼び出し元のアドレスをポップし(取り出し)、そのアドレスにジャンプルすることによって戻る。スタックは通常呼び出し元の青 d レスや一時的なデータを保存するために使用される。つまり、関数から呼び出し元に戻るための手段である。

mov 命令: レジスタからレジスタへのデータのコピー。
