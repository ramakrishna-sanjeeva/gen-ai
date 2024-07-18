**Streamlit application template for deployment in containerized environment** 

This is a reference implementation of Streamlit application with the application code externalized.  During the startup of the container, the application app.py is downloaded from S3 and Streamlit application initialized. 

*This approach is suitable only in dev/lower environment.* 

The container would require access to AWS S3 bucket to load the code. As such access via role needs to be made available. 

