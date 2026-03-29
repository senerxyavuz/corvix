# CORVIX — Proje Tanıtım & Geliştirme Günlüğü

> **Bu dosya Corvix projesinin "yaşayan hafızası"dır.**  
> Nerede çalışılırsa çalışılsın, her geliştirici yaptığı değişiklikleri buraya ekler.  
> Amaç: Projenin ne olduğunu, nereye gittiğini ve ne yapıldığını tek bir yerde toplamak.

---

## 📋 İçindekiler

1. [Corvix Nedir?](#corvix-nedir)
2. [Marka Kimliği](#marka-kimliği)
3. [Teknik Altyapı](#teknik-altyapı)
4. [Proje Yapısı](#proje-yapısı)
5. [Mevcut Durum](#mevcut-durum)
6. [Ürün & Hizmet Yol Haritası](#ürün--hizmet-yol-haritası)
7. [Geliştirme Günlüğü](#geliştirme-günlüğü)
8. [Katkıda Bulunma Kuralları](#katkıda-bulunma-kuralları)

---

## 🏢 Corvix Nedir?

**Corvix**, yazılım geliştirme, dijital marketing, medya üretimi ve dijital hizmetleri tek çatı altında toplayan bir **kişisel SaaS/marka girişimi**dir.

### Vizyon
> Çoklu hizmetlerin, bağımsız operasyonel yapıların ve dağıtık varlıkların tek bir matrix tabanlı koordinasyon sistemi içerisinde birleşmesini sağlayan bir altyapı.

### Tanım
**Corvix** = Çoklu hizmetlerin ve farklı operasyonel varlıkların birleşik bir matrix sistemi içerisinde koordine edildiği altyapı katmanı.

### Sloganlar
| Dil | Ana Slogan | Alt Başlık |
|-----|-----------|------------|
| 🇹🇷 TR | Çoklu Hizmet Koordinasyon Altyapısı | Operasyonel Koordinasyon Katmanı |
| 🇬🇧 EN | Multi-Service Coordination Infrastructure | Operational Coordination Layer |

---

## 🎨 Marka Kimliği

### Renk Paleti
| Kullanım | Renk | Kod |
|----------|------|-----|
| Birincil (Arka plan) | ⬛ Tam Siyah | `#000000` |
| İkincil (Metin) | ⬜ Beyaz | `#FFFFFF` |
| Vurgu (Alt metinler) | 🔲 Donuk Beyaz | `rgba(255,255,255,0.65)` |
| Efekt | 🔳 Neon Işıma | Beyaz radial gradient |

### Tipografi
- **Yazı Tipi:** Inter (Google Fonts)
- **Logo:** 900 weight, büyük harf, `0.3em` letter-spacing
- **Başlıklar:** 700 (Bold)
- **Gövde metni:** 400 (Normal)
- **İnce metinler:** 300 (Light)

### Tasarım İlkeleri
- 🌑 **Dark mode first** — Karanlık mod birincil
- ✂️ **Minimalist** — Gereksiz eleman yok
- 💎 **Premium** — Kurumsal ve güçlü hissettirmeli
- 🎬 **Animasyonlu** — Fade-in, yukarıdan kayarak belirme efektleri
- 🌐 **İki dilli** — TR / EN destek (data-attribute tabanlı)

---

## ⚙️ Teknik Altyapı

### Hosting & Deployment

| Bileşen | Teknoloji | Detay |
|---------|-----------|-------|
| **Sunucu** | Hostinger VPS | Ubuntu, IP: `72.61.137.168` |
| **Orkestrasyon** | Coolify | Self-hosted PaaS, `http://72.61.137.168:8000` |
| **Web Server** | Nginx (Alpine) | Docker container içinde |
| **SSL** | Let's Encrypt | Coolify otomatik yönetir |
| **Domain** | corvix.com.tr | Hostinger DNS |
| **Git** | GitHub | `senerxyavuz/corvix` (private) |

### Deployment Akışı
```
Geliştirici → Git Push → GitHub → Coolify Webhook → Docker Build → VPS → corvix.com.tr
```

### DNS Yapılandırması (Aktif)
| Tür | Ad | Yönlendirme | TTL |
|-----|-----|-------------|-----|
| A | @ | 72.61.137.168 | 300 |
| CNAME | www | corvix.com.tr | 300 |

**Coolify Domain Ayarı:** `https://corvix.com.tr,https://www.corvix.com.tr`  
**Direction:** Allow www & non-www

### Mevcut Teknoloji (Web Sitesi v1 — Coming Soon)
| Bileşen | Seçim | Gerekçe |
|---------|-------|---------|
| Frontend | Vanilla HTML/CSS/JS | Basit, hızlı, CDN uyumlu |
| Yazı Tipi | Inter (Google Fonts) | Modern, okunabilir |
| Container | Docker (Nginx Alpine) | Coolify uyumlu |
| i18n | data-attribute JS | Minimal TR/EN desteği |

### Gelecekte Karar Verilecek Teknolojiler
- [ ] Frontend Framework: React / Next.js / Vue?
- [ ] Backend: Node.js / Python?
- [ ] Database: PostgreSQL / Supabase?
- [ ] Email: Resend / Mailgun?
- [ ] Analytics: GA4 / Plausible / Umami?
- [ ] CMS: Strapi / Directus?
- [ ] Payment: Stripe / İyzico / PayTR?

---

## 📁 Proje Yapısı

```
corvix/
├── CORVIX.md              ← 📌 BU DOSYA — Proje tanıtım & günlük
├── README.md              ← Teknik kurulum rehberi
├── Dockerfile             ← Root Dockerfile (Coolify için)
├── .gitignore             ← Git takip dışı dosyalar
│
├── web/                   ← 🌐 Ana web sitesi
│   ├── index.html         ← Coming Soon sayfası (TR/EN, responsive)
│   ├── nginx.conf         ← Nginx sunucu yapılandırması
│   ├── Dockerfile         ← Web-specific Docker imajı
│   ├── site.webmanifest   ← PWA manifest (Android/Chrome)
│   ├── browserconfig.xml  ← Microsoft Edge/Windows tile config
│   └── assets/            ← 🖼️ Statik dosyalar
│       ├── favicon.ico            ← Çoklu boyut ICO (16+32+48)
│       ├── favicon-16x16.png      ← Tarayıcı sekmesi (küçük)
│       ├── favicon-32x32.png      ← Tarayıcı sekmesi (standart)
│       ├── favicon-48x48.png      ← Tarayıcı sekmesi (büyük)
│       ├── apple-touch-icon.png   ← iOS ana ekran (180x180)
│       ├── android-chrome-*.png   ← Android Chrome (192+512)
│       ├── mstile-150x150.png     ← Windows tile
│       └── og-image.png           ← Sosyal medya paylaşım görseli
│
└── .corvix/               ← 🧠 Marka hafızası & strateji
    ├── brand.md           ← Marka vizyonu, renkler, tipografi
    ├── products.md        ← Ürünler & hizmetler (taslak)
    ├── strategy.md        ← Kısa/orta/uzun vade hedefler
    └── tech-stack.md      ← Teknik kararlar ve altyapı
```

---

## 📊 Mevcut Durum

### ✅ Tamamlananlar
- [x] `corvix.com.tr` alan adı satın alındı (Hostinger, 2027-03-17'ye kadar geçerli)
- [x] Hostinger VPS + Coolify kurulumu yapıldı
- [x] GitHub repo oluşturuldu (`senerxyavuz/corvix`)
- [x] Coming Soon sayfası tasarlandı (TR/EN, dark mode, animasyonlu)
- [x] Docker + Nginx ile Coolify deployment kuruldu
- [x] DNS ayarları yapıldı (A + CNAME kayıtları)
- [x] SSL sertifikası aktif (Let's Encrypt)
- [x] www ve non-www yönlendirmesi düzeltildi
- [x] Favicon seti eklendi (tüm platformlar: iOS, Android, Windows, tarayıcılar)
- [x] Responsive tasarım düzeltildi (320px-1920px tam uyum)
- [x] Dil seçici UX/UI iyileştirildi (header'a taşındı, erişilebilirlik)
- [x] OG/Twitter meta etiketleri eklendi (sosyal medya paylaşımları)
- [x] PWA manifest + browserconfig.xml eklendi
- [x] Dil tercihi localStorage ile hatırlanır

### 🔄 Devam Edenler
- [ ] Markaa brief'i hazırlanacak (hedef kitle, tonlama, rakipler)
- [ ] Ürünler ve hizmetler netleştirilecek
- [ ] Tam web sitesi geliştirilecek (React + Node.js planlanıyor)

### 📅 Hedefler
| Dönem | Hedef | Durum |
|-------|-------|-------|
| Q1 2026 | Domain + Hosting + Coming Soon | ✅ Tamamlandı |
| Q2 2026 | Marka brief + Tam web sitesi | 🔄 Başlanacak |
| Q3-Q4 2026 | Hizmet lansmanı + İlk müşteriler | 📋 Planlanacak |

---

## 🛒 Ürün & Hizmet Yol Haritası

### Corvix Hizmet Kategorileri (Taslak)

| Kategori | Açıklama | Durum |
|----------|----------|-------|
| 💻 Yazılım Hizmetleri | Web geliştirme, SaaS, otomasyon | 📋 Tanımlanacak |
| 📈 Marketing Hizmetleri | Dijital reklam, SEO, sosyal medya | 📋 Tanımlanacak |
| 🎬 Medya & İçerik | Video, grafik, içerik üretimi | 📋 Tanımlanacak |
| 🌐 Dijital Hizmetler | Alan adı, hosting, danışmanlık | 📋 Tanımlanacak |

> **Not:** Fiyatlandırma modeli, hedef bölgeler, hedef sektörler ve satış kanalları henüz belirlenmedi. Marka brief hazırlandıkça bu bölüm güncellenecek.

---

## 📝 Geliştirme Günlüğü

> Her değişiklik buraya tarih sırasıyla eklenir.  
> Format: `### YYYY-MM-DD — Başlık` + değişiklik maddeleri

---

### 2026-03-17 — Proje Başlangıcı
- **Yapılan:** Corvix proje yapısı kuruldu
- **Detaylar:**
  - `web/index.html` — Coming Soon sayfası (TR/EN, dark mode, animasyonlu)
  - `web/nginx.conf` — Nginx konfigürasyonu
  - `web/Dockerfile` — Docker imajı
  - `.corvix/` — Marka hafızası klasörü oluşturuldu (brand, products, strategy, tech-stack)
  - `.gitignore` — Git takip dışı kurallar
  - `README.md` — Proje dokümanı
- **Commit:** `e01dfb7` — `ilk commit: corvix proje yapisi kuruldu`

---

### 2026-03-18 — Coolify Deployment Düzeltmesi
- **Sorun:** Coolify root dizinde Dockerfile arıyordu ama sadece `web/` içinde vardı
- **Çözüm:** Root dizine `Dockerfile` eklendi, `web/` klasörünü Nginx'e kopyalıyor
- **Commit:** `425ba2d` — `root Dockerfile eklendi - coolify uyumu`

---

### 2026-03-29 — DNS & Domain Düzeltmesi
- **Sorun:** `corvix.com.tr` (www'suz) 404 veriyordu, `www.corvix.com.tr` çalışıyordu
- **Neden:** Coolify'da Domains alanında sadece `https://www.corvix.com.tr` tanımlıydı
- **Çözüm:** Coolify Domains alanı `https://corvix.com.tr,https://www.corvix.com.tr` olarak güncellendi
- **Öğrenilen:** Coolify'da her zaman www'lu ve www'suz versiyonları virgülle ayırarak birlikte ekle
- **Commit:** Yapılandırma değişikliği (Coolify panel üzerinden)

---

### 2026-03-29 — Favicon + Responsive + UX İyileştirmesi
- **Yapılan:** Sayfanın tüm ekran boyutlarına uyumu sağlandı, favicon eklendi, dil seçici UX iyileştirildi
- **Sorunlar:**
  - 320px ve 375px ekranlarda dil seçici (TR/EN) "CORVIX" yazısının üzerine biniyordu
  - Favicon yoktu — tarayıcı sekmesinde boş ikon görünüyordu
  - `overflow:hidden` yüzünden küçük ekranlarda scroll yapılamıyordu
  - Dil tercihi sayfa yenilenince sıfırlanıyordu
- **Çözümler:**
  1. **Favicon seti** — 12 farklı boyutta favicon oluşturuldu (ICO, PNG, Apple Touch Icon, Android Chrome, MS Tile, OG Image)
  2. **Dil seçici** — `position:fixed`'den `header` elementine taşındı (akış içinde, çakışma yok)
  3. **Responsive** — `clamp()` ile letter-spacing ve font-size dinamik hale getirildi; 4 breakpoint eklendi (768, 480, 360, landscape)
  4. **Erişilebilirlik** — `aria-label`, `focus-visible`, `prefers-reduced-motion` ve min 44px tıklama alanı eklendi
  5. **UX** — `localStorage` ile dil tercihi hatırlanır, `overflow:hidden` kaldırılarak küçük ekranlarda scroll sağlandı
  6. **SEO** — OG Image, Twitter Card, PWA manifest, browserconfig.xml eklendi
- **Eklenen dosyalar:** `web/assets/` (12 favicon), `web/site.webmanifest`, `web/browserconfig.xml`
- **Commit:** `456c612` — `feat: favicon + responsive + UX iyilestirmesi`

---

## 📌 Katkıda Bulunma Kuralları

### Değişiklik Yapan Herkes İçin:

1. **Bu dosyayı güncelle** — Her önemli değişiklikten sonra "Geliştirme Günlüğü" bölümüne yeni bir kayıt ekle
2. **Commit mesajlarını anlaşılır yaz** — Türkçe, ne yapıldığını açıklayan kısa mesajlar
3. **Marka bilgileri değiştiyse** → `.corvix/brand.md` güncelle
4. **Ürün/hizmet eklendiyse** → `.corvix/products.md` güncelle
5. **Teknik karar verildiyse** → `.corvix/tech-stack.md` güncelle
6. **Strateji değiştiyse** → `.corvix/strategy.md` güncelle

### Günlük Kayıt Formatı:
```markdown
### YYYY-MM-DD — Kısa Başlık
- **Yapılan:** Ne değişti?
- **Neden:** Neden bu değişiklik yapıldı?
- **Detaylar:** Teknik detaylar, dosya listesi
- **Commit:** `hash` — `mesaj`
```

---

## 🔗 Hızlı Bağlantılar

| Kaynak | URL |
|--------|-----|
| 🌐 Web Sitesi | [corvix.com.tr](https://corvix.com.tr) |
| 🌐 Web Sitesi (www) | [www.corvix.com.tr](https://www.corvix.com.tr) |
| 📦 GitHub Repo | [senerxyavuz/corvix](https://github.com/senerxyavuz/corvix) |
| ☁️ Coolify Panel | `http://72.61.137.168:8000` |
| 🖥️ VPS IP | `72.61.137.168` |

---

*Bu dosya, projeye her dokunulduğunda güncellenir.*  
*Son güncelleme: 2026-03-29*  
*© 2026 Corvix. Tüm hakları saklıdır.*
