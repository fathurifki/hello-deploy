# Base image and PDM installation
FROM python:3.11.9-bullseye AS base
RUN pip install pdm
RUN pdm install

# Expose port and run server
EXPOSE 8000
CMD ["pdm", "run", "src/manage.py", "runserver", "0.0.0.0:8000"]