#!/bin/sh
 
echo "Copying artifacts from S3"
aws s3 cp s3://<s3-bucket>/<prefix>/app.py /app/app.py

echo "Start Streamlit application"
python -m streamlit run chatbot.py --server.port=8080 --server.address=0.0.0.0