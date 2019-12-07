resource "aws_s3_bucket" "b" {
    bucket = "staticsite12345.xyz.com"
    region = "us-west-2"
    acl = "public-read"
    policy = "${file("s3Policy.json")}"

    website {
        index_document = "index.html"
        error_document = "error.html"

#         routing_rules = "<<EOF"
#     }
# [{
#     "Condition": {
#         "KeyPrefixEquals": "docs/"
#     },
#     "Redirect": {
#         "ReplaceKeyPrefixWith": "documents/"
#     }
# }]
# EOF
}
}