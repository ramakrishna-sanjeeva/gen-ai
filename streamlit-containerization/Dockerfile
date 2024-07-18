FROM python:3.12.4

# Upgrade pip and install requirements
COPY requirements.txt requirements.txt
RUN pip install -U pip
RUN pip install -r requirements.txt

# Copy app code and set working directory
RUN mkdir /app
COPY initialize.sh /app/initialize.sh
RUN chmod +x /app/initialize.sh
WORKDIR /app

# Add non root user
RUN adduser --system --no-create-home streamlituser
RUN chown -R streamlituser:users /app
USER streamlituser

# Expose port you want your app on
EXPOSE 8080

# Run
ENTRYPOINT ["/bin/bash", "/app/initialize.sh"]