# 🧠 GetX Quiz App

**Flutter ile geliştirilen matematiksel quiz uygulaması**

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![GetX](https://img.shields.io/badge/GetX-9C27B0?style=for-the-badge&logo=flutter&logoColor=white)](https://pub.dev/packages/get)
[![SQLite](https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white)](https://sqlite.org/)

## 📱 Uygulama Hakkında

4 işlemli matematik sorularını cevaplayabileceğiniz interaktif bir quiz uygulaması. GetX state management kullanılarak geliştirilmiştir ve yerel SQLite veritabanında sorular saklanmaktadır.

### ✨ Özellikler

- 🎯 **Matematiksel Quiz**: 4 işlem (toplama, çıkarma, çarpma, bölme) soruları
- 📊 **Skor Takibi**: Doğru ve yanlış cevap sayısı anlık takip
- 🎨 **Modern UI**: Material Design 3 ile tasarlanmış kullanıcı arayüzü
- 🔄 **Reaktif Arayüz**: GetX ile real-time güncellemeler
- 💾 **Yerel Veritabanı**: SQLite ile soru depolama
- 🔁 **Tekrar Oynatma**: Test bittiğinde yeniden başlatma özelliği
- 📱 **Responsive Design**: Farklı ekran boyutlarına uyumlu

## 🏗️ Mimari

```
lib/
├── core/                    # Temel bileşenler
│   ├── extension/           # Extension metodları
│   ├── theme/              # Tema ve renk tanımları
│   └── widget/             # Özel widget'lar
├── database/               # SQLite veritabanı dosyası
├── model/                  # Veri modelleri
├── pages/                  # Sayfa widget'ları
├── routes/                 # Navigasyon yönetimi
├── services/               # Harici servisler
│   └── SQL/               # Veritabanı işlemleri
├── view_model/            # GetX Controller'ları
└── main.dart              # Ana uygulama dosyası
```

## 🛠️ Kullanılan Teknolojiler

| Teknoloji | Versiyon | Açıklama |
|-----------|----------|----------|
| **Flutter** | ^3.7.2 | Cross-platform UI framework |
| **GetX** | ^4.7.2 | State management, navigation ve dependency injection |
| **SQLite** | ^2.4.2 | Yerel veritabanı |
| **Path** | ^1.9.1 | Dosya yolu işlemleri |

## 🚀 Kurulum

### Gereksinimler
- Flutter SDK (3.7.2 ve üzeri)
- Dart SDK
- Android Studio / VS Code
- iOS Simulator / Android Emulator

### Adımlar

1. **Repository'yi klonlayın:**
   ```bash
   git clone https://github.com/muhammedeminalan/getx_quiz_app.git
   cd getx_quiz_app
   ```

2. **Bağımlılıkları yükleyin:**
   ```bash
   flutter pub get
   ```

3. **Uygulamayı çalıştırın:**
   ```bash
   flutter run
   ```

## 📊 Uygulama Akışı

1. **Başlangıç**: Uygulama açılırken SQLite veritabanı başlatılır
2. **Soru Yükleme**: Veritabanından matematik soruları çekilir
3. **Quiz Oynama**: Kullanıcı 4 seçenekli sorulara cevap verir
4. **Skor Takibi**: Her cevap sonrası doğru/yanlış sayısı güncellenir
5. **Sonuç Ekranı**: Tüm sorular bitince toplam skor gösterilir
6. **Tekrar Oynama**: Kullanıcı quiz'i yeniden başlatabilir

## 🎮 Kullanım

### Ana Ekran
- **Skor Kartları**: Üst kısımda yeşil (doğru) ve kırmızı (yanlış) skor kartları
- **Soru Alanı**: Ortada matematik sorusu
- **Seçenekler**: A, B, C, D seçenekleri (cevap verildikten sonra renklenir)
- **İleri Butonu**: Sağ altta, cevap verildikten sonra aktif olur

### Renk Kodları
- 🟢 **Yeşil**: Doğru cevap
- 🔴 **Kırmızı**: Yanlış cevap
- ⚪ **Nötr**: Henüz cevaplanmamış

## 🗂️ Veritabanı Yapısı

```sql
CREATE TABLE questions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  question TEXT NOT NULL,
  optionA TEXT NOT NULL,
  optionB TEXT NOT NULL,
  optionC TEXT NOT NULL,
  optionD TEXT NOT NULL,
  correct_answer TEXT NOT NULL
);
```

## 🤝 Katkıda Bulunma

1. Fork yapın
2. Feature branch oluşturun (`git checkout -b feature/yeni-ozellik`)
3. Değişikliklerinizi commit edin (`git commit -am 'Yeni özellik eklendi'`)
4. Branch'inizi push edin (`git push origin feature/yeni-ozellik`)
5. Pull Request oluşturun

## 📝 Lisans

Bu proje MIT lisansı altında lisanslanmıştır.

## 👨‍💻 Geliştirici

**Muhammed Emin Alan**
- GitHub: [@muhammedeminalan](https://github.com/muhammedeminalan)

## 📞 İletişim

Sorularınız veya önerileriniz için issue açabilirsiniz.

---

*Flutter ile ❤️ ile geliştirilmiştir*
