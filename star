<!DOCTYPE html>
<html>
<head>
  <title>Star Clan Altar</title>
  <style>
    :root {
      --main-color: #333;
      --accent-color: #4caf50;
    }

    body {
      font-family: Arial, sans-serif;
      text-align: center;
      margin: 0;
      padding: 0;
      background-color: #f5f5f5;
    }

    .title-container {
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
    }

    .container {
      position: relative;
      display: flex;
      justify-content: center;
      align-items: center;
      height: calc(100vh - 200px);
    }

    .background-image {
      position: absolute;
      z-index: 2;
      width: 116px;
      height: 131px;
      opacity: 0.8;
      transition: 1s;
    }

    .background-image:hover {
      transform: scale(1.1);
    }

    .foreground-image {
      position: absolute;
      z-index: 1;
      width: 220px;
      height: 304px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    button {
      padding: 10px 20px;
      background-color: var(--main-color);
      color: #fff;
      border: none;
      cursor: pointer;
      margin-top: 20px;
      font-weight: 500;
      border-radius: 5px;
      transition: 0.3s;
    }

    button:hover {
      background-color: var(--accent-color);
    }

    #variableValue {
      font-weight: bold;
      font-size: 18px;
      color: var(--main-color);
    }
  </style>
</head>
<body>
  <div class="title-container">
    <h1>Star Clan Altar</h1>
    <button onclick="modifyData()">纪念星族</button>
    <p>Value: <span id="variableValue">0</span></p>
    <input type="hidden" id="hiddenValue" value="0">
  </div>
  <div class="container">
    <img class="foreground-image" src="mothflight.jpg" alt="Moth Flight Image">
    <img class="background-image" src="background.jpg" alt="Background Image">
  </div>

  <script>
    let value = parseInt(document.getElementById('hiddenValue').value) || 0;
    document.getElementById('variableValue').textContent = value;

    function modifyData() {
      value++;
      document.getElementById('variableValue').textContent = value;
      document.getElementById('hiddenValue').value = value;
    }
  </script>
</body>
</html>
