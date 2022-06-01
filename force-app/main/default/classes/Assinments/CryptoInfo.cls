public  class CryptoInfo {
    public static integer showPrice(string coinName) {
        Map<string, integer> CryptoMap = new Map<string, integer>();
        Integer price;
        CryptoMap.put('DogeCoin', 100);
        CryptoMap.put('BTC', 38000);
        CryptoMap.put('Shiba', 1);
        CryptoMap.put('JCS', 22);
        price = CryptoMap.get(coinName);
        return price;
        
    }
}