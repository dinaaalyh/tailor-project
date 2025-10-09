@extends('layouts.app')
@section('title', 'Edit Produk')

@php
  // ===== Dummy data (dipakai jika controller/route tidak mengirim $product) =====
  $product = $product ?? [
    'id'        => $id ?? 'order-1',
    'nama'      => 'Kemeja Oxford Premium',
    'ukuran'    => 'S, M, L, XL',
    'harga'     => 159000,
    'stok'      => 12,
    'warna'     => 'navy',
    'kategori'  => 'kemeja',
    'deskripsi' => 'Kemeja bahan oxford premium, potongan regular fit, nyaman dipakai harian.',
    // url gambar contoh, boleh kosong
    'gambar_url'=> asset('assets/img/bg1.jpg'),
  ];

  $opsiWarna = [
    'hitam','putih','abu-abu','cream','beige','khaki','coklat','navy',
    'merah','biru','hijau','kuning','ungu','pink',
    'pastel-pink','pastel-blue','pastel-green','lavender','mint','peach'
  ];

  $opsiKategori = [
    'gamis' => 'Gamis',
    'baju-pendek' => 'Baju Pendek',
    'kemeja' => 'Kemeja',
    'outer' => 'Outer',
    'celana' => 'Celana',
  ];
@endphp

