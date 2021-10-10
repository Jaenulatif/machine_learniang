# Laporan Proyek Machine Learning Klasifikasi Room Occupancy pada Hotel

Oleh Dandi Rifaldi Aldiansyah (dandir86@gmail.com)

Proyek machine learning ini menggunakan algoritma:
*  Decision Tree Classifier
*  Support Vector Machine (SVM)
---

## Project Domain
Di era modern sekarang ini pemerintah sedang giat-giatnya menggalakkan atau meningkatkan pariwisata yang dirasakan akan menjadi kebutuhan yang penting di samping kebutuhan pokok yang lain, sehingga perlu bagi unsur penunjang pariwisata seperti travel biro, hotel dan organisasi yang mendukung kepariwisataan daerah untuk meningkatkan kegiatan pemasaran khususnya meningkatkan jumlah kunjungan wisatawan.

Dengan banyaknya objek wisata dan kegiatan bisnis, maka banyak pula penyedia jasa hotel (akomodasi) yang mendirikan usahanya untuk memfasilitasi kegiatan tersebut. Hotel atau penginapan bukan suatu tujuan bagi wisatawan tapi merupakan tempat dimana wisatawan beristirahat dan mengatur kelanjutan kegiatannya ataupun bisnis.

Dari semua penentu pemilihan hotel yang baik dan bagus, tingkat hunian kamar merupakan salah satu faktor penentu bagi kelangsungan hidup hotel dan sekaligus dapat menunjukkan posisi perusahaan di pasar. Sekarang ini tingkat hunian kamar pada hotel dan penginapan banyak mengalami peningkatan yang tidak begitu signifikan. Hal ini, disebabkan oleh banyak hal, salah satunya yaitu tingkat kenyamanan dan kondisi kamar.

