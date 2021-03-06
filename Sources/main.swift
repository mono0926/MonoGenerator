import Commander

let main = command(Argument<String>("input"),
                   Option("suffix", "(　´･‿･｀)", flag: "s"),
                   Option("length", -1, flag: "l")) { input, suffix, length in
                    let generator = Generator(value: input)
                    print(generator.generate(suffix: suffix, maxLength: length < 0 ? nil : length))
}

main.run()
