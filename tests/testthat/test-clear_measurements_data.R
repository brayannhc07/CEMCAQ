describe("clear_measurements_data", {

  it("Devuelve un valor sin modificaciones si es valido", {
    expect_equal(as.numeric(clear_measurements_data(1)), 1)
  })

  it("Dar un numero invalido devuelve ND", {
    expect_equal(clear_measurements_data(-9999), "ND")
  })

  it("dar un numero negativo devuelve NN", {
    expect_equal(clear_measurements_data(-1), "NN")
  })

  it("dar un numero igual a 0 devuelve VZ", {
    expect_equal(clear_measurements_data(0), "VZ")
  })

  it("dar un numero menor a un limite dado, devuelve IR", {
    expect_equal(clear_measurements_data(1, min_value = 5), "IR")
  })

  it("dar un numero mayor a un limite dado, devuelve IR", {
    expect_equal(clear_measurements_data(6, max_value = 5), "IR")
  })

  it("dar numeros fuera de los limites datos, devuelven IR", {
    expect_equal(clear_measurements_data(c(1, 6), min_value = 2, max_value = 5), c("IR", "IR"))
  })

  it("Generar un error si el limite min es mayor al limite maximo", {
    expect_error(
      clear_measurements_data(1, min_value = 0, max_value = -1),
      "Max value must be greater than min value"
    )
  })
})