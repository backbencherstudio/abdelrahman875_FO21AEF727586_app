enum CacheKey{
  isLoggedIn,
  authToken,
  firstTimeOpen,
}

abstract class SharedPreferencesService{
  Future<void> save<T>({required CacheKey key, required T value});
  T? fetch<T>({required CacheKey key});
  Future<void> remove(List<CacheKey> keys);
  Future<void> clear();
}