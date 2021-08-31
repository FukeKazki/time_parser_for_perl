use strict;
use feature 'say';

my $working_time = 0;

while (1) {
    print "開始時間 >> ";
    # 標準入力
    my $start_time = <STDIN>;

    print "終了時間 >> ";
    my $finish_time = <STDIN>;

    # 配列は「＠」
    my @start = split(/:/, $start_time);
    my @finish = split(/:/, $finish_time);

    $working_time += (@finish[0] + @finish[1] / 60) - (@start[0] + @start[1] / 60);

    print "まだ入力がありますか？ (y/n) ";
    my $input = <STDIN>;

    # 改行コードの削除
    chomp($input);

    # 文字列の一致
    if ($input eq "n") {
        # ループから抜ける
        last;
    }
}
# 標準出力 + 改行コード
say "勤務時間: ".$working_time;