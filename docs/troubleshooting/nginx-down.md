# troubleshooting Nginx Down

# Troubleshooting Report: Nginx Service Down

**Date:** 2025-10-27  
**Author:** Abdus Samee Mohammed  

---

## 🧩 Issue Summary
The web application hosted on the EC2 instance was not reachable via the browser. Investigation revealed that the Nginx service, which serves the web application on port 80, was stopped.

---

## ⚙️ Impact
- The application became unavailable to all users.
- HTTP requests to the EC2 public IP returned “This site can’t be reached.”
- All inbound traffic on port 80 failed.

---

## 🕵️ Detection
The issue was detected when accessing the application through the browser resulted in a connection failure.  
To verify, the service status was checked:
```bash
sudo systemctl status nginx