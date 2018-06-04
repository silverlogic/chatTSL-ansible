# PG Dump Backup

## Example Configuration

```yaml
pg_dump_backup_aws_access_key_id: 'blahblah'
pg_dump_backup_aws_secret_access_key: 'blahblah'
pg_dump_backup_aws_s3_bucket: 'db-backups'
pg_dump_backup_database_name: 'project-name'
pg_dump_backup_profiles:
    - name: 'hourly'
      s3_bucket_prefix: 'hourly/'
      schedule_minute: '0'
      schedule_hour: '*'
      schedule_day: '*'
      schedule_month: '*'
      schedule_weekday: '*'
    - name: 'daily'
      s3_bucket_prefix: 'daily/'
      schedule_minute: '0'
      schedule_hour: '0'
      schedule_day: '*'
      schedule_month: '*'
      schedule_weekday: '*'
```
