<!DOCTYPE html>
<html lang="id" class="scroll-smooth">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>@yield('title','Masuk')</title>

  {{-- Tailwind CDN untuk slicing cepat (untuk produksi pakai Vite) --}}
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            /* Palet biru senada landing (blue/indigo) */
            brand: {
              50:'#eff6ff',100:'#dbeafe',200:'#bfdbfe',300:'#93c5fd',
              400:'#60a5fa',500:'#3b82f6',600:'#2563eb',700:'#1d4ed8',
              800:'#1e40af',900:'#1e3a8a'
            }
          }
        }
      }
    }
  </script>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    :root { color-scheme: light dark; }
    html, body { height: 100%; }
    body { font-family: 'Inter', system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial, sans-serif; }
  </style>
  @stack('styles')
</head>
<body class="min-h-full bg-gradient-to-br from-slate-50 via-white to-slate-50 dark:from-slate-950 dark:via-slate-900 dark:to-slate-950 text-slate-900 dark:text-slate-100">
  {{-- aksen blur --}}
  <div aria-hidden="true" class="pointer-events-none fixed inset-0 overflow-hidden">
    <div class="absolute -top-24 -right-24 h-72 w-72 rounded-full bg-brand-300/40 blur-3xl dark:bg-brand-700/30"></div>
    <div class="absolute -bottom-24 -left-24 h-80 w-80 rounded-full bg-indigo-300/30 blur-3xl dark:bg-indigo-700/20"></div>
  </div>

  <div class="relative z-10">
    @yield('content')
  </div>

  @stack('scripts')
</body>
</html>
