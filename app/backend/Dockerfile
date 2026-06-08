FROM python:3.11-slim

WORKDIR /app

RUN useradd -m appuser

COPY requirements.txt ./

# 🔥 FIX HERE
RUN pip install --upgrade pip setuptools wheel && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
