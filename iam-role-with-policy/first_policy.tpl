{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
	    	"s3:List*",
		"s3:Get*",
		"s3:Put*"
	    ],
            "Resource": [
	    	"arn:aws:s3:::bucket-2",
		"arn:aws:s3:::bucket-2/*"
	    ]
        }
    ]
}
