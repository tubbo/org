#!/usr/bin/env bats

@test "the command works" {
  bin/org-command
  [ $? = 0 ]
}