@section('content')
<div class="w-full px-6 py-6 mx-auto">

  {{-- Header --}}
  <div class="w-full mb-6">
    <h3 class="font-bold text-xl text-white">Edit Produk</h3>
  </div>

  {{-- Flash success (opsional) --}}
  @if (session('ok'))
    <div class="mb-4 rounded-lg border border-emerald-200 bg-emerald-50 px-4 py-3 text-emerald-700">
      {{ session('ok') }}
    </div>
  @endif

  {{-- Card --}}
  <div class="relative flex flex-col break-words bg-white dark:bg-slate-900 border-0 shadow-soft-xl rounded-xl p-6 text-slate-700 dark:text-slate-100">

    {{-- Grid 12 kolom => 3 kolom @md --}}
    <form method="POST" action="#" enctype="multipart/form-data"
          class="grid grid-cols-1 md:grid-cols-12 gap-y-6 md:gap-x-8 lg:gap-x-12">
      @csrf

      {{-- Hidden id (slicing) --}}
      <input type="hidden" name="id" value="{{ $product['id'] }}">

      {{-- ===== Kolom 1 ===== --}}
      <div class="md:col-span-4 space-y-6">
        {{-- Nama Produk --}}
        <div>
          <label for="nama_produk" class="block text-xs font-semibold mb-1.5">
            Nama Produk <span class="text-rose-500">*</span>
          </label>
          <input id="nama_produk" type="text" name="nama_produk" placeholder="Nama Produk"
                 value="{{ $product['nama'] }}"
                 class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800 placeholder:text-slate-400 focus:ring-2 focus:ring-blue-200 focus:border-blue-500">
        </div>

        {{-- Ukuran --}}
        <div>
          <label for="ukuran" class="block text-xs font-semibold mb-1.5">
            Ukuran Produk <span class="text-rose-500">*</span>
          </label>
          <input id="ukuran" type="text" name="ukuran" placeholder="Pisahkan dengan koma (S, M, L…)"
                 value="{{ $product['ukuran'] }}"
                 class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
          <div class="mt-2 flex flex-wrap gap-1.5">
            @foreach (['XS','S','M','L','XL','XXL'] as $sz)
              <span class="px-2 py-0.5 text-[11px] rounded bg-violet-600/10 text-violet-600 border border-violet-200 dark:border-violet-700">{{ $sz }}</span>
            @endforeach
          </div>
        </div>

        {{-- Harga + Stok --}}
        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <div>
            <label for="harga" class="block text-xs font-semibold mb-1.5">
              Harga Produk <span class="text-rose-500">*</span>
            </label>
            <input id="harga" type="number" inputmode="numeric" name="harga" placeholder="cth: 150000"
                   value="{{ $product['harga'] }}"
                   class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
          </div>
          <div>
            <label for="stok" class="block text-xs font-semibold mb-1.5">
              Stok Produk <span class="text-rose-500">*</span>
            </label>
            <input id="stok" type="number" name="stok" placeholder="Jumlah Stok"
                   value="{{ $product['stok'] }}"
                   class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
          </div>
        </div>
      </div>

      {{-- ===== Kolom 2 ===== --}}
      <div class="md:col-span-4 space-y-6">
        {{-- Warna --}}
        <div>
          <label for="warna" class="block text-xs font-semibold mb-1.5">
            Pilih Warna <span class="text-rose-500">*</span>
          </label>
          <select id="warna" name="warna"
                  class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
            <option disabled>Pilih Warna</option>
            @foreach ($opsiWarna as $w)
              <option value="{{ $w }}" @selected($product['warna'] === $w)>{{ ucwords(str_replace('-', ' ', $w)) }}</option>
            @endforeach
          </select>
        </div>

        {{-- Kategori --}}
        <div>
          <label for="kategori" class="block text-xs font-semibold mb-1.5">
            Kategori <span class="text-rose-500">*</span>
          </label>
          <select id="kategori" name="kategori"
                  class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 h-10 text-sm bg-white dark:bg-slate-800">
            <option disabled>Pilih Kategori</option>
            @foreach ($opsiKategori as $val => $label)
              <option value="{{ $val }}" @selected($product['kategori'] === $val)>{{ $label }}</option>
            @endforeach
          </select>
        </div>

        {{-- Deskripsi --}}
        <div>
          <label for="deskripsi_pendek" class="block text-xs font-semibold mb-1.5">
            Deskripsi <span class="text-rose-500">*</span>
          </label>
          <textarea id="deskripsi_pendek" name="deskripsi_pendek" rows="5" placeholder="Masukan deskripsi singkat produk"
                    class="w-full rounded-lg border border-slate-300 dark:border-slate-700 px-3 py-2 text-sm bg-white dark:bg-slate-800">{{ $product['deskripsi'] }}</textarea>
        </div>
      </div>

      {{-- ===== Kolom 3 ===== --}}
      <div class="md:col-span-4 space-y-6">
        {{-- Upload + preview --}}
        <div>
          <label class="block text-xs font-semibold text-slate-700 dark:text-slate-200 mb-1.5">Gambar Produk</label>

          <div class="flex items-center gap-4">
            {{-- Preview gambar saat ini --}}
            <div class="w-24 h-24 rounded-lg ring-1 ring-slate-200 overflow-hidden bg-slate-50 dark:bg-slate-800 grid place-items-center">
              @if (!empty($product['gambar_url']))
                <img id="preview-img" src="{{ $product['gambar_url'] }}" alt="Preview" class="w-full h-full object-cover">
              @else
                <img id="preview-img" src="" alt="Preview" class="hidden w-full h-full object-cover">
                <svg id="preview-icon" xmlns="http://www.w3.org/2000/svg" class="w-8 h-8 text-slate-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M4 16v2a2 2 0 002 2h12a2 2 0 002-2v-2M7 10l5-5m0 0l5 5m-5-5v12" />
                </svg>
              @endif
            </div>

            {{-- Dropzone sederhana --}}
            <label for="gambar" class="flex-1">
              <div class="relative flex flex-col items-center justify-center w-full h-28 border-2 border-dashed border-slate-300 rounded-lg cursor-pointer hover:border-blue-400 hover:bg-blue-50 dark:hover:bg-slate-800/40 transition">
                <input type="file" accept="image/*,.pdf" name="gambar" id="gambar"
                       class="absolute inset-0 w-full h-full opacity-0 cursor-pointer" />
                <p class="text-xs text-slate-600 dark:text-slate-300">
                  <span class="font-medium text-blue-600">Ganti gambar</span> atau drag & drop
                </p>
                <p class="text-[11px] text-slate-400">PNG, JPG, PDF · maks 2MB</p>
              </div>
            </label>
          </div>

          {{-- Nama file terpilih --}}
          <p id="file-name" class="mt-2 text-xs text-slate-500"></p>
        </div>
      </div>

      {{-- ===== Aksi ===== --}}
      <div class="md:col-span-12 pt-6 border-t border-slate-200 dark:border-slate-800">
        <div class="flex items-center gap-3">
          <a href="{{ route('stock') }}"
             class="inline-flex items-center justify-center h-10 px-4 rounded-md border border-slate-200 dark:border-slate-700
                    text-slate-700 dark:text-slate-200 hover:bg-slate-100 dark:hover:bg-slate-800 text-sm">
            Kembali
          </a>
          <button type="submit"
                  class="inline-flex items-center justify-center h-10 px-5 rounded-md text-sm text-white
                         shadow-md bg-gradient-to-tl from-blue-500 to-violet-500 hover:opacity-95">
            <i class="fa fa-save text-xs mr-2"></i>
            Simpan Perubahan (Dummy)
          </button>
        </div>
      </div>
    </form>
  </div>
</div>

{{-- Script kecil untuk preview upload (slicing) --}}
@push('scripts')
<script>
(function () {
  const input = document.getElementById('gambar');
  const img   = document.getElementById('preview-img');
  const icon  = document.getElementById('preview-icon');
  const nameEl= document.getElementById('file-name');

  if (!input) return;

  input.addEventListener('change', function () {
    const file = this.files?.[0];
    if (!file) {
      nameEl.textContent = '';
      return;
    }
    nameEl.textContent = file.name;

    if (file.type.startsWith('image/')) {
      const reader = new FileReader();
      reader.onload = e => {
        if (img) {
          img.src = e.target?.result || '';
          img.classList.remove('hidden');
        }
        if (icon) icon.classList.add('hidden');
      };
      reader.readAsDataURL(file);
    }
  });
})();
</script>
@endpush
@endsection
