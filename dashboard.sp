dashboard "test" {

  table {
    sql = <<EOQ
      select 'Hello world' as greeting
    EOQ
  }
  
}
