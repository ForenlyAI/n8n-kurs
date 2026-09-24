# n8n ile Yapay Zekâ Otomasyonu — çalışma ortamı

**Codespace'te aç:** [codespaces.new/ForenlyAI/n8n-kurs](https://codespaces.new/ForenlyAI/n8n-kurs) ya da yeşil *Code* düğmesi → *Codespaces* → *Create codespace*.

**Kendi bilgisayarında (Docker):** `docker run -it --rm -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n:2.40.6` → http://localhost:5678

 İlk açılış 2–3 dakika sürer; n8n 5678 portunda açılır.

- n8n sürümü: **2.40.6** (derslerdeki ekranlarla aynı)
- Ücretsiz kota: kişisel GitHub hesabında ayda 120 çekirdek-saat (bu ortam 2 çekirdek → ~60 saat). Organizasyon hesaplarında ücretsiz kota yoktur.
- Codespace boşta kalınca kapanır; kapalıyken zamanlanmış akışlar çalışmaz. Sürekli çalışan akış için 6. haftaya bakın.
- Anahtarlar bu depoya **yazılmaz**: Codespaces → *Secrets* ya da n8n'in kendi kimlik bilgisi ekranı.

| hafta | klasör | içerik |
|---|---|---|
| 1 | `hafta-1/cozum/` | Sabah hava durumu akışı (içe aktar: n8n → *Import from File*) |
| 2 | `hafta-2/cozum/` | Üç şehir sıcaklık (3 öğe) · Hava cümlesi (ifade) · Talep özeti (Form Trigger → Edit Fields) |
| 3 | `hafta-3/cozum/` | Talep kaydı (Form → Data table → If → Send Email). İçe aktarınca tabloyu (ad, talep, acil) ve SMTP kimlik bilgisini kendiniz seçin |
| 4 | `hafta-4/cozum/` | Talebi özetle · Talebi etiketle (Gemini + Structured Output Parser + Switch → 3 tablo). İçe aktarınca Gemini kimlik bilgisini ve tabloları (siparisler, sikayetler, sorular: ad, talep, ozet) seçin |

Hava verisi: [Open-Meteo](https://open-meteo.com/) (CC BY 4.0, ticari olmayan kullanım).
