#!/usr/bin/env bats

@test "creates the initial index and checksums file" {
  bin/org init
  [ $? = 0 ]
}
