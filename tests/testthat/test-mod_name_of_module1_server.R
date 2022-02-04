testServer(mod_name_of_module1_server, {
  session$setInputs(sayisec = 10)
  expect_equal(aaa$value, 5550)
})
