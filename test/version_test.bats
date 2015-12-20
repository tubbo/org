#!/usr/bin/env bats

@test "show the installed version" {
  latest_tag=$(git describe --abbrev=0 --tags);
  result=$(bin/org-version);
  [ $result = $latest_tag ]
}
