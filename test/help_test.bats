#!/usr/bin/env bats

@test "shows the help text" {
  bin/org help
  [ $? = 0 ]
}
