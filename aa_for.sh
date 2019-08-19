#!/bin/bash

# 変数を使用し、キーボードから入力した文字列を
# 表示させるスクリプトを作成せよ。
# 入力した文字を格納する変数aを使用すること

# echo "入力"
# read a
# 
# echo "出力"
# echo "$a"


# 「for」文を使用して文字列
# 「one two three」をリスト表示してみよう。

#for i in one two three
#do
# echo $i
#done


#「while」文と「read」文を組み合わせて
#「自分のファイル」の中身を一行づつ表示してみよう。

#data=`cat $0`
#count="0"
#
#while read line
#do
#
# count=$(($count + 1 ))
# echo "$count : $line"
#done << END
#$data
#END


#「hello_world」と表示する
#「myfunc」という関数を作成して実際に
#「myfunc」を呼出してみよう。

#function myfnc ( ) {
# echo "Hello World!"
#}
#
#myfnc

# for文を使用し、１週間の間で、
# 何日忙しいか表示させるスクリプトを作成せよ。
# 月曜日から日曜日にかけてyes / no で
# 入力できるようにすること。

#busyday=0
#
#for week in 月 火 水 木 金 土 日;
#do 
#
# echo "$week曜日は忙しかったですか？(y/n)"
# read busy
#
#  case $busy in
#   y) busyday=$((busyday + 1));;
#   n) continue;;
#  esac
#
#done
#
#echo "$busyday日、忙しい日がありました"


#以下2つのlsコマンド(正常終了するパターンとエラー終了するパターン)を
#シェルで実行させ、両方の結果をshell_02.tmpに出力させること
#ls -l
#ls -l aaa


#lsok=`ls -l`
#lserr=`ls -l aaa`
#
#echo -e "これは標準出力です\n$lsok"  >> shell_02.tmp 2>&1
#echo -e "\nこれはエラー出力です\n $lserr" >> shell_02.tmp 2>&1


#実行日の日付（YYYYMMDDの形式）を
#コマンドで取得していったん変数DATEに代入し、
#その変数の値を表示する


#DATE=$(date '+%y%m%d')
#echo ${DATE}


#シェルを実行した際に、引数付きで実行すると「引数あり」、
#引数なしで実行すると「引数なし」と表示されるようにする。
#またデバッグモードでもシェルを実行してみる


#count=0
#
#if [ ${count} -eq 0 ];then
# echo "引数あり"
#else
# echo "引数なし"
#fi


#ファイルのフルパスを引数で指定して、
#ファイルが存在したら「ファイルあり」と出力させ、
#存在しなかったら「ファイルなし」と出力させる


#filePass=$(basename ${0})
#
#if [ "${filePass}" = "aruga_for01.sh" ];then
# echo "ファイルあり！ファイルありー！"
#else
# echo "ファイルなし！ファイルなしー！"
#fi
#
#exit


#引数に1か2かそれ以外を与えてシェルを実行した際に、それぞれ以下のような処理をすること
#引数が1 → 「引数は1です」と表示
#引数が2 → 「引数は2です」と表示
#引数がそれ以外 → 「正しい引数を入力してください」を表示
#※case文を使うこと

#read a
#case $a in
#  1) echo "1" ;;
#  2) echo "2" ;;
#  *) echo "O" ;;
#esac


#引数に文字列を1つ以上与えて、
#ループ処理で全ての引数の文字列をechoで表示させる
#※for文を使うこと

#for i in `seq 10`
#do
#
#echo $i
#
#done


#while文で3回ループさせて以下のように出力させる
#（出力結果）
#1回目
#2回目
#3回目

#count=1
#
#while :
#do
#
#if [ $count -eq 1 ];then 
#echo "$count回目"
#count=2
#elif [ $count -eq 2 ];then
#echo "$count回目"
#count=3
#else
#echo "$count回目"
#break
#fi
#
#done
#
#
#count=1
#while [ $count -le 3 ]
#do
#
#echo "$count回目"
#count=$((count + 1))
#
#done


#while文を無限ループで実行し、3秒おきにdateコマンドを実行させる

while :
do

ls
sleep 3

done



