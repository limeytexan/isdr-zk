{ runCommand, catalogs }:
let
  dep_python3Packages_srv_lookup = catalogs.brantley.python3Packages.srv-lookup;
in
runCommand "flox-isdr-client-1" { pname = "flox-isdr-client"; version = "1"; inputs = [ dep_python3Packages_srv_lookup ]; } ''
  sleep 3
  mkdir -p "$out/share"
  printf '%s\n' "python3Packages.flox-isdr-client" > "$out/share/name"
  for i in $inputs; do printf '%s\n' "$i"; done > "$out/share/inputs"
''
