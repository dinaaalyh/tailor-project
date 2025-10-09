<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('assets/img/apple-icon.png') }}" />
    <link rel="icon" type="image/png" href="{{ asset('assets/img/favicon.png') }}" />

    <title>Argon Dashboard 2 Tailwind by Creative Tim</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap" rel="stylesheet" />

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>

    <!-- Nucleo Icons -->
    <link href="{{ asset('assets/css/nucleo-icons.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/css/nucleo-svg.css') }}" rel="stylesheet" />

    <!-- Popper -->
    <script src="https://unpkg.com/@popperjs/core@2"></script>

    <!-- Main Styling -->
    <link href="{{ asset('assets/css/argon-dashboard-tailwind.css?v=1.0.1') }}" rel="stylesheet" />
</head>


<body
    class="m-0 font-sans text-base antialiased font-normal dark:bg-slate-900 leading-default bg-gray-50 text-slate-500">
    <div class="absolute w-full bg-blue-500 dark:hidden min-h-75"></div>
    <!-- sidenav  -->
    <aside
        class="fixed inset-y-0 flex-wrap items-center justify-between block w-full p-0 my-4 overflow-y-auto antialiased transition-transform duration-200 -translate-x-full bg-white border-0 shadow-xl dark:shadow-none dark:bg-slate-850 max-w-64 ease-nav-brand z-990 xl:ml-6 rounded-2xl xl:left-0 xl:translate-x-0"
        aria-expanded="false">
        <div class="h-19">
            <i class="absolute top-0 right-0 p-4 opacity-50 cursor-pointer fas fa-times dark:text-white text-slate-400 xl:hidden"
                sidenav-close></i>
            <a class="block px-8 py-6 m-0 text-sm whitespace-nowrap dark:text-white text-slate-700"
                href="https://demos.creative-tim.com/argon-dashboard-tailwind/pages/dashboard.html" target="_blank">
                <img src="./assets/img/logo-ct-dark.png"
                    class="inline h-full max-w-full transition-all duration-200 dark:hidden ease-nav-brand max-h-8"
                    alt="main_logo" />
                <img src="./assets/img/logo-ct.png"
                    class="hidden h-full max-w-full transition-all duration-200 dark:inline ease-nav-brand max-h-8"
                    alt="main_logo" />
                <span class="ml-1 font-semibold transition-all duration-200 ease-nav-brand">Argon Dashboard 2</span>
            </a>
        </div>

        <hr
            class="h-px mt-0 bg-transparent bg-gradient-to-r from-transparent via-black/40 to-transparent dark:bg-gradient-to-r dark:from-transparent dark:via-white dark:to-transparent" />

        <div class="items-center block w-auto max-h-screen overflow-auto h-sidenav grow basis-full">
            <ul class="flex flex-col pl-0 mb-0">
                <li class="mt-0.5 w-full">
                    <a class=" dark:text-white dark:opacity-80 py-2.7 text-sm ease-nav-brand my-0 mx-2 flex items-center whitespace-nowrap px-4 transition-colors"
                        href="{{ route('dashboard') }}">
                        <div
                            class="mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-center stroke-0 text-center xl:p-2.5">
                            <i class="relative top-0 text-sm leading-normal text-orange-500 ni ni-calendar-grid-58"></i>
                        </div>
                        <span class="ml-1 duration-300 opacity-100 pointer-events-none ease">Dashboard</span>
                    </a>
                </li>

                <li class="mt-0.5 w-full">
                    <a class="py-2.7 bg-blue-500/13 dark:text-white dark:opacity-80 text-sm ease-nav-brand my-0 mx-2 flex items-center whitespace-nowrap rounded-lg px-4 font-semibold text-slate-700 transition-colors"
                        href="{{ route('stock') }}">
                        <div
                            class="mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-center stroke-0 text-center xl:p-2.5">
                            <i class="relative top-0 text-sm leading-normal text-blue-500 ni ni-tv-2"></i>
                        </div>
                        <span class="ml-1 duration-300 opacity-100 pointer-events-none ease">Upload Stock</span>
                    </a>
                </li>

                <li class="mt-0.5 w-full">
                    <a class=" dark:text-white dark:opacity-80 py-2.7 text-sm ease-nav-brand my-0 mx-2 flex items-center whitespace-nowrap px-4 transition-colors"
                        href="{{ route('orders.index') }}">
                        <div
                            class="mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-center fill-current stroke-0 text-center xl:p-2.5">
                            <i class="relative top-0 text-sm leading-normal text-emerald-500 ni ni-credit-card"></i>
                        </div>
                        <span class="ml-1 duration-300 opacity-100 pointer-events-none ease">Order</span>
                    </a>
                </li>

                <li class="mt-0.5 w-full">
                    <a class=" dark:text-white dark:opacity-80 py-2.7 text-sm ease-nav-brand my-0 mx-2 flex items-center whitespace-nowrap px-4 transition-colors"
                        href="./pages/virtual-reality.html">
                        <div
                            class="mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-center stroke-0 text-center xl:p-2.5">
                            <i class="relative top-0 text-sm leading-normal text-cyan-500 ni ni-app"></i>
                        </div>
                        <span class="ml-1 duration-300 opacity-100 pointer-events-none ease">History Pesanan</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="mx-4">
            <!-- load phantom colors for card after: -->
            <p
                class="invisible hidden text-gray-800 text-red-500 text-red-600 text-blue-500 bg-gray-500/30 bg-cyan-500/30 bg-emerald-500/30 bg-orange-500/30 bg-red-500/30 after:bg-gradient-to-tl after:from-zinc-800 after:to-zinc-700 dark:bg-gradient-to-tl dark:from-slate-750 dark:to-gray-850 after:from-blue-700 after:to-cyan-500 after:from-orange-500 after:to-yellow-500 after:from-green-600 after:to-lime-400 after:from-red-600 after:to-orange-600 after:from-slate-600 after:to-slate-300 text-emerald-500 text-cyan-500 text-slate-400">
            </p>
            <div class="relative flex flex-col min-w-0 break-words bg-transparent border-0 shadow-none rounded-2xl bg-clip-border"
                sidenav-card>
                <img class="w-1/2 mx-auto" src="./assets/img/illustrations/icon-documentation.svg"
                    alt="sidebar illustrations" />
                <div class="flex-auto w-full p-4 pt-0 text-center">
                    <div class="transition-all duration-200 ease-nav-brand">
                        <h6 class="mb-0 dark:text-white text-slate-700">Need help?</h6>
                        <p class="mb-0 text-xs font-semibold leading-tight dark:text-white dark:opacity-60">Please check
                            our docs</p>
                    </div>
                </div>
            </div>
            <a href="https://www.creative-tim.com/learning-lab/tailwind/html/quick-start/argon-dashboard/"
                target="_blank"
                class="inline-block w-full px-8 py-2 mb-4 text-xs font-bold leading-normal text-center text-white capitalize transition-all ease-in rounded-lg shadow-md bg-slate-700 bg-150 hover:shadow-xs hover:-translate-y-px">Documentation</a>
            <!-- pro btn  -->
            <a class="inline-block w-full px-8 py-2 text-xs font-bold leading-normal text-center text-white align-middle transition-all ease-in bg-blue-500 border-0 rounded-lg shadow-md select-none bg-150 bg-x-25 hover:shadow-xs hover:-translate-y-px"
                href="https://www.creative-tim.com/product/argon-dashboard-pro-tailwind?ref=sidebarfree"
                target="_blank">Upgrade to pro</a>
        </div>
    </aside>

    <!-- end sidenav -->

    <main class="relative h-full max-h-screen transition-all duration-200 ease-in-out xl:ml-68 rounded-xl">
        <!-- Navbar -->
        <nav class="relative flex flex-wrap items-center justify-between px-0 py-2 mx-6 transition-all ease-in shadow-none duration-250 rounded-2xl lg:flex-nowrap lg:justify-start"
            navbar-main navbar-scroll="false">
            <div class="flex items-center justify-between w-full px-4 py-1 mx-auto flex-wrap-inherit">
                <nav>
                    <!-- breadcrumb -->
                    <ol class="flex flex-wrap pt-1 mr-12 bg-transparent rounded-lg sm:mr-16">
                        <li class="text-sm leading-normal">
                            <a class="text-white opacity-50" href="javascript:;">Pages</a>
                        </li>
                        <li class="text-sm pl-2 capitalize leading-normal text-white before:float-left before:pr-2 before:text-white before:content-['/']"
                            aria-current="page">Dashboard</li>
                    </ol>
                    <h6 class="mb-0 font-bold text-white capitalize">Dashboard</h6>
                </nav>

                <div class="flex items-center mt-2 grow sm:mt-0 sm:mr-6 md:mr-0 lg:flex lg:basis-auto">
                    <div class="flex items-center md:ml-auto md:pr-4">
                        <div class="relative flex flex-wrap items-stretch w-full transition-all rounded-lg ease">
                            <span
                                class="text-sm ease leading-5.6 absolute z-50 -ml-px flex h-full items-center whitespace-nowrap rounded-lg rounded-tr-none rounded-br-none border border-r-0 border-transparent bg-transparent py-2 px-2.5 text-center font-normal text-slate-500 transition-all">
                                <i class="fas fa-search"></i>
                            </span>
                            <input type="text"
                                class="pl-9 text-sm focus:shadow-primary-outline ease w-1/100 leading-5.6 relative -ml-px block min-w-0 flex-auto rounded-lg border border-solid border-gray-300 dark:bg-slate-850 dark:text-white bg-white bg-clip-padding py-2 pr-3 text-gray-700 transition-all placeholder:text-gray-500 focus:border-blue-500 focus:outline-none focus:transition-shadow"
                                placeholder="Type here..." />
                        </div>
                    </div>
                    <ul class="flex flex-row justify-end pl-0 mb-0 list-none md-max:w-full">
                        <!-- online builder btn  -->
                        <!-- <li class="flex items-center">
                <a class="inline-block px-8 py-2 mb-0 mr-4 text-xs font-bold text-center text-blue-500 uppercase align-middle transition-all ease-in bg-transparent border border-blue-500 border-solid rounded-lg shadow-none cursor-pointer leading-pro hover:-translate-y-px active:shadow-xs hover:border-blue-500 active:bg-blue-500 active:hover:text-blue-500 hover:text-blue-500 tracking-tight-rem hover:bg-transparent hover:opacity-75 hover:shadow-none active:text-white active:hover:bg-transparent" target="_blank" href="https://www.creative-tim.com/builder/soft-ui?ref=navbar-dashboard&amp;_ga=2.76518741.1192788655.1647724933-1242940210.1644448053">Online Builder</a>
              </li> -->
                        <li class="flex items-center">
                            <a href="./pages/sign-in.html"
                                class="block px-0 py-2 text-sm font-semibold text-white transition-all ease-nav-brand">
                                <i class="fa fa-user sm:mr-1"></i>
                                <span class="hidden sm:inline">Sign In</span>
                            </a>
                        </li>
                        <li class="flex items-center pl-4 xl:hidden">
                            <a href="javascript:;" class="block p-0 text-sm text-white transition-all ease-nav-brand"
                                sidenav-trigger>
                                <div class="w-4.5 overflow-hidden">
                                    <i
                                        class="ease mb-0.75 relative block h-0.5 rounded-sm bg-white transition-all"></i>
                                    <i
                                        class="ease mb-0.75 relative block h-0.5 rounded-sm bg-white transition-all"></i>
                                    <i class="ease relative block h-0.5 rounded-sm bg-white transition-all"></i>
                                </div>
                            </a>
                        </li>
                        <li class="flex items-center px-4">
                            <a href="javascript:;" class="p-0 text-sm text-white transition-all ease-nav-brand">
                                <i fixed-plugin-button-nav class="cursor-pointer fa fa-cog"></i>
                                <!-- fixed-plugin-button-nav  -->
                            </a>
                        </li>

                        <!-- notifications -->

                        <li class="relative flex items-center pr-2">
                            <p class="hidden transform-dropdown-show"></p>
                            <a href="javascript:;" class="block p-0 text-sm text-white transition-all ease-nav-brand"
                                dropdown-trigger aria-expanded="false">
                                <i class="cursor-pointer fa fa-bell"></i>
                            </a>

                            <ul dropdown-menu
                                class="text-sm transform-dropdown before:font-awesome before:leading-default before:duration-350 before:ease lg:shadow-3xl duration-250 min-w-44 before:sm:right-8 before:text-5.5 pointer-events-none absolute right-0 top-0 z-50 origin-top list-none rounded-lg border-0 border-solid border-transparent dark:shadow-dark-xl dark:bg-slate-850 bg-white bg-clip-padding px-2 py-4 text-left text-slate-500 opacity-0 transition-all before:absolute before:right-2 before:left-auto before:top-0 before:z-50 before:inline-block before:font-normal before:text-white before:antialiased before:transition-all before:content-['\f0d8'] sm:-mr-6 lg:absolute lg:right-0 lg:left-auto lg:mt-2 lg:block lg:cursor-pointer">
                                <!-- add show class on dropdown open js -->
                                <li class="relative mb-2">
                                    <a class="dark:hover:bg-slate-900 ease py-1.2 clear-both block w-full whitespace-nowrap rounded-lg bg-transparent px-4 duration-300 hover:bg-gray-200 hover:text-slate-700 lg:transition-colors"
                                        href="javascript:;">
                                        <div class="flex py-1">
                                            <div class="my-auto">
                                                <img src="./assets/img/team-2.jpg"
                                                    class="inline-flex items-center justify-center mr-4 text-sm text-white h-9 w-9 max-w-none rounded-xl" />
                                            </div>
                                            <div class="flex flex-col justify-center">
                                                <h6 class="mb-1 text-sm font-normal leading-normal dark:text-white">
                                                    <span class="font-semibold">New message</span> from Laur
                                                </h6>
                                                <p
                                                    class="mb-0 text-xs leading-tight text-slate-400 dark:text-white/80">
                                                    <i class="mr-1 fa fa-clock"></i>
                                                    13 minutes ago
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li class="relative mb-2">
                                    <a class="dark:hover:bg-slate-900 ease py-1.2 clear-both block w-full whitespace-nowrap rounded-lg px-4 transition-colors duration-300 hover:bg-gray-200 hover:text-slate-700"
                                        href="javascript:;">
                                        <div class="flex py-1">
                                            <div class="my-auto">
                                                <img src="./assets/img/small-logos/logo-spotify.svg"
                                                    class="inline-flex items-center justify-center mr-4 text-sm text-white bg-gradient-to-tl from-zinc-800 to-zinc-700 dark:bg-gradient-to-tl dark:from-slate-750 dark:to-gray-850 h-9 w-9 max-w-none rounded-xl" />
                                            </div>
                                            <div class="flex flex-col justify-center">
                                                <h6 class="mb-1 text-sm font-normal leading-normal dark:text-white">
                                                    <span class="font-semibold">New album</span> by Travis Scott
                                                </h6>
                                                <p
                                                    class="mb-0 text-xs leading-tight text-slate-400 dark:text-white/80">
                                                    <i class="mr-1 fa fa-clock"></i>
                                                    1 day
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                                <li class="relative">
                                    <a class="dark:hover:bg-slate-900 ease py-1.2 clear-both block w-full whitespace-nowrap rounded-lg px-4 transition-colors duration-300 hover:bg-gray-200 hover:text-slate-700"
                                        href="javascript:;">
                                        <div class="flex py-1">
                                            <div
                                                class="inline-flex items-center justify-center my-auto mr-4 text-sm text-white transition-all duration-200 ease-nav-brand bg-gradient-to-tl from-slate-600 to-slate-300 h-9 w-9 rounded-xl">
                                                <svg width="12px" height="12px" viewBox="0 0 43 36"
                                                    version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    <title>credit-card</title>
                                                    <g stroke="none" stroke-width="1" fill="none"
                                                        fill-rule="evenodd">
                                                        <g transform="translate(-2169.000000, -745.000000)"
                                                            fill="#FFFFFF" fill-rule="nonzero">
                                                            <g transform="translate(1716.000000, 291.000000)">
                                                                <g transform="translate(453.000000, 454.000000)">
                                                                    <path class="color-background"
                                                                        d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"
                                                                        opacity="0.593633743"></path>
                                                                    <path class="color-background"
                                                                        d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z">
                                                                    </path>
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </svg>
                                            </div>
                                            <div class="flex flex-col justify-center">
                                                <h6 class="mb-1 text-sm font-normal leading-normal dark:text-white">
                                                    Payment successfully completed</h6>
                                                <p
                                                    class="mb-0 text-xs leading-tight text-slate-400 dark:text-white/80">
                                                    <i class="mr-1 fa fa-clock"></i>
                                                    2 days
                                                </p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- end Navbar -->
        <!-- Modal Delete: CENTERED (tanpa overlay gelap) -->
        <div id="delete-modal" class="fixed inset-0 z-[9999] hidden flex items-center justify-center p-4">
            <div class="w-[90%] max-w-md rounded-xl bg-white shadow-xl border border-slate-200">
                <div class="px-5 py-4 border-b">
                    <h3 class="text-base font-semibold text-slate-700">Hapus Pesanan</h3>
                    <p class="mt-1 text-xs text-slate-500">Tindakan ini akan menghapus baris dari tabel (tanpa
                        database).</p>
                </div>
                <div class="px-5 py-4">
                    <p class="text-sm text-slate-600">Apakah kamu yakin ingin <span
                            class="font-semibold text-rose-600">menghapus</span> pesanan ini?</p>
                </div>
                <div class="px-5 py-4 border-t flex items-center justify-end gap-2">
                    <button type="button" onclick="closeDeleteModal()"
                        class="h-9 px-3 rounded-md border border-slate-300 text-slate-700 hover:bg-slate-50 text-sm">Batal</button>
                    <button type="button" onclick="confirmDelete()" class="h-9 px-4 rounded-md text-white text-sm"
                        style="background:#dc2626">Hapus</button>
                </div>
            </div>
        </div>


        <!-- Navbar (biarkan sesuai punyamu) -->
        <nav class="relative flex flex-wrap items-center justify-between px-0 py-2 mx-6 transition-all ease-in shadow-none duration-250 rounded-2xl lg:flex-nowrap lg:justify-start"
            navbar-main navbar-scroll="false">
            <!-- ... isi navbar kamu ... -->
        </nav>


        <!-- CONTENT -->
        <div class="w-full px-6 py-6 mx-auto">
            <!-- Card List + Header -->
            <div class="flex flex-col bg-white shadow-xl border border-gray-200 rounded-2xl">

                <!-- Header (TOMBOL DI KIRI) -->
                <!-- Header: rapi & responsif -->
                <div class="p-6 border-b">
                    <div class="grid grid-cols-1 lg:grid-cols-12 items-center gap-4">
                        <!-- Kiri: judul + subjudul + tombol -->
                        <div class="lg:col-span-7">
                            <div class="flex items-baseline gap-3 flex-wrap">
                                <h5 class="text-slate-700 font-semibold">Data Stok Produk</h5>
                            </div>
                            <p class="mt-1 text-xs text-slate-400">Daftar stok produk</p>
                        </div>

                        <!-- Kanan: search yang tidak terlalu lebar -->
                        <div class="lg:col-span-5">
                            <div class="flex flex-row flex-nowrap items-center gap-3">
                                <!-- Tombol -->
                                <a href="{{ route('stock.create') }}"
                                    class="inline-flex items-center justify-center gap-2
                                            px-4 py-2 text-sm font-semibold text-white
                                            bg-gradient-to-tl from-blue-500 to-violet-500
                                            hover:from-blue-600 hover:to-violet-600
                                            shadow-sm hover:shadow transition
                                            rounded">
                                    Tambah Data
                                </a>



                                <!-- Search kecil -->
                                <div class="relative ml-auto">
                                    <span class="absolute left-3 top-1/2 -translate-y-1/2 text-slate-400">
                                        <i class="fas fa-search text-xs"></i>
                                    </span>
                                    <input id="search-stok" type="text" placeholder="Cari…"
                                        class="h-9 w-44 md:w-56 pl-8 pr-3 rounded-lg border border-slate-300 text-sm
                  placeholder:text-slate-400 focus:border-blue-500 focus:ring-2 focus:ring-blue-200 outline-none">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


                <!-- Table -->
                <div class="p-0 overflow-x-auto">
                    <table class="w-full text-left">
                        <thead>
                            <tr class="text-xs uppercase tracking-wide text-slate-500">
                                <th class="px-6 py-4 text-center">Gambar Produk</th>
                                <th class="px-6 py-4 text-center">Nama Produk</th>
                                <th class="px-6 py-4 text-center">Ukuran</th>
                                <th class="px-6 py-4 text-center">Warna</th>
                                <th class="px-6 py-4 text-center">Kategori</th>
                                <th class="px-6 py-4 text-center">Stok</th>
                                <th class="px-6 py-4 text-center">Harga</th>
                                <th class="px-6 py-4 text-center">Action</th>
                            </tr>
                        </thead>

                        <tbody class="divide-y">
                            <!-- Row 1 -->
                            <tr id="order-1" class="text-sm">
                                <td class="px-6 py-4 w-[88px] md:w-[104px]">
                                    <div class="flex justify-center items-center h-full">
                                        <img src="{{ asset('assets/img/bg1.jpg') }}" alt="dish"
                                            class="h-16 w-16 md:h-20 md:w-20 object-cover rounded-none ring-1 ring-slate-200">
                                    </div>
                                </td>
                                <td class="px-6 py-4 text-center">Kemeja</td>
                                <td class="px-6 py-4 text-center">XL</td>
                                <td class="px-6 py-4 text-center">Merah</td>
                                <td class="px-6 py-4 text-center">Baju Pendek</td>
                                <td class="px-6 py-4 text-center">100</td>
                                <td class="px-6 py-4 text-center">Rp. 150.000</td>


                                <td class="px-6 py-4">
                                    <div class="flex items-center justify-center gap-2 text-center">
                                        <!-- EDIT -->
                                        <a href="{{ route('stock.edit', ['id' => $id ?? 'order-1']) }}"
                                            title="Edit" aria-label="Edit"
                                            class="rounded-md text-white ring-1 ring-sky-700/30 hover:brightness-110"
                                            style="width:36px;height:36px;display:grid;place-items:center;background-color:#0ea5e9;">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                                fill="none" stroke="currentColor" stroke-width="2.8"
                                                stroke-linecap="round" stroke-linejoin="round">
                                                <path d="M12 20h9" />
                                                <path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4 12.5-12.5z" />
                                            </svg>
                                        </a>

                                        <!-- DELETE -->
                                        <button type="button" title="Delete" onclick="openDeleteModal(this)"
                                            class="rounded-md text-white ring-1 ring-rose-700/30 hover:brightness-110"
                                            style="width:36px;height:36px;display:grid;place-items:center;background-color:#dc2626;">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                                fill="none" stroke="currentColor" stroke-width="2.8"
                                                stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="3 6 5 6 21 6" />
                                                <path d="M19 6l-1 14a2 2 0 0 1-2 2H8a2 2 0 0 1-2-2L5 6" />
                                                <path d="M10 11v6M14 11v6" />
                                                <path d="M9 6V4a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2v2" />
                                            </svg>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <!-- Row 2 -->
                            <tr id="order-1" class="text-sm">
                                <td class="px-6 py-4 w-[88px] md:w-[104px]">
                                    <div class="flex justify-center items-center h-full">
                                        <img src="{{ asset('assets/img/bg1.jpg') }}" alt="dish"
                                            class="h-16 w-16 md:h-20 md:w-20 object-cover rounded-none ring-1 ring-slate-200">
                                    </div>
                                </td>
                                <td class="px-6 py-4 text-center">Kemeja</td>
                                <td class="px-6 py-4 text-center">XL</td>
                                <td class="px-6 py-4 text-center">Merah</td>
                                <td class="px-6 py-4 text-center">Baju Pendek</td>
                                <td class="px-6 py-4 text-center">100</td>
                                <td class="px-6 py-4 text-center">Rp. 150.000</td>


                                <td class="px-6 py-4">
                                    <div class="flex items-center justify-center gap-2 text-center">
                                        <!-- EDIT -->
                                        <a href="{{ route('stock.edit', ['id' => $id ?? 'order-1']) }}"
                                            title="Edit" aria-label="Edit"
                                            class="rounded-md text-white ring-1 ring-sky-700/30 hover:brightness-110"
                                            style="width:36px;height:36px;display:grid;place-items:center;background-color:#0ea5e9;">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                                fill="none" stroke="currentColor" stroke-width="2.8"
                                                stroke-linecap="round" stroke-linejoin="round">
                                                <path d="M12 20h9" />
                                                <path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4 12.5-12.5z" />
                                            </svg>
                                        </a>

                                        <!-- DELETE -->
                                        <button type="button" title="Delete" onclick="openDeleteModal(this)"
                                            class="rounded-md text-white ring-1 ring-rose-700/30 hover:brightness-110"
                                            style="width:36px;height:36px;display:grid;place-items:center;background-color:#dc2626;">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                                fill="none" stroke="currentColor" stroke-width="2.8"
                                                stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="3 6 5 6 21 6" />
                                                <path d="M19 6l-1 14a2 2 0 0 1-2 2H8a2 2 0 0 1-2-2L5 6" />
                                                <path d="M10 11v6M14 11v6" />
                                                <path d="M9 6V4a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2v2" />
                                            </svg>
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            <!-- Row 3 -->
                            <tr id="order-1" class="text-sm">
                                <td class="px-6 py-4 w-[88px] md:w-[104px]">
                                    <div class="flex justify-center items-center h-full">
                                        <img src="{{ asset('assets/img/bg1.jpg') }}" alt="dish"
                                            class="h-16 w-16 md:h-20 md:w-20 object-cover rounded-none ring-1 ring-slate-200">
                                    </div>
                                </td>
                                <td class="px-6 py-4 text-center">Kemeja</td>
                                <td class="px-6 py-4 text-center">XL</td>
                                <td class="px-6 py-4 text-center">Merah</td>
                                <td class="px-6 py-4 text-center">Baju Pendek</td>
                                <td class="px-6 py-4 text-center">100</td>
                                <td class="px-6 py-4 text-center">Rp. 150.000</td>


                                <td class="px-6 py-4">
                                    <div class="flex items-center justify-center gap-2 text-center">
                                        <!-- EDIT -->
                                        <a href="{{ route('stock.edit', ['id' => $id ?? 'order-1']) }}"
                                            title="Edit" aria-label="Edit"
                                            class="rounded-md text-white ring-1 ring-sky-700/30 hover:brightness-110"
                                            style="width:36px;height:36px;display:grid;place-items:center;background-color:#0ea5e9;">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                                fill="none" stroke="currentColor" stroke-width="2.8"
                                                stroke-linecap="round" stroke-linejoin="round">
                                                <path d="M12 20h9" />
                                                <path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4 12.5-12.5z" />
                                            </svg>
                                        </a>

                                        <!-- DELETE -->
                                        <button type="button" title="Delete" onclick="openDeleteModal(this)"
                                            class="rounded-md text-white ring-1 ring-rose-700/30 hover:brightness-110"
                                            style="width:36px;height:36px;display:grid;place-items:center;background-color:#dc2626;">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
                                                fill="none" stroke="currentColor" stroke-width="2.8"
                                                stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="3 6 5 6 21 6" />
                                                <path d="M19 6l-1 14a2 2 0 0 1-2 2H8a2 2 0 0 1-2-2L5 6" />
                                                <path d="M10 11v6M14 11v6" />
                                                <path d="M9 6V4a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2v2" />
                                            </svg>
                                        </button>
                                    </div>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>


                <!-- Footer: info + pagination -->
                <div class="flex flex-col md:flex-row items-start md:items-center justify-between gap-3 p-6 border-t">
                    <p class="text-xs text-slate-400">Menampilkan 1–3 dari 3 data</p>

                    <div class="flex items-center gap-1">
                        <button class="px-3 py-1.5 text-xs rounded-md border border-slate-300 hover:bg-slate-50">
                            <i class="fa fa-chevron-left text-[10px]"></i>
                        </button>
                        <button
                            class="px-3 py-1.5 text-xs rounded-md border border-slate-300 bg-slate-900 text-white">1</button>
                        <button
                            class="px-3 py-1.5 text-xs rounded-md border border-slate-300 hover:bg-slate-50">2</button>
                        <button class="px-3 py-1.5 text-xs rounded-md border border-slate-300 hover:bg-slate-50">
                            <i class="fa fa-chevron-right text-[10px]"></i>
                        </button>
                    </div>
                </div>

            </div>
        </div>
        <!-- /CONTENT -->
        <script>
            // ====== DELETE MODAL ======
            function openDeleteModal(btn) {
                const tr = btn.closest('tr');
                if (!tr || !tr.id) return;
                __activeRowId = tr.id;
                document.getElementById('delete-modal').classList.remove('hidden');
            }

            function closeDeleteModal() {
                document.getElementById('delete-modal').classList.add('hidden');
                __activeRowId = null;
            }

            function confirmDelete() {
                if (!__activeRowId) return;
                const row = document.getElementById(__activeRowId);
                if (row) row.remove(); // hapus baris dari DOM (tanpa DB)
                closeDeleteModal();
            }

            // Tutup modal delete saat klik area luar
            document.getElementById('delete-modal')?.addEventListener('click', function(e) {
                if (e.target === this) closeDeleteModal();
            });

            // Tutup modal dengan ESC (keduanya)
            document.addEventListener('keydown', function(e) {
                if (e.key === 'Escape') {
                    closeApproveModal();
                    closeDeleteModal();
                }
            });
        </script>



    </main>
</body>

</html>
