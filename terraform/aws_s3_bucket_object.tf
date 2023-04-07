# resource "aws_s3_bucket_object" "faile_saga_pattern_file_upload" {
#   bucket  = aws_s3_bucket.lambda_fn_upload.id
#   key     = "lambda-fns/faileSagaPattern/function.zip"
#   source  = "../packages/faileSagaPattern/function.zip"
#   etag    = filemd5("../packages/faileSagaPattern/function.zip")
# }

# resource "aws_s3_bucket_object" "pending_saga_pattern_file_upload" {
#   bucket  = aws_s3_bucket.lambda_fn_upload.id
#   key     = "lambda-fns/pendingSagaPattern/function.zip"
#   source  = "../packages/pendingSagaPattern/function.zip"
#   etag    = filemd5("../packages/pendingSagaPattern/function.zip")
# }

# resource "aws_s3_bucket_object" "completed_saga_pattern_file_upload" {
#   bucket  = aws_s3_bucket.lambda_fn_upload.id
#   key     = "lambda-fns/completedSagaPattern/function.zip"
#   source  = "../packages/completedSagaPattern/function.zip"
#   etag    = filemd5("../packages/completedSagaPattern/function.zip")
# }
