
User.create!([
  {username: "the_napster", name: "Po", bio: "What a kid, football, would love the chance to see him again", password_digest: "$2a$10$TPzpXjJkby9WRHTE8MkDVegAA/lq8Uj8q1pFdefjTBbrKtSaBsyju"},
  {username: "bubs93", name: "Bubbles", bio: "What a beatufiul bublle I can be!", password_digest: "$2a$10$s2mOgczwLmLiugq9Sfbbj.ZdrDxp2/y0ZQyNIDgof.1E1MdJSkqwS"},
  {username: "fire_cracker", name: "Ronaldinho", bio: "Enjoy life, rapazes!", password_digest: "$2a$10$i7QJo7GTZHIF4jdnauXtWOb81cBy5ZxpKriTxgCn0TeGjxxnH6z3a"},
  {username: "always_blue", name: "Mane", bio: "Salah, who?", password_digest: "$2a$10$.qMMeJUQKk1Lns8kFXzmG.DhanCEuWkYO/jYKhgGX/VZPcYq0mA4W"},
  {username: "I_am_a_mystery", name: "Who_am_I", bio: "I keep the team going, I don'd demand too much attention, but it would be great to get my due!", password_digest: "$2a$10$A5hQQnmxpNjKvTJjDHF/O.DwoevUx7gwDAUAez6QP1ekdeSuzSabO"},
  {username: "frozone", name: "Flame_on", bio: "Ruff, ruff, boi!", password_digest: "$2a$10$/SKvFVHpeon7CZHjJHZgH.HKq.s9Iu3kViyLKuxppglIL0Luhf6hi"},
  {username: "tt99", name: "Telka", bio: "Just a girl on a swing!", password_digest: "$2a$10$aRIaoKfbvCaFViD3KN6uCupCqMRCpg8EMcKlDUqjIxRNcqlqPATam"}
])

Emoticon.create!([
  {image: "(ɔ◔‿◔)ɔ ♥", name: "love"},
  {image: "┻━┻ ︵ヽ(`▭´)ﾉ︵﻿ ┻━┻", name: "flipping table"},
  {image: "(>‿◠)✌", name: "peace"},
  {image: "❁◕ ‿ ◕❁", name: "cute"},
  {image: "ʕ•ᴥ•ʔ", name: "bear"},
  {image: "♪┏(・o･)┛♪┗ ( ･o･) ┓♪", name: "dancing"},
  {image: "ὸ.ό", name: "angry"},
  {image: "(>‘o’)>", name: "pointing"},
  {image: "٩(｡•́‿•̀｡)۶", name: "cheer"},
  {image: "(⁄ ⁄•⁄ω⁄•⁄ ⁄)", name: "embarrassed"},
  {image: "ヽ(￣ω￣(。。 )ゝ", name: "sympathy"},
  {image: "(ᗒᗣᗕ)՞", name: "dissatisfied"},
  {image: "(ﾉಥ益ಥ)ﾉ", name: "pissed"},
  {image: "｡ﾟ･ (>﹏<) ･ﾟ｡", name: "crying"},
  {image: "[ ± _ ± ]", name: "pain"},
  {image: "┐(︶▽︶)┌", name: "indifference"},
  {image: "(◎ ◎)ゞ", name: "confusion"},
  {image: "(→_→)", name: "doubt"},
  {image: "ヽ(°〇°)ﾉ", name: "surprise"},
  {image: "⊂( ´ ▽ ` )⊃", name: "hugging"},
  {image: "(^_-)≡☆", name: "winking"},
  {image: "(シ_ _)シ", name: "apologizing"},
  {image: "(*￣ii￣)", name: "nosebleeding"},
  {image: "┬┴┬┴┤･ω･)ﾉ", name: "hidding"},
  {image: "__φ(．．;)", name: "writing"},
  {image: "─=≡Σ((( つ＞＜)つ", name: "running"},
  {image: "(＿ ＿*) Z z z", name: "sleeping"},
  {image: "(^◕ᴥ◕^)", name: "cat"},
  {image: "V●ᴥ●V", name: "dog"},
  {image: "／(=´x`=)＼", name: "rabbit"}
])
# byebug
Hashtag.create!([
  {name: "Because_ilikeit"},
  {name: "Because_whynot"},
  {name: "Because_yes"}
])

Post.create!([
  {content: "No one saves us but ourselves. No one can and no one may. We ourselves must walk the path.\r\nThe mind is everything. What you think you become.\r\nDo not dwell in the past, do not dream of the future, concentrate the mind on the present moment.\r\nThree things cannot be long hidden: the sun, the moon, and the truth.\r\nYou only lose what you cling to. Because that is the way young padowan.", emoticon_id: 3, user_id: 1},
  {content: "No one saves us but ourselves. No one can and no one may. We ourselves must walk the path.\r\nThe mind is everything. What you think you become.\r\nDo not dwell in the past, do not dream of the future, concentrate the mind on the present moment.\r\nThree things cannot be long hidden: the sun, the moon, and the truth.\r\nYou only lose what you cling to. Because that is the way.", emoticon_id: 3, user_id: 1},
  {content: "These are kind of like bubbles, right?", emoticon_id: 8, user_id: 2},
  {content: "Kick it like a shocka, right?", emoticon_id: 9, user_id: 3},
  {content: "Did I mention I cam in fourth in the Ballon d'or?", emoticon_id: 5, user_id: 4},
  {content: "A born striker, right?", emoticon_id: 30, user_id: 5},
  {content: "I'm not the only one with eyes, am I?", emoticon_id: 7, user_id: 6},
  {content: "You like marbles, too, right?", emoticon_id: 9, user_id: 7},
  {content: "Do you dare travel down the path?", emoticon_id: 22, user_id: 7},
  {content: "And if I told you it led here?", emoticon_id: 1, user_id: 7}
])

