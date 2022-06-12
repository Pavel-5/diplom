@extends('layouts.app')

@section('content')
    {{--    @include("include/loading")--}}
    <div class="container">
        <div class="forms">
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

                    <button class="form-button filter-form-submit">Применить</button>
                </form>
            </div>
            <div class="download-file">
                <form class="download-form" action="">
{{--                    <input type="file" name="downloadedFile" accept=".csv">--}}
                    <label for="downloadedFile">Ссылка на файл CSV</label>
                    <input type="text" name="downloadedFile" required>

                    <button class="form-button download-form-submit">Применить</button>
                </form>
            </div>
        </div>
        <div id="container"></div>
    </div>
@endsection

@push('js')
    <script defer type="text/javascript" src="https://unpkg.com/vis-graph3d@latest/dist/vis-graph3d.min.js"></script>
    <!-- ESM -->
    {{--<script defer type="module" src="https://cdn.jsdelivr.net/npm/@assemblyscript/loader/index.js"></script>--}}
    {{--<!-- UMD -->--}}
    {{--<script defer src="https://cdn.jsdelivr.net/npm/@assemblyscript/loader/umd/index.js"></script>--}}

    <script defer type="module" src="js/main.js"></script>
@endpush
