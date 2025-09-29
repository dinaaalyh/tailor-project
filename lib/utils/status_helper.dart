String normalizeStatus(String status) {
  final s = status.toLowerCase();
  if (s.contains("selesai")) return "selesai";
  if (s.contains("menunggu")) return "menunggu";
  if (s.contains("proses")) return "proses";
  if (s.contains("gagal")) return "gagal";
  return s;
}