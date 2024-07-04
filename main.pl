use strict;
use feature 'say';

my $working_time = 0;

while (1) {
    print "開始時間 >> ";
    # 標準入力
    my $start_time = <STDIN>;

    print "終了時間 >> ";
    my $finish_time = <STDIN>;

    my ($start_hour, $start_minute) = split(/:/, $start_time);
    my ($finish_hour, $finish_minute) = split(/:/, $finish_time);

    $working_time += ($finish_hour + $finish_minute / 60) - ($start_hour + $start_minute / 60);

    print "まだ入力がありますか？ (y/n) ";
    my $input = <STDIN>;

    # 改行コードの削除
    chomp($input);

    if ($input ne "y") {
        # ループから抜ける
        last;
    }
}
# 標準出力 + 改行コード
say "勤務時間: ".$working_time;
