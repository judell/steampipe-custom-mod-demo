dashboard "test" {

  container {
    card {
      sql = <<-EOQ
        select
          count(*) as "Total Buckets"
        from
          aws_s3_bucket
      EOQ
      width = 2
    } 
  }
  table {
    sql = <<EOQ
      select 'Hello world' as greeting
    EOQ
  }
  
}
