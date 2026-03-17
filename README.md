# CORVIX

> **Çoklu Hizmet Koordinasyon Altyapısı** — Yazılım · Marketing · Medya · Dijital Hizmetler

---

## Proje Hakkında

Corvix, yazılım geliştirme, marketing, dijital medya ve hizmet satışını tek çatı altında toplayan kişisel bir SaaS/marka girişimidir.

**Alan Adı:** [corvix.com.tr](https://corvix.com.tr)  
**Hosting:** Hostinger VPS (72.61.137.168) + Coolify  
**Durum:** 🔄 Geliştirme aşamasında

---

## 📁 Klasör Yapısı

```
Corvix/
├── web/                    # Ana web sitesi
│   ├── index.html         # Corvix Coming Soon sayfası
│   ├── Dockerfile         # Coolify deployment
│   └── nginx.conf         # Nginx konfigürasyonu
├── .corvix/               # Proje hafızası & marka bilgileri
│   ├── brand.md          # Marka vizyon ve değerleri
│   ├── products.md       # Ürün & hizmetler
│   ├── strategy.md       # Strateji notları
│   └── tech-stack.md     # Teknik kararlar
├── .gitignore
└── README.md (bu dosya)
```

---

## 🚀 Başka Bilgisayarda Çalışmak

```bash
# Projeyi klonla
git clone <REPO_URL> Corvix
cd Corvix

# Web'i local'de test et (Docker ile)
docker build -t corvix-web ./web
docker run -p 8080:80 corvix-web
# → http://localhost:8080
```

---

## ⚙️ Deployment (Coolify)

1. Coolify paneline git: `http://72.61.137.168:8000`
2. Yeni uygulama → Git repo bağla → `web/` klasörünü kaynak seç
3. Domain: `corvix.com.tr` → SSL otomatik

---

## 📝 Geliştirme Notları

Marka bilgileri ve strateji notları için `.corvix/` klasörüne bak.  
Antigravity AI hafızası için Knowledge Item: `corvix_project`

---

*© 2026 Corvix. Tüm hakları saklıdır.*
