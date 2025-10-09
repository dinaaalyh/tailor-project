@extends('layouts.app')
@section('title', 'Tambah Produk')

@section('content')
    <div class="w-full px-6 py-6 mx-auto">

        {{-- Header --}}
        <div class="w-full mb-6">
            <h3 class="font-bold text-xl text-white">Tambah Produk</h3>
        </div>

        {{-- Flash success (opsional) --}}
        @if (session('ok'))
            <div class="mb-4 rounded-lg border border-emerald-200 bg-emerald-50 px-4 py-3 text-emerald-700">
                {{ session('ok') }}
            </div>
        @endif

        {{-- Card --}}
        <div
            class="relative flex flex-col break-words bg-white dark:bg-slate-900 border-0 shadow-soft-xl rounded-xl p-6 text-slate-700 dark:text-slate-100">
            <form method="POST" action="#" enctype="multipart/form-data"
                class="grid grid-cols-1 md:grid-cols-12 gap-y-6 md:gap-x-8 lg:gap-x-12">
                @csrf

                {{-- ====== Kolom 1 ====== --}}
                <div class="col-span-12 md:col-span-4 space-y-10">
                    {{-- Nama Produk --}}
                    <div>
                        <label class="block text-xs font-semibold mb-1.5">Nama Produk <span
                                class="text-rose-500">*</span></label>
                        <input type="text" name="nama_produk" placeholder="Nama Produk"
                            class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800 placeholder:text-slate-400 focus:ring-2 focus:ring-blue-200 focus:border-blue-500">
                    </div>

                    {{-- Ukuran Produk (chips contoh) --}}
                    <div>
                        <label class="block text-xs font-semibold mb-1.5">Ukuran Produk <span
                                class="text-rose-500">*</span></label>
                        <input type="text" name="ukuran" placeholder="Pisahkan dengan koma (S, M, L…) "
                            class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
                        <div class="mt-2 flex flex-wrap gap-1.5">
                            <span
                                class="px-2 py-0.5 text-[11px] rounded bg-violet-600/10 text-violet-600 border border-violet-200 dark:border-violet-700">XL</span>
                            <span
                                class="px-2 py-0.5 text-[11px] rounded bg-violet-600/10 text-violet-600 border border-violet-200 dark:border-violet-700">XS</span>
                            <span
                                class="px-2 py-0.5 text-[11px] rounded bg-violet-600/10 text-violet-600 border border-violet-200 dark:border-violet-700">S</span>
                            <span
                                class="px-2 py-0.5 text-[11px] rounded bg-violet-600/10 text-violet-600 border border-violet-200 dark:border-violet-700">M</span>
                            <span
                                class="px-2 py-0.5 text-[11px] rounded bg-violet-600/10 text-violet-600 border border-violet-200 dark:border-violet-700">L</span>
                        </div>
                    </div>
                    <br>

                    {{-- Harga & Diskon --}}
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="block text-xs font-semibold mb-1.5">Harga Produk <span
                                    class="text-rose-500">*</span></label>
                            <input type="number" name="harga" placeholder="Harga Produk"
                                class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
                        </div>
                    </div>
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="block text-xs font-semibold mb-1.5">Stok Produk <span
                                    class="text-rose-500">*</span></label>
                            <input type="number" name="stok" placeholder="Jumlah Stok Produk"
                                class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
                        </div>
                    </div>
                </div>

                {{-- ====== Kolom 2 ====== --}}
                <div class="col-span-12 md:col-span-4 space-y-10">
                    {{-- Berat & Stok --}}

                    {{-- Pilih Merek & Sub Kategori --}}
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div>
                            <label class="block text-xs font-semibold mb-1.5">Pilih Warna<span
                                    class="text-rose-500">*</span></label>
                            <select name="merek"
                                class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
                                <option selected>Pilih Pilih Warna</option>
                                <option value="hitam">Hitam</option>
                                <option value="putih">Putih</option>
                                <option value="abu-abu">Abu-abu</option>
                                <option value="cream">Cream</option>
                                <option value="beige">Beige</option>
                                <option value="khaki">Khaki</option>
                                <option value="coklat">Coklat</option>
                                <option value="navy">Navy</option>
                                <option value="pastel-pink">Pastel Pink</option>
                                <option value="pastel-blue">Pastel Blue</option>
                                <option value="pastel-green">Pastel Green</option>
                                <option value="lavender">Lavender</option>
                                <option value="mint">Mint</option>
                                <option value="peach">Peach</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-span-12 md:col-span-4 space-y-10">
                        {{-- Kategori & Sub-Sub --}}
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <div>
                                <label class="block text-xs font-semibold mb-1.5">Kategori <span
                                        class="text-rose-500">*</span></label>
                                <select name="kategori"
                                    class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
                                    <option selected>Pilih Kategori</option>
                                    <option>Gamis</option>
                                    <option>Baju pendek</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <br>

                    {{-- Produk (Thumbnail) --}}
                    <div class="md:col-span-4">
                        <label class="block text-xs font-semibold text-slate-700 mb-1.5">Upload Product</label>
                        <div
                            class="relative flex flex-col items-center justify-center w-full h-32 border-2 border-dashed border-slate-300 rounded-lg cursor-pointer hover:border-blue-400 hover:bg-blue-50 transition">
                            <input type="file" name="ktp" id="ktpInput"
                                class="absolute inset-0 w-full h-full opacity-0 cursor-pointer" />
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 text-slate-400 mb-1.5" fill="none"
                                viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M4 16v2a2 2 0 002 2h12a2 2 0 002-2v-2M7 10l5-5m0 0l5 5m-5-5v12" />
                            </svg>
                            <p class="text-xs text-slate-500"><span class="font-medium text-blue-600">Click to upload</span>
                                or
                                drag & drop</p>
                            <p class="text-[11px] text-slate-400">PNG, JPG, PDF up to 2MB</p>
                        </div>
                    </div>
                    <div>
                        <label class="block text-xs font-semibold mb-1.5">Deskripsi <span
                                class="text-rose-500">*</span></label>
                        <textarea name="deskripsi_pendek" rows="3" placeholder="Masukan Deskripsi"
                            class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 py-2 text-sm bg-white dark:bg-slate-800"></textarea>
                    </div>
                </div>


                {{-- Aksi --}}
                <div class="md:col-span-12 pt-6 border-t border-slate-200 dark:border-slate-800">
                    <div class="flex items-center gap-3">
                        <a href="{{ url()->previous() }}"
                            class="inline-flex items-center justify-center h-10 px-4 rounded-lg border border-slate-200 dark:border-slate-700
                    text-slate-700 dark:text-slate-200 hover:bg-slate-100 dark:hover:bg-slate-800 text-sm">
                            Batal
                        </a>
                        <button type="submit"
                            class="inline-flex items-center justify-center h-10 px-5 rounded-lg text-sm text-white
                         shadow-md bg-gradient-to-tl from-blue-500 to-violet-500 hover:opacity-95">
                            <i class="fa fa-save text-xs mr-2"></i>
                            Simpan Data
                        </button>
                    </div>
                </div>

            </form>
        </div>
    </div>
@endsection
