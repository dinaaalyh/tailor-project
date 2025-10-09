@extends('layouts.auth')
@section('title','Masuk – Slicing Modern')

@section('content')
<main class="grid min-h-screen grid-cols-1 md:grid-cols-2">

  {{-- Kiri: hero panel --}}
  <section class="hidden md:flex items-center justify-center p-10 bg-gradient-to-br from-brand-600 via-brand-700 to-brand-900 text-white">
    <div class="max-w-md">
      <div class="mb-6 inline-flex items-center gap-3">
        <div class="h-10 w-10 rounded-xl bg-white/20 backdrop-blur ring-1 ring-white/30 grid place-items-center">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor"><path d="M12 3l8 4.5v9L12 21l-8-4.5v-9L12 3z"/></svg>
        </div>
        <p class="text-sm tracking-wide uppercase text-white/80">Selamat Datang</p>
      </div>
      <h1 class="text-4xl font-semibold leading-tight">Masuk & kelola akun Anda dengan tampilan modern.</h1>
      <p class="mt-4 text-white/80">Slicing Laravel tanpa backend: fokus UI, responsif, dark-mode friendly.</p>
    </div>
  </section>

  {{-- Kanan: form --}}
  <section class="flex items-center justify-center p-6 sm:p-10 bg-white dark:bg-white md:border-l md:border-slate-200">
    <div class="w-full max-w-md">
      <div class="relative rounded-2xl border border-slate-200 bg-white shadow-xl">
        <div class="p-6 sm:p-8">

          {{-- header --}}
          <div class="mb-6 flex items-center gap-3">
            <div class="h-10 w-10 rounded-xl bg-brand-600 text-white grid place-items-center shadow ring-1 ring-brand-700/50">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor">
                <path d="M7 4h10l3 4v10a2 2 0 01-2 2H6a2 2 0 01-2-2V6a2 2 0 012-2z"/>
              </svg>
            </div>
            <div>
              <h2 class="text-xl font-semibold text-slate-900">Masuk ke Akun</h2>
              <p class="text-sm text-slate-500">Snayzzy Shop — slicing only.</p>
            </div>
          </div>

          {{-- SSO dummy --}}
          <div class="mb-6 grid grid-cols-3 gap-3">
            <button type="button" class="inline-flex items-center justify-center gap-2 rounded-lg border border-slate-200 bg-white px-3 py-2 text-sm font-medium text-slate-700 shadow-sm hover:bg-slate-50 focus:outline-none focus:ring-2 focus:ring-brand-500">
              <img alt="Google" src="https://www.svgrepo.com/show/475656/google-color.svg" class="h-4 w-4"/>
            </button>
            <button type="button" class="inline-flex items-center justify-center gap-2 rounded-lg border border-slate-200 bg-white px-3 py-2 text-sm font-medium text-slate-700 shadow-sm hover:bg-slate-50 focus:outline-none focus:ring-2 focus:ring-brand-500">
              <img alt="GitHub" src="https://www.svgrepo.com/show/475654/github-color.svg" class="h-4 w-4"/>
            </button>
            <button type="button" class="inline-flex items-center justify-center gap-2 rounded-lg border border-slate-200 bg-white px-3 py-2 text-sm font-medium text-slate-700 shadow-sm hover:bg-slate-50 focus:outline-none focus:ring-2 focus:ring-brand-500">
              <img alt="Facebook" src="https://www.svgrepo.com/show/475647/facebook-color.svg" class="h-4 w-4"/>
            </button>
          </div>

          {{-- divider --}}
          <div class="mb-6 flex items-center gap-3">
            <div class="h-px flex-1 bg-slate-200"></div>
            <span class="text-xs uppercase tracking-wider text-slate-400">atau</span>
            <div class="h-px flex-1 bg-slate-200"></div>
          </div>

          {{-- form (slicing + validasi JS) --}}
          <form id="loginForm" onsubmit="return false" novalidate class="space-y-4">
            {{-- Email (Gmail) --}}
            <div>
              <label for="email" class="mb-1 block text-sm font-medium text-slate-700">Email (Gmail)</label>
              <div class="relative">
                <span class="pointer-events-none absolute left-3 top-1/2 -translate-y-1/2 text-slate-400">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor"><path d="M2.25 6.75c0-.966.784-1.75 1.75-1.75h16c.966 0 1.75.784 1.75 1.75v10.5c0 .966-.784 1.75-1.75 1.75H4a1.75 1.75 0 01-1.75-1.75V6.75Zm1.75 0l8 5 8-5"/></svg>
                </span>
                <input id="email" type="email"
                       class="w-full rounded-lg border border-slate-300 bg-white pl-10 pr-3 py-2.5 text-sm text-slate-900 placeholder-slate-400 shadow-sm outline-none transition
                              focus:border-brand-500 focus:ring-2 focus:ring-brand-500/40"
                       placeholder="nama@gmail.com" />
              </div>
              <p id="emailErr" class="mt-1 hidden text-xs text-red-600">Gunakan alamat Gmail yang valid (contoh: nama@gmail.com).</p>
            </div>

            {{-- Password --}}
            <div>
              <div class="mb-1 flex items-center justify-between">
                <label for="password" class="block text-sm font-medium text-slate-700">Kata Sandi</label>
                <a href="{{ route('password.request') }}" class="text-xs font-medium text-brand-700 hover:underline">Lupa kata sandi?</a>
              </div>
              <div class="relative">
                <span class="pointer-events-none absolute left-3 top-1/2 -translate-y-1/2 text-slate-400">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor"><path d="M12 1.75a5.25 5.25 0 00-5.25 5.25v2H5a2 2 0 00-2 2V19a2 2 0 002 2h14a2 2 0 002-2v-7.75a2 2 0 00-2-2h-1.75v-2A5.25 5.25 0 0012 1.75zm-3.75 5.25a3.75 3.75 0 117.5 0v2h-7.5v-2z"/></svg>
                </span>
                <input id="password" type="password"
                       class="w-full rounded-lg border border-slate-300 bg-white pl-10 pr-10 py-2.5 text-sm text-slate-900 placeholder-slate-400 shadow-sm outline-none transition
                              focus:border-brand-500 focus:ring-2 focus:ring-brand-500/40"
                       placeholder="Minimal 8 karakter" />
                <button type="button" id="togglePass"
                        class="absolute right-2.5 top-1/2 -translate-y-1/2 rounded-md p-1.5 text-slate-400 hover:text-slate-600 focus:outline-none focus:ring-2 focus:ring-brand-500/40"
                        aria-label="Tampilkan password">
                  <svg id="eyeIcon" xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor">
                    <path d="M12 5c-7 0-10 7-10 7s3 7 10 7 10-7 10-7-3-7-10-7zm0 11a4 4 0 110-8 4 4 0 010 8z"/>
                  </svg>
                </button>
              </div>
              <p id="passErr" class="mt-1 hidden text-xs text-red-600"></p>
            </div>

            {{-- Remember --}}
            <div class="flex items-center justify-between">
              <label class="inline-flex items-center gap-2 text-sm text-slate-700">
                <input type="checkbox" class="h-4 w-4 rounded border-slate-300 text-brand-600 focus:ring-brand-500" />
                Ingat saya
              </label>
            </div>

            {{-- tombol --}}
            <button id="btnLogin" type="button"
                    class="inline-flex w-full items-center justify-center gap-2 rounded-xl
                           bg-gradient-to-tr from-brand-600 to-brand-500
                           px-4 py-2.5 text-sm font-semibold text-white
                           shadow-lg shadow-brand-600/20 ring-1 ring-white/10
                           transition hover:opacity-95 focus:outline-none focus:ring-2 focus:ring-brand-500/50">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 24 24" fill="currentColor">
                <path d="M5 12h14M12 5l7 7-7 7"/>
              </svg>
              Masuk
            </button>
          </form>

          <p class="mt-6 text-center text-xs text-slate-500">
            Belum punya akun? <a href="#" class="font-semibold text-brand-700 hover:underline">Daftar</a>
          </p>
        </div>
      </div>
    </div>
  </section>
