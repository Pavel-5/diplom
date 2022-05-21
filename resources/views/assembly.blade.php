<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="css/app.css">
</head>
<body>
{{--    @include("include/loading")--}}
<div class="progress">
    <div
        class="progress-bar"
        role="progressbar"
        style="width: 0;"
        aria-valuenow="0"
        aria-valuemin="0"
        aria-valuemax="100"
    ></div>
</div>
<div class="filters">
    <button class="filters-open">Фильтры</button>
    <form class="filters-form">
        <label for="x">
            X: <select name="x" id="x"></select>
        </label>
        <label for="y">
            Y: <select name="y" id="y"></select>
        </label>
        <label for="z">
            Z: <select name="z" id="z"></select>
        </label>

        <label for="graph-type">
            Тип графика:
            <select name="graph-type" id="graph-type">
                <option value="dot-color">Точки разного цвета</option>
                <option value="dot-size">Точки разного размера</option>
                <option value="dot-line">Точки разного цвета с линиями</option>
                <option value="bar-color">Столбцы разного цвета</option>
                <option value="bar-size">Столбцы разного размера</option>
                {{--                    <option value="surface">Поверхность</option>--}}
                <option value="line">Линии</option>
                {{--                    <option value="grid">Сетка</option>--}}
            </select>
        </label>

        <label for="filter-name">
            Отфильтровать по <select name="filter-name" id="filter-name">
                <option value="none">-</option>
            </select>
        </label>

        <div class="filter-values"></div>

        <button class="form-button form-submit">Применить</button>
    </form>
</div>
<div id="container"></div>

<script defer type="text/javascript" src="https://unpkg.com/vis-graph3d@latest/dist/vis-graph3d.min.js"></script>
<!-- ESM -->
{{--<script defer type="module" src="https://cdn.jsdelivr.net/npm/@assemblyscript/loader/index.js"></script>--}}
{{--<!-- UMD -->--}}
{{--<script defer src="https://cdn.jsdelivr.net/npm/@assemblyscript/loader/umd/index.js"></script>--}}

<script defer type="module" src="js/app.js"></script>
</body>
</html>
