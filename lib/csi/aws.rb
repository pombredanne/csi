# frozen_string_literal: true
module CSI
  # This file, using the autoload directive loads SP aws
  # into memory only when they're needed. For more information, see:
  # http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html
  module AWS
    autoload :ACM, 'csi/aws/acm'
    autoload :APIGateway, 'csi/aws/api_gateway'
    autoload :ApplicationAutoScaling, 'csi/aws/application_auto_scaling'
    autoload :ApplicationDiscoveryService, 'csi/aws/application_discovery_service'
    autoload :AutoScaling, 'csi/aws/auto_scaling'
    autoload :CloudFormation, 'csi/aws/cloud_formation'
    autoload :CloudFront, 'csi/aws/cloud_front'
    autoload :CloudHSM, 'csi/aws/cloud_hsm'
    autoload :CloudSearch, 'csi/aws/cloud_search'
    autoload :CloudSearchDomain, 'csi/aws/cloud_search_domain'
    autoload :CloudTrail, 'csi/aws/cloud_trail'
    autoload :CloudWatch, 'csi/aws/cloud_watch'
    autoload :CloudWatchEvents, 'csi/aws/cloud_watch_events'
    autoload :CloudWatchLogs, 'csi/aws/cloud_watch_logs'
    autoload :CodeCommit, 'csi/aws/code_commit'
    autoload :CodeDeploy, 'csi/aws/code_deploy'
    autoload :CodePipeline, 'csi/aws/code_pipeline'
    autoload :CognitoIdentity, 'csi/aws/cognito_identity'
    autoload :CognitoIdentityProvider, 'csi/aws/cognito_identity_provider'
    autoload :CognitoSync, 'csi/aws/cognito_sync'
    autoload :ConfigService, 'csi/aws/config_service'
    autoload :DataPipeline, 'csi/aws/data_pipleline'
    autoload :DatabaseMigrationService, 'csi/aws/database_migration_service'
    autoload :DeviceFarm, 'csi/aws/device_farm'
    autoload :DirectConnect, 'csi/aws/direct_connect'
    autoload :DirectoryService, 'csi/aws/directory_service'
    autoload :DynamoDB, 'csi/aws/dynamo_db'
    autoload :DynamoDBStreams, 'csi/aws/dynamo_db_streams'
    autoload :EC2, 'csi/aws/ec2'
    autoload :ECR, 'csi/aws/ecr'
    autoload :ECS, 'csi/aws/ecs'
    autoload :EFS, 'csi/aws/efs'
    autoload :EMR, 'csi/aws/emr'
    autoload :ElastiCache, 'csi/aws/elasti_cache'
    autoload :ElasticBeanstalk, 'csi/aws/elastic_beanstalk'
    autoload :ElasticLoadBalancing, 'csi/aws/elastic_load_balancing'
    autoload :ElasticLoadBalancingV2, 'csi/aws/elastic_load_balancing_v2'
    autoload :ElasticTranscoder, 'csi/aws/elastic_transcoder'
    autoload :ElasticsearchService, 'csi/aws/elasticsearch_service'
    autoload :Firehose, 'csi/aws/firehose'
    autoload :GameLift, 'csi/aws/game_lift'
    autoload :Glacier, 'csi/aws/glacier'
    autoload :IAM, 'csi/aws/iam'
    autoload :ImportExport, 'csi/aws/import_export'
    autoload :Inspector, 'csi/aws/inspector'
    autoload :IoT, 'csi/aws/iot'
    autoload :IoTDataPlane, 'csi/aws/iot_data_plane'
    autoload :KMS, 'csi/aws/kms'
    autoload :Kinesis, 'csi/aws/kinesis'
    autoload :KinesisAnalytics, 'csi/aws/kinesis_analytics'
    autoload :Lambda, 'csi/aws/lambda'
    autoload :LambdaPreview, 'csi/aws/lambda_preview'
    autoload :MachineLearning, 'csi/aws/machine_learning'
    autoload :MarketplaceCommerceAnalytics, 'csi/aws/marketplace_commerce_analytics'
    autoload :MarketplaceMetering, 'csi/aws/marketplace_metering'
    autoload :OpsWorks, 'csi/aws/ops_works'
    autoload :RDS, 'csi/aws/rds'
    autoload :Redshift, 'csi/aws/redshift'
    autoload :Route53, 'csi/aws/route53'
    autoload :Route53Domains, 'csi/aws/route53_domains'
    autoload :S3, 'csi/aws/s3'
    autoload :SES, 'csi/aws/ses'
    autoload :SNS, 'csi/aws/sns'
    autoload :SQS, 'csi/aws/sqs'
    autoload :SSM, 'csi/aws/ssm'
    autoload :STS, 'csi/aws/sts'
    autoload :SWF, 'csi/aws/swf'
    autoload :ServiceCatalog, 'csi/aws/service_catalog'
    autoload :SimpleDB, 'csi/aws/simple_db'
    autoload :Snowball, 'csi/aws/snowball'
    autoload :StorageGateway, 'csi/aws/storage_gateway'
    autoload :Support, 'csi/aws/support'
    autoload :WAF, 'csi/aws/waf'
    autoload :Workspaces, 'csi/aws/workspaces'

    # Display a List of Every CSI Plugin

    public

    def self.help
      constants.sort
    end
  end
end