Menurut Daniel (2018) dalam artikelnya yang berjudul [_RoomFort: An Ontology-Based Comfort Management Application for Hotels_](https://www.mdpi.com/2079-9292/7/12/345) mengemukakan bahwa "The comfort metrics involved in a hotel room and analyzed in this work are Temperature, Humidity rate, and Illuminance" (Metrik kenyamanan yang terlibat dalam kamar hotel dan dianalisis dalam pekerjaan ini adalah Suhu, Tingkat Kelembaban, dan Pencahayaan). Maka dari itu perlu dilakukan analisa dan prediksi terhadap kondisi kamar apakah kamar tersebut memiliki kesempatan untuk ditempati atau tidak untuk meningkatkan kualitas kenyamanan dan kondisi kamar hotel demi meningkatkan jumlah konsumen. 

## Business Understanding
Tingkat kenyamanan dan kondisi kamar hotel menjadi hal yang sangat penting untuk kemungkinan kamar tersebut dapat ditempati atau tdak oleh konsumen. Bayangkan jika suatu kamar memiliki suhu yang sangat dingin atau sangat panas atau tingkat kelembapan yang terlalu tinggi atau terlalu rendah atau bahkan memiliki pencahayaan yang kurang baik, maka sangat sulit sekali konsumen akan menempati kamar tersebut. Dari itu diperlukan prediksi untuk mengetahui apakah suatu kamar memiliki kesempatan untuk ditempati atau tidak.

### Problem Statements
Berdasarkan kondisi yang telah diuraikan, akan dikembangkan sebuah sistem prediksi kemungkinan kamar ditempati atau tidak untuk menjawab beberapa pertanyaan diantaranya :
* Dari serangkaian fitur yang ada, fitur apa yang paling berpengaruh terhadap kemungkinan kamar ditempati?
* Apakah kamar dapat ditempati dengan kondisi fitur-fitur tertentu?

### Goals
Dari beberapa pertanyaan diatas, dapat diuraikan beberapa goals yaitu :
* Mengetahui fitur yang paling berkorelasi dengan kemungkinan kamar ditempati.
* Membuat model machine learning yang dapat memprediksi kemungkinan tersebut berdasarkan fitur-fitur yang ada.
* Membandingkan model machine learning yang dapat digunakan untuk melakukan prediksi dengan baik.

### Solution statements
Dalam melakukan prediksi terhadap masalah diatas, akan digunakan dua algoritma machine learning yang akan dibandingkan manakah hasil prediksi yang paling baik yaitu.
* **Decision Tree Classifier**
_Decision tree_ adalah model prediksi menggunakan struktur pohon atau struktur berhirarki. Manfaat utama dari penggunaan _decision tree_ adalah kemampuannya untuk mem-_break down_ proses pengambilan keputusan yang kompleks menjadi lebih simple, sehingga pengambil keputusan akan lebih menginterpretasikan solusi dari permasalahan.
_Decision tree_ juga berguna untuk mengeksplorasi data, menemukan hubungan tersembunyi antara sejumlah calon variabel _input_ dengan sebuah variabel target.
![Decision Tree](https://miro.medium.com/max/1336/1*LlUwyaWkUGJFeEYrWN9_gA.png)
Kelebihan lain dari metode ini adalah mampu mengeliminasi perhitungan atau data-data yang kiranya tidak diperlukan. Sebab, sampel yang ada biasanya hanya diuji berdasarkan kriteria atau kelas tertentu saja.
Meski memiliki banyak kelebihan, namun bukan berarti metode ini tidak memiliki kekurangan. Decision tree ini bisa terjadi overlap, terutama ketika kelas dan kriteria yang digunakan sangat banyak tentu saja dapat meningkatkan waktu pengambilan keputusan sesuai dengan jumlah memori yang dibutuhkan.

* **Support Vector Machine (SVM)**
SVM digunakan untuk mencari _hyperplane_ terbaik dengan memaksimalkan jarak antar kelas. _Hyperplane_ adalah sebuah fungsi yang dapat digunakan untuk pemisah antar kelas. Dalam 2-D fungsi yang digunakan untuk klasifikasi antar kelas disebut sebagai _line whereas_, fungsi yang digunakan untuk klasifikasi antas kelas dalam 3-D disebut _plane similarly_, sedangan fungsi yang digunakan untuk klasifikasi di dalam ruang kelas dimensi yang lebih tinggi di sebut _hyperplane_.
![SVM](https://miro.medium.com/max/1400/1*ikAtK9PHxDH1xDvaXEUKTw.png)
_Hyperplane_ yang ditemukan SVM berada ditengah-tengah antara dua kelas, artinya jarak antara hyperplane dengan objek-objek data berbeda dengan kelas yang berdekatan (terluar) yang diberi tanda bulat kosong dan positif. Dalam SVM objek data terluar yang paling dekat dengan _hyperplane_ disebut _support vector_. Objek yang disebut _support vector_ paling sulit diklasifikasikan dikarenakan posisi yang hampir tumpang tindih (overlap) dengan kelas lain. Mengingat sifatnya yang kritis, hanya _support vector_ inilah yang diperhitungkan untuk menemukan _hyperplane_ yang paling optimal oleh SVM.

## Data Understanding
Data yang akan dipakai dalam proyek ini adalah data [_Room Occupancy_](https://www.kaggle.com/sachinsharma1123/room-occupancy) yang dibuat oleh Sachin Sharma dan diambil dari [Kaggle.com](https://kaggle.com) yang merupakan salah satu media penyedia dataset yang paling populer.

Variabel-variabel yang terdapat pada dataset _Room Occupancy_ tersebut adalah sebagai berikut:
- Temperature : yaitu suhu yang terdapat di dalam ruangan dengan satuan derajat celcius
- Humidity : tingkat kelembapan di dalam ruangan
- Light : tingkat itensitas pencahaayn lampu pada kamar 
- CO2 : tingkat kadar karbon dioksida di dalam ruangan
- Humidity Ratio : rasio kelembapan di dalam kamar
- Occupancy : kemungkinan ruangan ditempati, dengan nilai 1 sebagai mungkin dan 0 sebagai kosong atau tidak mungkin.

## Data Preparation
Pada _data preparation_ ini dilakukan beberapa teknik yaitu:
* **Menangani outliers dengan metode _Inter Quartile Range_ (IQR)**
Pada dataset terdapat ouliers atau data yang berada di luar lingkungan pengamatan yang berada pada fitur Light dan harus ditangani dengan baik.
Pada kasus ini digunakan metode IQR yaitu dengan men-_drop_ data yang terdapat pada batasan kuartil satu dan kuartil tiga pada data. 
Pada kode proyek akan dituliskan sebagai berikut.
```python
def clean_outliers(df,features):
    for i in features:
        Q1 = df[i].quantile(0.25)
        Q3 = df[i].quantile(0.75)
        IQR = (Q3-Q1)
        print("Feature {} has min value: {} max value: {}".format(i,Q1-IQR*1.5,Q3+IQR*1.5))
        df = df[((df[i]>(Q1-IQR*1.5))&(df[i]<(Q3+IQR*1.5)))]
    return df
```


* **Train Test Split**
Train test split digunakan untuk membagi total dataset menjadi dua bagian, yaitu data untuk dilatih dan data untuk menjadi sample tes. Pada proyek ini pembagian data tersebut yaitu 75% data untuk data latih dan 25% data untuk data _testing_. 
Train test split dapat dilakukan dengan menggunakan fungsi train_test_split pada library sklearn.model_selection.

## Modeling
Pada proyek ini modeling menggunakan metode perbandingan, Dimana akan membandingkan antara dua algoritma machine learning yaitu _Decision Tree Classifier_ dan _Support Vector Machine_ (SVM).

Hasil perbandingan tersebut akan diukur dengan beberapa metrik pengukuran pada tahap selanjutnya.

Pertama pada algoritma decision tree dilakukan modeling dengan memanggil fungsi DecisionTreeClassifier library saklearn.tree dengan parameter _max_depth_ atau maksimal kedalaman _node_ pada pohon bernilai 4. Lalu, langsukng melakukan latihan pada data, melakukan prediksi dengan data testing, dan menymimpan hasil metrik pengukuran pada variable tertentu seperti kode berikut ini.

```python
from sklearn.tree import DecisionTreeClassifier
model1 = DecisionTreeClassifier(max_depth=4)
model1.fit(X_train,Y_train)
y_pred1 = model1.predict(X_test)
res = pd.DataFrame({"Model":['DecisionTreeClassifier'],
                    "Accuracy Score": [accuracy_score(y_pred1,Y_test)],
                    "Recall": [recall_score(Y_test,y_pred1)],
                    "F1score": [f1_score(Y_test,y_pred1)]})
Results = Results.append(res)
```

Proses ini dilakukan juga ke algoritma SVM dengan bantuan fungsi SVC pada library sklearn.svm seperti kode berikut ini.

```python
from sklearn.svm import SVC
model2 = SVC()
model2.fit(X_train,Y_train)
y_pred2 = model2.predict(X_test)
res = pd.DataFrame({"Model":['SVC'],
                    "Accuracy Score": [accuracy_score(y_pred2,Y_test)],
                    "Recall": [recall_score(Y_test,y_pred2)],
                    "F1score": [f1_score(Y_test,y_pred2)]})
Results = Results.append(res)
```
Selanjutnya, akan dibandingkan antara kedua model algoritma tersebut dengan melihat hasil prediksi dengan menggunakan data sample yang sudah dibagi sebelumnya pada tahapan data processing dengan menjalankan kode seperti berikut ini dengan parameter variable masing-masing hasil prediksi model.

```python
pd.crosstab(Y_test,y_pred1,rownames=['Real data'],colnames=['Predicted'])
```
_Catatan :_
_Variable y_pred1 dapat diganti sesuai dengan masing-masing variable prediksi pada model, dalam kasus ini diganti menjadi y_pred2_

Dari kode diatas akan menghasilkan table untuk model Decision Tree Classifier

![Hasil prediksi Decision Tree](https://i.ibb.co/NrXWQbD/hasil-prediksi-Decision-Tree.png)

Sementara untuk SVM seperti berikut ini.

![Hasil prediksi SVM](https://i.ibb.co/qDnhFjm/hasil-prediksi-SVM.png)

Dari kedua table diatas dapat dilihat bahwa hasil ketepatan prediksi dengan Decision Tree Classifier **lebih akurat**, dibuktikan dengan jumlah gagal prediksi hanya 9 sample data (4 sample data pada real data 1 dan 5 sample data pada real data 0) lebih sedikit dari pada jumlah gagal prediksi dengan model SVM yaitu 10 sample data.

## Evaluation
Pada bagian evaluasi saya hanya akan mengevaluasi model dengan algoritma _Decision Tree Classifier_ karena model dengan algoritma ini lebih akuran dibanding dengan SVM. Dan untuk evaluasi saya akan menggunakan metrik **Accuracy Score, Recall, Precision, F1 score, dan Confusion Matrix**. Dimana semua metrik dapat digunakan dengan bantuan library sklearn.metrics. dengan menjalankan kode sepeti

```pyhon
from sklearn.metrics import accuracy_score, recall_score, precision_score, f1_score, confusion_matrix, plot_confusion_matrix
```

* **Accuracy Score**
_Accuracy score_ merupakan rasio prediksi benar (positif dan negatif) dengan keseluruhan data. Akurasi menjawab pertanyaan “Berapa persen data yang benar diprediksi dan tidak dari kesuluruhan data”. Accuracy score dapat dirumuskan sebagai berikut.
Akurasi = (TP + TN ) / (TP+FP+FN+TN)
dimana, 
  * True Positif(TP) adalah kasus dimana data diprediksi (Positif) dan memang benar (True)
  * True Negatif(TN) adalah kasus dimana data diprediksi tidak (Negatif) dan memang benar (True)
  * False Positve (FP) adalah kasus dimana data yang diprediksi (Positif), ternyata tidak atau prediksinya salah (False).
  * False Negatif (FN) adalah kasus dimana data yang diprediksi tidak (Negatif), tetapi ternyata benar (TRUE).
 
* **Recall**
_Recall_ merupakan rasio prediksi benar positif dibandingkan dengan keseluruhan data yang benar positif.  _Recall_ menjawab pertanyaan “Berapa persen data yang diprediksi dibandingkan keseluruhan data yang sebenarnya benar”. _Recall_ dapat dirumuskan sebagai berikut.
Recall = (TP) / (TP + FN)

* **Precision Score**
_Presision score_ merupakan rasio prediksi benar positif dibandingkan dengan keseluruhan hasil yang diprediksi positf. _Precission_ menjawab pertanyaan “Berapa persen data yang benar dari keseluruhan mahasiswa yang diprediksi”. _Precision_ dapat dirumuskan sebagai
Precission = (TP) / (TP+FP)

* **F1 Score**
_F1 score_ merupakan perbandingan rata-rata presisi dan recall yang dibobotkan. _F1 score_ dirumuskan sebagai
F1 Score = 2 * (Recall*Precission) / (Recall + Precission)

* **Confusion Matrix**
Confusion Matrix adalah pengukuran performa untuk masalah klasifikasi machine learning dimana keluaran dapat berupa dua kelas atau lebih.  Confusion Matrix adalah tabel dengan 4 kombinasi berbeda dari nilai prediksi dan nilai aktual.

Di salam kode proyek, untuk metrik pengukuran selain _confusion matrix_ ditampilkan dengan membuat sebuag fungsi sepetri di bawah ini
```python
#fungsi evaluasi model
def evaluation(y_test,y_pred):
  rcl = recall_score(y_test,y_pred)
  acc = accuracy_score(y_test,y_pred)
  f1 = f1_score(y_test,y_pred)
  prec_score = precision_score(y_test,y_pred)
 
  metric_dict={'accuracy': round(acc,3),
               'recall': round(rcl,3),
               'precision': round(prec_score,3),
               'F1 score': round(f1,3),
              }

  return print(metric_dict)
```
dan sesuai dengan model Decision tree hasil dari metrik pengukuran tersebut adalah.

![Metrik pengukuran Decision Tree](https://i.ibb.co/Kbg6zFv/metrik-pengukuran.png)

Dari hasil di atas, dapat disimpulkan bahwa tingkat akurasi model dengan algoritma _Decision Tree_ dan dataset yang digunakan yang dihitung dari semua metrik menyentuh angka **lebih dari 98%**, itu berarti model dapat digunakan dalam proyek dengan dataset yang digunakan.

Sementara dari confusion matrix, dalam kode proyek dapat dijalankan dengan kode.
```python
plot_confusion_matrix(model1,X_test,Y_test,cmap='YlOrBr')
```
dan akan menghasilkan _plot confusion matrix_ seperti berikut

![Plot Confusion Matrix](https://i.ibb.co/K2ckvxW/plot-confusion-matrix-decision-tree.png)

Sama seperti hasil prediksi di atas, bahwa dari confusion matrix juga hanya terdapat 9 sample data yang gagal diprediksi.

Lalu, untuk mengetahui fitur apa yang paling penting dalam prediksi model dapat dilakukan dengan menjalankan kode berikut.
```python
feat_importance = model1.feature_importances_
feat_importance = pd.DataFrame(feat_importance,columns=['Score'],index=X.columns)
feat_importance.sort_values(by='Score').style.background_gradient(cmap='OrRd')

plt.figure(figsize=(8,4))
plt.title('Feature Importances')
sns.barplot(x=feat_importance.Score,y=feat_importance.index)
```

yang akan menampilkan hasil sebagai berikut.

![Table fitur penting](https://i.ibb.co/D5XKCjx/table-fitur-penting.png)

![Grafik fitur penting](https://i.ibb.co/W3nYXb8/plot-fitur-penting.png)

Dari kedua hasil diatas dapat dilihat bahwa fitur "Light" lah yang paling penting dalam melakukan prediksi terhadap model dengan Decision Tree dengan nilai mencapai 98%.
**---Ini adalah bagian akhir laporan---**