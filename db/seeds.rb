# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# creating the anodizings
anodizings =  Anodizing.create([{name: "Light Bronze", voltage: 12}, {name: "Dark Bronze", voltage: 15}, {name: "Eggplant", voltage: 18}, {name: "Dark Purple", voltage: 20}, {name: "Dark Blue", voltage: 25}, {name: "Blue", voltage: 28}, {name: "Ice Blue", voltage: 40}, {name: "High Polish", voltage: 42}, {name: "Yellow", voltage: 62}, {name: "Gold", voltage: 65}, {name: "Rose Gold", voltage: 70}, {name: "Pink", voltage: 75}, {name: "Blurple", voltage: 92}, {name: "Fuschia", voltage: 80}, {name: "Green", voltage: 105}])

# creating the brands
brands =  Brand.create([{name: "Anatometal", launch_year: 1991, brand_desc: "Making the best in body jewelry since 1991"}, {name: "Industrial Strength", launch_year: 1991, brand_desc: "Industrial Strength Body Jewelry was established in 1991. We have been manufacturing the highest quality body jewelry available since then."}, {name: "Neometal", launch_year: 1997, brand_desc: "We are a family owned wholesale-only titanium body jewelry company."}, {name: "BVLA", launch_year: 1996, brand_desc: "Body Vision is the world's leading manufacturer of precious metal body jewelry. Each piece is handmade with love in Los Angeles!"}])

# creating the materials
materials = Material.create ([{name: "ASTM F-136 Titanium"}, {name: "ASTM F-138 Stainless Steel"}, {name: "Niobium"}, {name: "14k yellow gold"}, {name: "14k rose gold"}, {name: "14k white gold"}, {name: "18k yellow gold"}, {name: "18k rose gold"}, {name: "18k white gold"}])

# creating the natures
natures = Nature.create ([{name: "Genuine"},{name: "Synthetic"}])

# creating the cuts
cuts = Cut.create ([{name: "Brilliant"}, {name: "Cabochon"}, {name: "Rose"}, {name: "Princess"}, {name: "Baguette"}, {name: "Pear"}, {name: "Marquise"}, {name: "Trillion"}, {name: "Heart"}])

# creating the gemstones

# creating the locking systems
locking_systems = LockingSystem.create ([{name: "Threaded"}, {name: "Threadless"}, {name: "Hinge"}])

# creating the sizes
sizes = Size.create([{thickness: 18}, {thickness: 16}, {thickness: 14}, {thickness: 12}, {thickness: 10}, {thickness: 8}, {thickness: 6}, {thickness: 4}, {thickness: 2}, {thickness: 0}, {thickness: 00},])
