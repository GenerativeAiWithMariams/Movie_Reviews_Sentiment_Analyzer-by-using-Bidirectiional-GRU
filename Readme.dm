# 🎬 Movie Review Sentiment Analyzer

An interactive **Deep Learning-based Sentiment Analysis** web application built with **Python, TensorFlow/Keras, and Streamlit**.

This application analyzes a movie review entered by the user and predicts whether the review expresses a **Positive** or **Negative** sentiment.

---

## 🚀 Project Overview

Sentiment analysis is a Natural Language Processing (NLP) task used to determine the emotional tone of text.

In this project, a trained Deep Learning model analyzes movie reviews and classifies them into two categories:

* 😊 **Positive**
* 😞 **Negative**

The model is integrated with a **Streamlit** interface, allowing users to enter a movie review and receive an instant sentiment prediction.

---

## ✨ Features

* 🎬 Movie review sentiment analysis
* 🤖 Deep Learning model using TensorFlow/Keras
* 🧠 Natural Language Processing (NLP)
* 🔤 Text preprocessing and tokenization
* 📏 Sequence padding
* 🌐 Interactive Streamlit interface
* ⚡ Real-time sentiment prediction
* 📊 Prediction probability

---

## 🛠️ Technologies Used

* **Python**
* **TensorFlow / Keras**
* **Streamlit**
* **NumPy**
* **Pickle**
* **Regular Expressions (re)**
* **NLP**
* **Deep Learning**

---

## 🧠 How It Works

The application follows the following workflow:

```text
User Movie Review
        ↓
Text Preprocessing
        ↓
Convert Text to Sequence
        ↓
Tokenization
        ↓
Sequence Padding
        ↓
Trained Deep Learning Model
        ↓
Prediction Probability
        ↓
Positive / Negative Sentiment
```

---

## 🔄 Text Preprocessing

Before sending the review to the model, the application performs several preprocessing steps.

### 1. Convert Text to Lowercase

```python
text = text.lower()
```

This ensures that uppercase and lowercase versions of the same word are treated consistently.

### 2. Remove Punctuation

```python
text = re.sub(r"[^\w\s]", "", text)
```

Special characters and punctuation are removed from the review.

### 3. Tokenization

The cleaned text is converted into numerical sequences using the trained tokenizer:

```python
sequence = tokenizer.texts_to_sequences([" ".join(words)])
```

### 4. Padding

The sequence is padded to a fixed length of `100`:

```python
padded = pad_sequences(sequence, maxlen=100)
```

This ensures that every input has the same shape before being passed to the model.

---

## 🤖 Prediction

The trained model is loaded from:

```text
sentiment_model.h5
```

The model generates a probability between `0` and `1`.

```python
prediction = model.predict(processed)[0][0]
```

The prediction is converted into a sentiment using a threshold of `0.5`:

```python
sentiment = "Positive" if prediction >= 0.5 else "Negative"
```

### Prediction Interpretation

| Prediction | Sentiment   |
| ---------- | ----------- |
| `>= 0.50`  | 😊 Positive |
| `< 0.50`   | 😞 Negative |

---

## 💻 Application Interface

The Streamlit application provides:

* A text area for entering movie reviews
* A **Predict Sentiment** button
* Input validation
* Prediction probability
* Final sentiment classification

### Example

**Input:**

```text
This movie was absolutely amazing. The story and acting were fantastic!
```

**Output:**

```text
Prediction: 0.94 → Positive
```

---

## 📁 Project Structure

```text
Movie-Review-Sentiment-Analyzer/
│
├── app.py
├── sentiment_model.h5
├── tokenizer.pkl
├── requirements.txt
└── README.md
```

---

## ⚙️ Installation

### 1. Clone the repository

```bash
git clone https://github.com/GenerativeAiWithMariams/Movie-Review-Sentiment-Analyzer.git
```

### 2. Navigate to the project directory

```bash
cd Movie-Review-Sentiment-Analyzer
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the Streamlit application

```bash
streamlit run app.py
```

The application will open in your browser.

---

## 📦 Requirements

Create a `requirements.txt` file:

```text
streamlit
numpy
tensorflow
```

---

## 🎯 Use Cases

This type of sentiment analysis system can be used for:

* 🎬 Movie review analysis
* ⭐ Customer feedback analysis
* 🛍️ Product review classification
* 📱 Social media sentiment analysis
* 💬 Customer opinion monitoring
* 📊 Business feedback analysis

---

## 🔮 Future Improvements

* Add **Neutral** sentiment classification
* Display confidence scores with visual charts
* Add batch sentiment analysis using CSV files
* Improve text preprocessing
* Add model evaluation metrics
* Add confusion matrix
* Support multiple languages
* Deploy the application online
* Improve the Streamlit UI with custom styling

---

## 📸 Application Preview

Add a screenshot of your application:

```markdown
![Movie Review Sentiment Analyzer](screenshot.png)
```

---

## 🎓 Learning Outcomes

This project demonstrates practical experience with:

* Natural Language Processing
* Text preprocessing
* Tokenization
* Sequence padding
* Deep Learning
* TensorFlow/Keras
* Model inference
* Streamlit application development
* Deploying ML models into interactive applications

---

## 👩‍💻 Author

**Maryam Faiz**

**Generative AI Developer | AI Engineer | Python Developer**

🔗 GitHub: https://github.com/GenerativeAiWithMariams
🔗 LinkedIn: https://www.linkedin.com/in/maryam-faiz-7a8259423/
📧 Email: [maryamfaiz.genai@gmail.com](mailto:maryamfaiz.genai@gmail.com)

---

## ⭐ Support

If you found this project useful, consider giving the repository a ⭐ on GitHub.
