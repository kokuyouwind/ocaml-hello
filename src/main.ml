(* UNIXモジュールを使ってWebサーバを作る。
   ポート番号はコマンドライン引数経由で受けとる。 *)
open Unix

let f _ out =
  output_string out "HTTP/1.0 200 OK\n\nhello,world"

let _ =
  let port =
    int_of_string Sys.argv.(1)
  in
  establish_server f (ADDR_INET (inet_addr_of_string "0.0.0.0", port))
