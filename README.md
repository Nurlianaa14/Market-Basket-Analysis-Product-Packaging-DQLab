# 🛍️ Project Machine Learning for Retail with R : Product Packaging - DQLab
---

## 📌 Deskripsi Singkat  
DQLab.id Fashion adalah toko retail yang menjual produk seperti kemeja, jeans, kosmetik, dan lainnya.  
Untuk menjawab tantangan seperti stok menumpuk dan persaingan yang tinggi, proyek ini bertujuan:

- Mengidentifikasi produk paling laris dan produk yang kurang laku (slow-moving)
- Menemukan kombinasi produk dengan asosiasi yang kuat
- Merekomendasikan bundling produk untuk meningkatkan penjualan dan loyalitas pelanggan

---

## 🔧 Tools & Teknologi
- **Bahasa Pemrograman:** R  
- **Library:** `arules`  
- **Algoritma:** Apriori

---

## 📊 Dataset
- **Data:** transaksi_dqlab_retail.tsv
- **Jumlah Data:** 33.669 baris transaksi dari 3.450 kode transaksi  
- **Kolom:** `Kode Transaksi`, `Nama Barang`

---

## 📈 Insight & Temuan Utama

### ✅ Produk Terlaris
| No | Nama Produk              | Jumlah |
|----|---------------------------|--------|
| 1  | Shampo Biasa              | 2075   |
| 2  | Serum Vitamin             | 1685   |
| 3  | Baju Batik Wanita         | 1312   |
| 4  | Baju Kemeja Putih         | 1255   |
| 5  | Celana Jogger Casual      | 1136   |
| 6  | Cover Koper               | 1086   |
| 7  | Sepatu Sandal Anak        | 1062   |
| 8  | Tali Pinggang Gesper Pria | 1003   |
| 9  | Sepatu Sport merk Z       | 888    |
| 10 | Wedges Hitam              | 849    |

### 🚨 Produk Kurang Laku (Slow-Moving)
| No | Nama Produk                   | Jumlah |
|----|--------------------------------|--------|
| 1  | Celana Jeans Sobek Pria       | 9      |
| 2  | Tas Kosmetik                  | 11     |
| 3  | Stripe Pants                  | 19     |
| 4  | Pelembab                      | 24     |
| 5  | Tali Ban Ikat Pinggang        | 27     |
| 6  | Baju Renang Pria Anak-anak    | 32     |
| 7  | Hair Dye                      | 46     |
| 8  | Atasan Baju Belang            | 56     |
| 9  | Tas Sekolah Anak Perempuan    | 71     |
| 10 | Dompet Unisex                 | 75     |

---

## 🧠 Kombinasi Produk Paling Menarik
Top 3 rules dengan lift tertinggi:
| No | Kombinasi Produk (lhs ⇒ rhs) | Confidence | Lift   |
|----|-------------------------------|------------|--------|
| 1  | Tas Makeup + Tas Pinggang Wanita ⇒ Baju Renang Anak Perempuan | 87.8%      | 24.43  |
| 2  | Tas Makeup + Tas Travel ⇒ Baju Renang Anak Perempuan          | 81.4%      | 22.65  |
| 3  | Tas Makeup + Tas Ransel Mini ⇒ Baju Renang Anak Perempuan     | 73.6%      | 20.47  |

---

## 🎯 Rekomendasi Pemaketan Produk Slow-Moving

### 1. 🎒 *Tas Makeup* – Top 3 Rules (Lift Tertinggi)
| No | Kombinasi Produk (lhs ⇒ rhs)                                                       | Confidence | Lift    |
|----|-------------------------------------------------------------------------------------|------------|---------|
| 1  | Baju Renang Anak Perempuan + Tas Pinggang Wanita ⇒ **Tas Makeup**                 | 80.0%      | 19.57   |
| 2  | Baju Renang Anak Perempuan + Tas Ransel Mini ⇒ **Tas Makeup**                     | 79.6%      | 19.47   |
| 3  | Baju Renang Anak Perempuan + Celana Pendek Green/Hijau ⇒ **Tas Makeup**           | 77.8%      | 19.03   |

📦 *Promo Bundle Name: "Holiday Ready Set – Mom & Kids Edition"*

---

### 2. 🩳 *Baju Renang Pria Anak-anak* – Top 3 Rules (Lift Tertinggi)
| No | Kombinasi Produk (lhs ⇒ rhs)                                                  | Confidence | Lift    |
|----|--------------------------------------------------------------------------------|------------|---------|
| 1  | Gembok Koper + Tas Waist Bag ⇒ **Baju Renang Pria Anak-anak**                | 27.5%      | 29.60   |
| 2  | Flat Shoes Ballerina + Gembok Koper ⇒ **Baju Renang Pria Anak-anak**         | 18.7%      | 20.13   |
| 3  | Celana Jeans Sobek Wanita + Jeans Jumbo ⇒ **Baju Renang Pria Anak-anak**     | 12.1%      | 13.05   |

📦 *Promo Bundle Name: "Adventure Kit for Boys "*

---

## 📚 Apa yang Saya Pelajari

### 🎓 Pemahaman:
- Konsep **item**, **itemset**, dan **association rules**
- Mengukur asosiasi dengan **support**, **confidence**, dan **lift**
- Memahami strategi pemaketan berbasis data transaksi

### 🛠️ Tools & Skill:
- R Programming
- arules library
- Market Basket Analysis

