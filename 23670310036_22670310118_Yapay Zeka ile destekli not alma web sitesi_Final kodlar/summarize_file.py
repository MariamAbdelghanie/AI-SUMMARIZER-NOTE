import sys
import PyPDF2
from docx import Document  # type: ignore
import nltk  # type: ignore
from nltk.tokenize import sent_tokenize, word_tokenize  # type: ignore
from nltk.probability import FreqDist  # type: ignore
from heapq import nlargest

# Force UTF-8 encoding for stdout to handle non-ASCII characters
sys.stdout.reconfigure(encoding='utf-8')

# Download required NLTK data
nltk.download('punkt', quiet=True)
nltk.download('punkt_tab', quiet=True)
nltk.download('stopwords', quiet=True)

def extract_text_from_pdf(file_path):
    """Extract text from a PDF file."""
    try:
        with open(file_path, 'rb') as file:
            reader = PyPDF2.PdfReader(file)
            text = ''
            for page in reader.pages:
                extracted_text = page.extract_text()
                if extracted_text:
                    text += extracted_text + '\n'
            return text
    except Exception as e:
        print(f"Error reading PDF: {e}", file=sys.stderr)
        sys.exit(1)

def extract_text_from_docx(file_path):
    """Extract text from a DOCX file."""
    try:
        doc = Document(file_path)
        text = ''
        for para in doc.paragraphs:
            text += para.text + '\n'
        return text
    except Exception as e:
        print(f"Error reading DOCX: {e}", file=sys.stderr)
        sys.exit(1)

def summarize_text(text, num_sentences=3):
    """Summarize the given text into the specified number of sentences."""
    try:
        # Tokenize the text into sentences
        sentences = sent_tokenize(text)
        if not sentences:
            return "No sentences found in the text."

        # Tokenize into words (without filtering stopwords to support multiple languages)
        words = word_tokenize(text.lower())
        words = [word for word in words if word.isalnum()]  # Keep alphanumeric words only

        # Calculate word frequency
        freq = FreqDist(words)

        # Score sentences based on word frequency
        sentence_scores = {}
        for sentence in sentences:
            for word, freq_value in freq.items():
                if word in sentence.lower():
                    if sentence in sentence_scores:
                        sentence_scores[sentence] += freq_value
                    else:
                        sentence_scores[sentence] = freq_value

        # Select the top sentences for the summary
        summary_sentences = nlargest(num_sentences, sentence_scores, key=sentence_scores.get)
        summary = ' '.join(summary_sentences)
        return summary if summary else "Failed to generate summary."
    except Exception as e:
        print(f"Error summarizing text: {e}", file=sys.stderr)
        return "Failed to generate summary."

def main():
    """Main function to process the file and generate a summary."""
    if len(sys.argv) != 2:
        print("Usage: python summarize_file.py <file_path>", file=sys.stderr)
        sys.exit(1)

    file_path = sys.argv[1]
    if file_path.endswith('.pdf'):
        text = extract_text_from_pdf(file_path)
    elif file_path.endswith('.docx'):
        text = extract_text_from_docx(file_path)
    else:
        print("Unsupported file format.", file=sys.stderr)
        sys.exit(1)

    summary = summarize_text(text)
    # Print summary with UTF-8 encoding
    print(summary)

if __name__ == "__main__":
    main()