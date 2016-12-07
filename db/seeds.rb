# Databqse seeds

Product.delete_all

Product.create(title: 'Rum ham',
               description: 'Be careful not to let your rum ham float away in
                             the ocean',
               image_url: 'rum_ham.png',
               price: 35.00)

Product.create(title: 'Flux Capacitor',
               description: 'The core component of a time taveling DeLorean.
                             Do not get stuck in the future because of a bad
                             flux capacitor. Plutonium is not included. In case
                             of plutonium shortage use a lightning rod to jump
                             start the flux field. Vehicle must be traveling at
                             88 mph to be operational.',
               image_url: 'flux_capacitor.jpg',
               price: 250.00)

Product.create(title: 'Neuralyzer',
               description: 'A neuralyzer wipes the memory of a target or
                             witness, putting them under a hypnotic state,
                             making them susceptible to suggestion and
                             implantation of false memories, used by MiB as a
                             moral substitute to witness elimination while still
                             retaining their existence or/and alien presence on
                             Earth unknown to the public. The length of memory
                             erased can be changed using buttons and dials.',
               image_url: 'neuralyzer.jpg',
               price: 200.00)

Product.create(title: 'Corballer',
               description: "Just thinking of George Bluth's Snr's lethal
                            cornball fryer can make you come out in oil burn
                            inspired goosebumps. This is one product that is
                            difficult to buy even in the fictional world after
                            it was banned in the US in the 1970s. However you
                            can still get yourself a Cornballer as long as
                            you're prepared to take a a trip to fictional
                            Mexico.",
               image_url: 'cornballer.jpg',
               price: 50.00)
