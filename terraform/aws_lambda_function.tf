resource "aws_lambda_function" "faile_saga_pattern" {
  # For files larger than 10 MB, consider uploading using Amazon S3.
  # uncomment the lines in aws_s3_bucket*.tf
  # s3_bucket         = aws_s3_bucket.lambda_fn_upload.id
  # s3_key            = "lambda-fns/faileSagaPattern/function.zip"
  filename      = "../packages/faileSagaPattern/function.zip"
  function_name = "faileSagaPattern"
  role          = aws_iam_role.lambda_fn_role.arn
  handler       = "dist/handlers.faileSagaPattern"

  source_code_hash = filebase64sha256("../packages/faileSagaPattern/function.zip")

  #depends_on = [
  #  aws_s3_bucket_object.lab_file_upload
  #]

  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "pending_saga_pattern" {
  # For files larger than 10 MB, consider uploading using Amazon S3.
  # uncomment the lines in aws_s3_bucket*.tf
  # s3_bucket         = aws_s3_bucket.lambda_fn_upload.id
  # s3_key            = "lambda-fns/pendingSagaPattern/function.zip"
  filename      = "../packages/pendingSagaPattern/function.zip"
  function_name = "pendingSagaPattern"
  role          = aws_iam_role.lambda_fn_role.arn
  handler       = "dist/handlers.pendingSagaPattern"

  source_code_hash = filebase64sha256("../packages/pendingSagaPattern/function.zip")

  #depends_on = [
  #  aws_s3_bucket_object.lab_file_upload
  #]

  runtime = "nodejs12.x"
}

resource "aws_lambda_function" "completed_saga_pattern" {
  # For files larger than 10 MB, consider uploading using Amazon S3.
  # uncomment the lines in aws_s3_bucket*.tf
  # s3_bucket         = aws_s3_bucket.lambda_fn_upload.id
  # s3_key            = "lambda-fns/completedSagaPattern/function.zip"
  filename      = "../packages/completedSagaPattern/function.zip"
  function_name = "completedSagaPattern"
  role          = aws_iam_role.lambda_fn_role.arn
  handler       = "dist/handlers.completedSagaPattern"

  source_code_hash = filebase64sha256("../packages/completedSagaPattern/function.zip")

  #depends_on = [
  #  aws_s3_bucket_object.lab_file_upload
  #]

  runtime = "nodejs12.x"
}
