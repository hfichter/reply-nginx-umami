Nginx proxy for umami cloud requests hosted on google cloud run. Couldn't find it on internet so making it public. Add a star if it saves you some time :) 

Helps bypassing the tracker blockers. 


commands:

```bash
docker build -t gcr.io/<your-project>/reply-nginx-umami .
docker push gcr.io/<your-project>/reply-nginx-umami
gcloud run deploy reply-nginx-umami   --image gcr.io/<your-project>/reply-nginx-umami   --platform managed   --region europe-west9   --allow-unauthenticated
```
