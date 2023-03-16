<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    {{-- mazer --}}
    <link rel="stylesheet" href="{{ asset('theme') }}/assets/css/main/app.css">
    <link rel="stylesheet" href="{{ asset('theme') }}/assets/css/pages/fontawesome.css">
    <link rel="stylesheet"
    href="{{ asset('theme') }}/assets/extensions/datatables.net-bs5/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="{{ asset('theme') }}/assets/css/pages/datatables.css">

    <title inertia>{{ config('app.name', 'Laravel') }}</title>
    
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }
        .imgIcon {
            width:20px;
        }
        .layout-horizontal {
            height: 100px;
        }
        .imgLogo {
            width: 80px;
            object-fit: cover;
        }
        .modal-lg-max {
            max-width: 1200px;
        }
        .select2 {
            width: 100% !important;
        }
        .select2-container--default .select2-selection--single {
            background-color: #fff;
            border: 1px solid rgb(237, 238, 241);
            border-radius: 4px;
            height: 105px;
        }
    </style>
    <!-- Scripts -->
    @routes
    <script src="{{ mix('js/app.js') }}" defer></script>
    @inertiaHead
</head>

<body>
    @inertia

    @env('local')
    <script src="http://localhost:8080/js/bundle.js"></script>
    @endenv
    <script src="{{ asset('theme') }}/assets/js/bootstrap.js"></script>
    <script src="{{ asset('theme') }}/assets/js/app.js"></script>
    <script src="{{ asset('theme') }}/assets/extensions/jquery/jquery.min.js"></script>
    <script src="{{ asset('theme') }}/assets/js/pages/datatables.js"></script>
</body>

</html>
