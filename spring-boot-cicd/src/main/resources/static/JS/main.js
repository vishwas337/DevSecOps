function updateMessage() {
    const messageElement = document.querySelector("#dynamic-message");
    if (messageElement) {
      fetch('/api/message')
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.text();
        })
        .then(message => {
          messageElement.textContent = message;
        })
        .catch(error => {
          console.error('There has been a problem with your fetch operation:', error);
          messageElement.textContent = "Failed to load message.";
        });
    }
  }
  // Call the function on window load
  window.addEventListener('DOMContentLoaded', (event) => {
    console.log('DOM fully loaded and parsed');
    updateMessage();
  });