</main>
@endsection

@push('scripts')
<script>
  // Toggle password
  const pass = document.getElementById('password');
  const btnT = document.getElementById('togglePass');
  const eye  = document.getElementById('eyeIcon');
  btnT?.addEventListener('click', () => {
    const showing = pass.type === 'text';
    pass.type = showing ? 'password' : 'text';
    eye.innerHTML = showing
      ? '<path d="M12 5c-7 0-10 7-10 7s3 7 10 7 10-7 10-7-3-7-10-7zm0 11a4 4 0 110-8 4 4 0 010 8z"/>'
      : '<path d="M2 12s3-7 10-7c2.1 0 3.9.6 5.3 1.5L19 4.8l1.2 1.2-1.7 1.7C20.7 9 22 12 22 12s-3 7-10 7c-2.4 0-4.5-.8-6.2-1.9l-1.9 1.9L2.8 18l1.6-1.6C3.3 15.2 2 12 2 12zm10 4a4 4 0 004-4c0-.5-.1-1-.3-1.4l-5.1 5.1c.5.2 1 .3 1.4.3z"/>';
  });

  // Validasi & redirect (slicing-only)
  (function(){
    const email    = document.getElementById('email');
    const password = document.getElementById('password');
    const btnLogin = document.getElementById('btnLogin');
    const emailErr = document.getElementById('emailErr');
    const passErr  = document.getElementById('passErr');

    // aturan: harus @gmail.com
    // aturan: harus @gmail.com
const isGmail = (v) => /^[a-zA-Z0-9._%+-]+@gmail\.com$/i.test(v);

const clearErr = (el, hint) => {
  hint.classList.add('hidden');
  el.classList.remove('border-red-500','focus:border-red-500','focus:ring-red-500/30');
};
const showErr = (el, hint, msg) => {
  if (msg) hint.textContent = msg;
  hint.classList.remove('hidden');
  el.classList.add('border-red-500','focus:border-red-500','focus:ring-red-500/30');
};

btnLogin?.addEventListener('click', () => {
  const e = (email.value || '').trim();
  const p = (password.value || '').trim();

  clearErr(email, emailErr);
  clearErr(password, passErr);

  let ok = true;

  if (!isGmail(e)) {
    showErr(email, emailErr, 'Gunakan alamat Gmail yang valid (contoh: nama@gmail.com).');
    ok = false;
  }

  // Password: kosong vs < 8
  if (p.length === 0) {
    showErr(password, passErr, 'Kata sandi tidak boleh kosong.');
    ok = false;
  } else if (p.length < 8) {
    showErr(password, passErr, 'Kata sandi minimal 8 karakter.');
    ok = false;
  }

  if (!ok) return;

  // loading -> redirect dummy
  btnLogin.disabled = true;
  btnLogin.innerHTML = `
    <svg class="h-5 w-5 animate-spin" viewBox="0 0 24 24" fill="none">
      <circle cx="12" cy="12" r="10" stroke="currentColor" class="opacity-25" stroke-width="4"></circle>
      <path d="M4 12a8 8 0 018-8" stroke="currentColor" class="opacity-75" stroke-width="4"></path>
    </svg>
    Masuk...
  `;
  setTimeout(() => { window.location.href = "{{ route('dashboard') }}"; }, 800);
});

// UX: perbarui error saat mengetik
password.addEventListener('input', () => {
  const p = password.value;
  if (p.length === 0) {
    showErr(password, passErr, 'Kata sandi tidak boleh kosong.');
  } else if (p.length < 8) {
    showErr(password, passErr, 'Kata sandi minimal 8 karakter.');
  } else {
    clearErr(password, passErr);
  }
});
email.addEventListener('input', () => {
  if (isGmail(email.value)) clearErr(email, emailErr);
});

  })();
</script>
@endpush
