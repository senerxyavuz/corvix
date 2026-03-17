# Corvix — Teknik Kararlar & Stack

> Son güncellenme: 2026-03-17

---

## Hosting Altyapısı

| Bileşen | Teknoloji | Detay |
|---------|-----------|-------|
| Hosting | Hostinger VPS | Ubuntu |
| Orchestration | Coolify | http://72.61.137.168:8000 |
| Web Server | Nginx (Alpine) | Docker container içinde |
| SSL | Let's Encrypt | Coolify otomatik yönetir |
| Domain | corvix.com.tr | Hostinger DNS |

## Deployment Akışı

```
Local → Git Push → GitHub/GitLab → Coolify Auto Deploy → VPS → corvix.com.tr
```

## Web Sitesi (Şu An)

| Bileşen | Seçim | Gerekçe |
|---------|-------|---------|
| Framework | Vanilla HTML/CSS/JS | Basit, hızlı, CDN friendly |
| Yazı Tipi | Inter (Google Fonts) | Modern, okunabilir |
| Build | Docker (Nginx) | Coolify uyumlu |
| i18n | data-attribute JS | Basit TR/EN desteği |

## Gelecek Teknik Kararlar (Henüz Verilmedi)

- [ ] Backend: Node.js / Python / PHP?
- [ ] Database: Postgres / MySQL / Supabase?
- [ ] Frontend Framework: React / Next.js / Vue?
- [ ] Email: Resend / Mailgun / AWS SES?
- [ ] Analytics: GA4 / Plausible / Umami?
- [ ] CMS: Strapi / Directus / Sanity?
- [ ] Payment: Stripe / İyzico / PayTR?

---

## DNS Ayarları Yapılacak

```
Hostinger DNS Panel:
A kaydı: @      → 72.61.137.168
A kaydı: www    → 72.61.137.168
```

## Git Repository
*Henüz oluşturulmadı - kullanıcı oluşturacak*

Önerilen: GitHub private repo → Coolify webhook ile auto-deploy
