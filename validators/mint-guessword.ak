use aiken/transaction.{ScriptContext}

type CoolTokenRedeemer {
    guessed_word: ByteArray
}

validator(code_word: ByteArray) {
    fn mint(redeemer: CoolTokenRedeemer, _ctx: ScriptContext) -> Bool {
        redeemer.guessed_word == code_word
    }
}