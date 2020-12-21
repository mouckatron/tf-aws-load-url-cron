# tf-aws-load-url-cron
Use AWS Lambda and Cloudwatch Events to periodically load a URL

## Example

```terraform
module "nest" {
  source = "github.com/mouckatron/tf-aws-load-url-cron.git"
  
  appname = "nest"  # used for tagging
  url = "http://my.url/page.php"
  every_x_minutes = 10
}
```
