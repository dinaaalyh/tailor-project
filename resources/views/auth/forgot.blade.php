@extends('layouts.auth')
@section('title','Lupa Kata Sandi')

@section('content')
<main class="grid min-h-screen grid-cols-1 md:grid-cols-2">

  {{-- Kiri: hero --}}
  <section class="hidden md:flex items-center justify-center p-10
                  bg-gradient-to-br from-brand-600 via-brand-700 to-brand-900 text-white">
    <div class="max-w-md">
      <div class="mb-6 inline-flex items-center gap-3">
        <div class="h-10 w-10 rounded-xl bg-white/20 backdrop-blur ring-1 ring-white/30 grid place-items-center">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor">
            <path d="M12 3l8 4.5v9L12 21l-8-4.5v-9L12 3z"/>
          </svg>
        </div>
        <p class="text-sm tracking-wide uppercase text-white/80">Pulihkan Akses</p>
      </div>
      <h1 class="text-4xl font-semibold leading-tight">
        Lupa kata sandi? <span class="text-brand-300">Tenang.</span>
      </h1>
      <p class="mt-4 text-white/80">Masukkan email Anda, kami kirim tautan reset. (Slicing Laravel, tombol tidak benar-benar mengirim.)</p>
    </div>
  </section>

  {{-- Kanan: form --}}
  <section class="flex items-center justify-center p-6 sm:p-10 bg-white md:border-l md:border-slate-200">
    <div class="w-full max-w-md">
      <div class="relative rounded-2xl border border-slate-200 bg-white shadow-xl">
        <div class="p-6 sm:p-8">

          {{-- header --}}
          <div class="mb-6 flex items-center gap-3">
            <div class="h-10 w-10 rounded-xl bg-brand-600 text-white grid place-items-center shadow ring-1 ring-brand-700/50">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor">
                <path d="M12 1.75a5.25 5.25 0 00-5.25 5.25V9H5a2 2 0 00-2 2v7a2 2 0 002 2h14a2 2 0 002-2v-7a2 2 0 00-2-2h-1.75V7A5.25 5.25 0 0012 1.75z"/>
              </svg>
            </div>
            <div>
              <h2 class="text-xl font-semibold text-slate-900">Lupa Kata Sandi</h2>
              <p class="text-sm text-slate-500">Kami akan mengirim link reset ke email Anda.</p>
            </div>
          </div>

          {{-- form (non-submit) --}}
          <form id="forgotForm" onsubmit="return false" class="space-y-4">
            <div>
              <label for="email" class="mb-1 block text-sm font-medium text-slate-700">Email</label>
              <div class="relative">
                <span class="pointer-events-none absolute left-3 top-1/2 -translate-y-1/2 text-slate-400">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor">
                    <path d="M2.25 6.75c0-.966.784-1.75 1.75-1.75h16c.966 0 1.75.784 1.75 1.75v10.5c0 .966-.784 1.75-1.75 1.75H4a1.75 1.75 0 01-1.75-1.75V6.75Zm1.75 0l8 5 8-5"/>
                  </svg>
                </span>
                <input id="email" type="email" inputmode="email" autocomplete="email"
                       class="w-full rounded-lg border border-slate-300 bg-white pl-10 pr-3 py-2.5 text-sm text-slate-900 placeholder-slate-400 shadow-sm outline-none transition
                              focus:border-brand-500 focus:ring-2 focus:ring-brand-500/40"
                       placeholder="nama@email.com" />
              </div>
              <p id="emailError" class="mt-1 hidden text-xs text-red-600">Email tidak valid.</p>
            </div>

            <button id="sendReset" type="button"
              class="inline-flex w-full items-center justify-center gap-2 rounded-xl
                     bg-gradient-to-tr from-brand-600 to-brand-500
                     px-4 py-2.5 text-sm font-semibold text-white
                     shadow-lg shadow-brand-600/20 ring-1 ring-white/10
                     transition hover:opacity-95 focus:outline-none focus:ring-2 focus:ring-brand-500/50">
              <svg class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor">
                <path d="M16.5 12a4.5 4.5 0 11-9 0 4.5 4.5 0 019 0zm-3.75 7.5l-1.5-3h3l-1.5 3z"/>
              </svg>
              Kirim Link Reset
            </button>
          </form>

          <div class="mt-6 text-center text-xs text-slate-500">
            Sudah ingat kata sandi?
            <a href="{{ route('login') }}" class="font-semibold text-brand-700 hover:underline">Kembali ke Login</a>
          </div>
        </div>
      </div>

      <p class="mt-8 text-center text-xs text-slate-400">© <span id="y"></span> Brand Anda. Slicing Tailwind.</p>
    </div>
  </section>

</main>
@endsection

@push('scripts')
<script>
  // tahun footer
  const y = document.getElementById('y');
  if (y) y.textContent = new Date().getFullYear();

  // interaksi tombol (slicing)
  (function(){
    const form   = document.getElementById('forgotForm');
    const email  = document.getElementById('email');
    const error  = document.getElementById('emailError');
    const btn    = document.getElementById('sendReset');

    const isValidEmail = (v) => /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(v);

    btn?.addEventListener('click', () => {
      const val = (email.value || '').trim();

      // validasi sederhana
      if (!isValidEmail(val)) {
        error.classList.remove('hidden');
        email.classList.add('border-red-500','focus:border-red-500','focus:ring-red-500/30');
        email.focus();
        return;
      }
      error.classList.add('hidden');
      email.classList.remove('border-red-500','focus:border-red-500','focus:ring-red-500/30');

      // loading state
      btn.disabled = true;
      const oldHTML = btn.innerHTML;
      btn.innerHTML = `
        <svg class="h-5 w-5 animate-spin" viewBox="0 0 24 24" fill="none">
          <circle cx="12" cy="12" r="10" stroke="currentColor" class="opacity-25" stroke-width="4"></circle>
          <path d="M4 12a8 8 0 018-8" stroke="currentColor" class="opacity-75" stroke-width="4"></path>
        </svg>
        Mengirim...
      `;

      // simulasi pengiriman (slicing-only)
      setTimeout(() => {
        const cardBody = form.parentElement; // <div class="p-6 sm:p-8">
        cardBody.innerHTML = `
          <div class="text-center space-y-3">
            <div class="mx-auto h-12 w-12 rounded-2xl bg-green-100 text-green-700 grid place-items-center">
              <svg class="h-6 w-6" viewBox="0 0 24 24" fill="currentColor"><path d="M9 12l2 2 4-4 1.5 1.5L11 17 7.5 13.5 9 12z"/></svg>
            </div>
            <h2 class="text-xl font-semibold text-slate-900">Link reset terkirim</h2>
            <p class="text-sm text-slate-600">Kami telah mengirim tautan reset ke <span class="font-medium text-slate-900">${val}</span>. Silakan cek kotak masuk atau folder spam.</p>
            <div class="pt-2 grid gap-2">
              <a href="https://mail.google.com" target="_blank"
                 class="inline-flex items-center justify-center gap-2 rounded-lg border border-slate-200 bg-white px-4 py-2 text-sm font-medium text-slate-700 hover:bg-slate-50">
                Buka email
              </a>
              <a href="{{ route('login') }}"
                 class="inline-flex items-center justify-center gap-2 rounded-lg bg-brand-600 px-4 py-2 text-sm font-semibold text-white hover:opacity-95">
                Kembali ke Login
              </a>
            </div>
          </div>
        `;
      }, 900);
    });
  })();
</script>
@endpush
