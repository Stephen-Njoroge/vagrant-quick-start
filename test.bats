load test_helper

setup() {
  create_tmp_dir
}

teardown() {
  delete_tmp_dir
  rm -rf /tmp/*-called
  cleanup_virtual_block_device
}

@test "create a directory named 'testing'" {
  run_command mkdir testing

  [ "$status" -eq 0 ]
  [ -d "${tmp_dir}/testing" ]
}
