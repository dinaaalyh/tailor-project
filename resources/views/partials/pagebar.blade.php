@php
  $segments = $segments ?? request()->segments(); // contoh: ['stock','create']
  $labels = collect($segments)->map(fn($s) => ucwords(str_replace(['-','_'],' ',$s)));
  $title  = $title ?? ($labels->last() ?: 'Dashboard');
@endphp

<div class="flex items-center gap-3 text-white min-w-0">
  <ol class="flex items-center text-xs leading-none opacity-90">
    @foreach($labels as $i => $seg)
      @if($i>0)
        <li class="px-2 opacity-80">/</li>
      @endif
      <li class="{{ $i < count($labels)-1 ? 'opacity-80' : '' }}">
        {{ $seg }}
      </li>
    @endforeach
  </ol>
  <span class="h-4 w-px bg-white/40"></span>
  <h6 class="font-bold capitalize truncate">{{ $title }}</h6>
</div>
