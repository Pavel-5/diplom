<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body onload="start()">
    <canvas id="glcanvas" width="640" height="480">
        Your browser doesn't appear to support the HTML5 <code>&lt;canvas&gt;</code> element.
    </canvas>

    <script id="shader-fs" type="x-shader/x-fragment">
        void main(void) {
            gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
        }
    </script>
    <script id="shader-vs" type="x-shader/x-vertex">
        attribute vec3 aVertexPosition;

        uniform mat4 uMVMatrix;
        uniform mat4 uPMatrix;

        void main(void) {
            gl_Position = uPMatrix * uMVMatrix * vec4(aVertexPosition, 1.0);
        }
    </script>
    <script src="/js/webgl.js"></script>
</body>
</html>
