#!/usr/bin/env bats

@test "adds a file with the configured title" {
  bin/org add file.org -t 'Title'
  [ $? = 0 ]
}

@test "adds a file with a generated title" {
  bin/org add file.org
  [ $? = 0 ]
}
