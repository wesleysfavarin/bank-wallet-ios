protocol IDepositView: class {
    func showCopied()
}

protocol IDepositViewDelegate {
    func addressItems(forCoin coinCode: CoinCode?) -> [AddressItem]
    func onCopy(addressItem: AddressItem)
    func onShare(addressItem: AddressItem)
}

protocol IDepositInteractor {
    func adapters(forCoin coinCode: CoinCode?) -> [IAdapter]
    func copy(address: String)
}

protocol IDepositInteractorDelegate: class {
}

protocol IDepositRouter {
    func share(address: String)
}
