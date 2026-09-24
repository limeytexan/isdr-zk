{ runCommand, catalogs }:
let
  dep_python3Packages_srv_lookup = catalogs.brantley.python3Packages.srv-lookup;
in
runCommand "isdr-zk-client-1" { pname = "isdr-zk-client"; version = "1"; inputs = [ dep_python3Packages_srv_lookup ]; } ''
  sleep 6
  mkdir -p "$out/share"
  printf '%s\n' "isdr-zk-client" > "$out/share/name"
  for i in $inputs; do printf '%s\n' "$i"; done > "$out/share/inputs"
''
