dashboard "test" {

  container {
    card {
      sql = <<-EOQ
with associated_sg as (
  select
    sg ->> 'GroupId' as sg_id,
    sg ->> 'GroupName' as sg_name
  from
    aws_ec2_network_interface,
    jsonb_array_elements(groups) as sg
)
select
  s.arn,
  s.vpc_id,
  s.region,
  s.account_id
from
  aws_vpc_security_group s
  left join associated_sg a on s.group_id = a.sg_id
where
  a.sg_id is null
      EOQ
      width = 2
    } 
    card {


    }
  }
  table {
    sql = <<EOQ
with associated_sg as (
  select
    sg ->> 'GroupId' as sg_id,
    sg ->> 'GroupName' as sg_name
  from
    aws_ec2_network_interface,
    jsonb_array_elements(groups) as sg
)
select
  s.arn,
  s.vpc_id,
  s.region,
  s.account_id
from
  aws_vpc_security_group s
  left join associated_sg a on s.group_id = a.sg_id
where
  a.sg_id is null
    EOQ
  }
  
}
