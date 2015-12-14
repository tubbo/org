#!/usr/bin/env bats

@test "creates checksums.dat" {
  bin/org commit
  [ $? = 0 ]
}