HashPost.create!([
  {post_id: 1, hashtag_id: 3},
  {post_id: 2, hashtag_id: 2},
  {post_id: 3, hashtag_id: 1}
])

Comment.create!([
  {message: "?Oh my gosh, did you see what was said, that was so thoughtful!", user_id: 1, post_id: 3},
  {message: "?I really like how they structured out that argument, so organize.", user_id: 2, post_id: 2},
  {message: "?I think the reason for that is to find a closer meaning in life", user_id: 3, post_id: 1}
])

ActiveStorage::Blob.create!([
  {key: "u7eudhws5n7vieovl008mwjciase", filename: "namaste_shi_fu.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 7602, checksum: "iWkHVZDG6tNYCm6cI6DbZA=="},
  {key: "vy7iilqvfgnk211zjj4pxs0besx7", filename: "bulbs.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 50364, checksum: "/7UtsWtByXoK8gYH5nkZzQ=="},
  {key: "cvobyhuvkfi5l9dlxbdalug94ufg", filename: "bulbs.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 50364, checksum: "/7UtsWtByXoK8gYH5nkZzQ=="},
  {key: "1ft5rp60tj1i16tyupjp2sks906r", filename: "the_diver.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 107667, checksum: "ydhpCdjPcdO4rEDb3UuLkA=="},
  {key: "7qo7eq84k5quwhlhxh6wemkc7wya", filename: "marbles.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 16659, checksum: "lrcrQAOOjfLnzcqJJBYNEQ=="},
  {key: "veoqtpv7qjqttuoiislt3o6umn6m", filename: "ronaldinho.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 11564, checksum: "H2R8EuRJQPJf9JRDagGN9Q=="},
  {key: "xtuilb7szomw8s7wpf4hwxf1vz83", filename: "get_it_kitty_wit_it.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 7249, checksum: "BKyHDCHI06u+WiphOgknYg=="},
  {key: "f4zs6sv4eiq0r5k1hk9uc8iumtv0", filename: "I_smile_too_you_know.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 7200, checksum: "FPVuNdr77I43i5wBLxF72w=="},
  {key: "eueldmepb1aywvl7nlhxuovwtjqj", filename: "pin_trees.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 107869, checksum: "hxjHZqGxXEEu2ypt/eWftA=="},
  {key: "umw4fruxgdsh7lgo5u2tz046l89z", filename: "yeah_I'm_underated.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 9350, checksum: "xLIgxyGlxXPbEBTJuREmNQ=="},
  {key: "my7v5sjhm73yk4oj4v4lyvnelnpu", filename: "rock_ice_piercer.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 229728, checksum: "JEtQvCG8cV81KeKjHmuMkw=="},
  {key: "5veg3r1fjbjvza0q2abx1s57an11", filename: "doggie.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 71627, checksum: "USeBBNbQhHHm9QQiMJ3VnQ=="},
  {key: "e8ml8znyk6goe7z5wgt584un330r", filename: "the watchers.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 98468, checksum: "673sHS/M9CMoEnPjJdaWVQ=="},
  {key: "9iyudcsqlgqv9rj102dfbn4h7m34", filename: "creepy_but_pretty.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 55482, checksum: "kHi2CnnGJtnvf9wpHNdVBQ=="},
  {key: "3zrwffksds38m53n0zwuwjsctwei", filename: "marbles.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 16659, checksum: "lrcrQAOOjfLnzcqJJBYNEQ=="},
  {key: "1i5yckn3seplbt3n02kez707nkle", filename: "a_path.jpg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 96397, checksum: "U/Pdm3hzjcxlqn8KdhyLJw=="},
  {key: "30oln21mkfqz7xtxadwxeiiju7tl", filename: "log_cabin.jpeg", content_type: "image/jpeg", metadata: {"identified"=>true, "analyzed"=>true}, byte_size: 420486, checksum: "0oAn6wHxAfGpd8VV1l0zaA=="}
])

ActiveStorage::Attachment.create!([
  {name: "image", record_type: "User", record_id: 1, blob_id: 2},
  {name: "image", record_type: "Post", record_id: 1, blob_id: 3},
  {name: "image", record_type: "Post", record_id: 2, blob_id: 4},
  {name: "image", record_type: "User", record_id: 2, blob_id: 5},
  {name: "image", record_type: "Post", record_id: 3, blob_id: 6},
  {name: "image", record_type: "User", record_id: 3, blob_id: 7},
  {name: "image", record_type: "Post", record_id: 4, blob_id: 8},
  {name: "image", record_type: "User", record_id: 4, blob_id: 9},
  {name: "image", record_type: "Post", record_id: 5, blob_id: 10},
  {name: "image", record_type: "User", record_id: 5, blob_id: 11},
  {name: "image", record_type: "Post", record_id: 6, blob_id: 12},
  {name: "image", record_type: "User", record_id: 6, blob_id: 13},
  {name: "image", record_type: "Post", record_id: 7, blob_id: 14},
  {name: "image", record_type: "User", record_id: 7, blob_id: 15},
  {name: "image", record_type: "Post", record_id: 8, blob_id: 16},
  {name: "image", record_type: "Post", record_id: 9, blob_id: 17},
  {name: "image", record_type: "Post", record_id: 10, blob_id: 18}
])