Origin.create!([
  {country: "France"},
  {country: "Portugal"},
  {country: "United States"},
  {country: "Italy"},
  {country: "New Zealand"},
  {country: "Hungary"},
  {country: "Germany"},
  {country: "Australia"},
  {country: "South Africa"},
  {country: "Argentina"}
])
Wine.create!([
  {name: "The Delicious Monster", blend: "Chenin Blanc, Chardonnay, Hanepoot, Columbar", price: "5.99", origin_id: 9, style: "Balanced and crisp", photo_url: "https://roodezandt.co.za/wp-content/uploads/2021/08/mcgregor-the-delicious-monster.jpg", vegan: true, sparkling: false, description: "The balance of fruit, acid, and sweetness brings out the  flavors in harmony to create a  refreshing, easy-drinking wine.", color: "White", sweet: "Off-Dry", organic: false},
  {name: "Almond Creek Sparkling Wine", blend: "Chardonnay", price: "6.99", origin_id: 3, style: "Sweet, bubbly, and amandine", photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuHLm6GLxqXwqDeLctrpgFHC911wTxLTjhvDYz6-DU4gp8nL3PYywHVrjQ0_yuMamKFj4&usqp=CAU", vegan: false, sparkling: true, description: "Crisp and bubbly with marzipan and other nutty flavors and  subtly sweet aftertaste.", color: "White", sweet: "Sweet", organic: false},
  {name: "Emma Reichart Dry Riesling", blend: "Riesling", price: "4.99", origin_id: 7, style: "Bright and citrusy", photo_url: "https://www.oakandbarrelnyc.com/wp-content/uploads/2018/09/EMMA-REICHART-DRY-RIESLING-750ML.jpg", vegan: true, sparkling: false, description: "Aromatics of fragrant citrus blossom with a profile of apricot, meyer lemon, and honeycomb.", color: "White", sweet: "Off-Dry", organic: false},
  {name: "Block White Wine Pinot Grigio", blend: "Pinot Grigio", price: "12.99", origin_id: 4, style: "Clean and crisp", photo_url: "https://www.bottlevalues.com/images/sites/bottlevalues/labels/block-pinot-grigio-bag-in-box-3-l_1.jpg", vegan: true, sparkling: false, description: "Crisp, fresh, fruity aromas with notes of citrus and pear, and a nice, clean finish.", color: "White", sweet: "Dry", organic: false},
  {name: "Barrel Heist Bourbon Barrel Aged Cabernet Sauvignon", blend: "Cabernet Sauvignon", price: "7.99", origin_id: 3, style: "Robust and fruit-forward", photo_url: "https://images.vivino.com/thumbs/2G_FnMB2SXe56u6kiy2Hpg_pb_x960.png", vegan: true, sparkling: false, description: "Notes of vanilla, caramel, and dark spices.", color: "Red", sweet: "Dry", organic: false},
  {name: "Emma Reichart Pinot Noir Rosé", blend: "Pinot Noir", price: "4.99", origin_id: 7, style: "Crisp and dry", photo_url: "https://products2.imgix.drizly.com/ci-emma-reichart-pinot-noir-rose-a6e7f549b292f664.jpeg?auto=format%2Ccompress&ch=Width%2CDPR&fm=jpg&q=20", vegan: true, sparkling: false, description: "Refreshing notes of tart cherry, red currant, and a touch of watermelon.", color: "Rosé", sweet: "Dry", organic: false},
  {name: "Belles Vignes Sauvignon Blanc", blend: "Sauvignon Blanc", price: "6.99", origin_id: 1, style: "Expressive and fresh", photo_url: "https://www.wine-searcher.com/images/labels/84/29/belles-vignes-collection-sauvignon-blanc-france-10868429.jpg", vegan: true, sparkling: false, description: "Floral and light vegetal notes on the nose, with a lively, floral, and refreshing palate.", color: "White", sweet: "Dry", organic: false},
  {name: "Big Churn Chardonnay", blend: "Chardonnay", price: "6.99", origin_id: 3, style: "Very oaky and buttery", photo_url: "https://products3.imgix.drizly.com/ci-big-churn-chardonnay-379ca83554407a96.jpeg?auto=format%2Ccompress&ch=Width%2CDPR&fm=jpg&q=20", vegan: false, sparkling: false, description: "Toasty vanilla, ripe baked apple, pear, and tropical fruit -  and, of course, butter.", color: "White", sweet: "Dry", organic: false},
  {name: "Bay Moon Sauvignon Blanc", blend: "Sauvignon Blanc", price: "5.99", origin_id: 3, style: "Crisp, citrusy, and unoaked", photo_url: "https://images.vivino.com/labels/xavV6FVMSAqoFArDd6t3Ng.jpg", vegan: false, sparkling: false, description: "Grapefruit, lime blossom, and lemon grass with lively acidity", color: "White", sweet: "Dry", organic: false},
  {name: "Fior di Vino Chianti Classico Riserva", blend: "Sangiovese, Cabernet Sauvignon", price: "6.99", origin_id: 4, style: "Bold and Balanced", photo_url: "https://www.cheapwinefinder.com/wp-content/uploads/2021/03/Trader-Joes-Chianti.jpg", vegan: false, sparkling: false, description: "Intense, dark ruby color with notes of plums, blackberry, and raspberry fruit.", color: "Red", sweet: "Dry", organic: false},
  {name: "Butler Pond Pinot Noir", blend: "Pinot Noir, Barbera, Gamay", price: "6.99", origin_id: 3, style: "Bright & complex", photo_url: "https://www.cheapwinefinder.com/wp-content/uploads/2021/10/Butler-Pond-Pinot.jpg", vegan: true, sparkling: false, description: "Bright structure with notes of cherry cream soda, toasted  brioche, and cranberry.", color: "Red", sweet: "Dry", organic: false},
  {name: "Block Red Wine Shiraz", blend: "Shiraz", price: "12.99", origin_id: 8, style: "Smooth and dry, but fruit  forward", photo_url: "https://products3.imgix.drizly.com/ci-block-red-shiraz-2008090c835059e2.jpeg?auto=format%2Ccompress&ch=Width%2CDPR&fm=jpg&q=20", vegan: false, sparkling: false, description: "Blackberry, currant, and hints of fig with a smooth finish.", color: "Red", sweet: "Dry", organic: false},
  {name: "Ca'Storica Amarone della Valpolicella", blend: "Corvina, Rondinealla, Molinara", price: "15.99", origin_id: 4, style: "Bold with a long and silky finish", photo_url: "https://vinepair.com/wp-content/uploads/2022/08/btb-trader-joes-internal-amarone.jpg", vegan: true, sparkling: false, description: "Notes of ripe cherry, raspberry, cocoa and dried fruit.", color: "Red", sweet: "Dry", organic: false},
  {name: "Ca'Belli Prosecco Extra Dry", blend: "Glera", price: "7.99", origin_id: 4, style: "Fruit forward and fresh", photo_url: "data:image/jpeg;base64,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", vegan: false, sparkling: true, description: "Notes of citrus fruit, lemon skin, ripe peach, and a hint of honey.", color: "White", sweet: "Extra Dry", organic: false},
  {name: "Ca'Belli Prosecco Rosé", blend: "Glera, Pinot Noir", price: "8.99", origin_id: 4, style: "Crisp and refreshing", photo_url: "data:image/jpeg;base64,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", vegan: false, sparkling: true, description: "Fruity aromas of cherry and berry on the nose with delicate floral notes.", color: "Rosé", sweet: "Extra Dry", organic: false},
  {name: "Caretaker Cabernet Sauvignon", blend: "Cabernet Sauvignon, Petite Sirah, Merlot", price: "9.99", origin_id: 3, style: "Bold and full-bodied", photo_url: "https://www.cheapwinefinder.com/wp-content/uploads/2022/03/Caretaker-Cabernet.jpg", vegan: true, sparkling: false, description: "Big flavors of plum and cherry with spicy cassis aromas.", color: "Red", sweet: "Dry", organic: false},
  {name: "Carayon La Rose Rosé", blend: "Grenache, Syrah", price: "6.99", origin_id: 1, style: "Dry, crisp, and refreshing", photo_url: "https://i0.wp.com/farm2.staticflickr.com/1733/28560094918_549e60bef6_o.jpg?quality=100&ssl=1", vegan: true, sparkling: false, description: "Strawberry and subtle melon notes with a dry, refreshing  mouth feel.", color: "Rosé", sweet: "Dry", organic: false},
  {name: "Caretaker Pinot Noir", blend: "Pinot Noir", price: "9.99", origin_id: 3, style: "Medium-bodied and smooth", photo_url: "https://cdn.minibardelivery.com/products/157288/product/99318-care.jpg", vegan: true, sparkling: false, description: "Black cherry and candied ginger with dark cocoa, raspberries, and plush tannins.", color: "Red", sweet: "Dry", organic: false},
  {name: "Kono Sauvignon Blanc", blend: "Sauvignon Blanc", price: "8.99", origin_id: 5, style: "Crisp and floral, with grassy notes", photo_url: "https://images.vivino.com/thumbs/M4j7BCUMR7mahzDDquc5TA_pb_600x600.png", vegan: true, sparkling: false, description: "Generous, juicy flavors of melon, grapefuit and kiwi with tempering acidity and fine mineral notes.", color: "White", sweet: "Dry", organic: false},
  {name: "Domaine de la Vauvise Sancerre", blend: "Sauvignon Blanc", price: "18.99", origin_id: 1, style: "Vivacious and fruity", photo_url: "https://www.wine-searcher.com/images/labels/18/00/10741800.jpg?width=260&height=260&fit=bounds&canvas=260,260", vegan: true, sparkling: false, description: "Full floral aromatics, with flavors of juicy citrus and flinty minerals.", color: "White", sweet: "Dry", organic: false},
  {name: "Charles de Marques Champagne", blend: "Pinot Noir, Pinot Meunier", price: "19.99", origin_id: 1, style: "Fresh, round, and balanced", photo_url: "https://www.internationalwinechallenge.com/canopy/images/wine_images/IWC/wine/2016/zoom/2356.jpg", vegan: true, sparkling: true, description: "Toasty brioche, with red apple, citrus, and a hint of rosemary.", color: "White", sweet: "Brut", organic: false},
  {name: "Cecilia Beretta Prosecco Rosé", blend: "Glera, Pinot Nero ", price: "10.99", origin_id: 4, style: "Vibrant, floral and fruity, crisp and refreshing", photo_url: "https://images.vivino.com/thumbs/wUxgGoEEQi27JdGuNb4zRw_pb_x600.png", vegan: false, sparkling: true, description: "Notes of raspberries, fruity but, with good body, bubbly with a clean, crisp finish.", color: "Rosé", sweet: "Dry", organic: false},
  {name: "Casone Toscana IGT", blend: "Sangiovese, Syrah ", price: "10.99", origin_id: 4, style: "Big, bold, and  complex", photo_url: "https://images.vivino.com/thumbs/tJJ7lVCiRz-0plxrSi7yvg_pb_x960.png", vegan: false, sparkling: false, description: "Expansive and refined flavors accentuate a large tannic  structure with hints of wood and leather.", color: "Red", sweet: "Dry", organic: false},
  {name: "Cecilia B. Vino Spumante Rosé", blend: "Glera, Raboso", price: "7.99", origin_id: 4, style: "Crisp and refreshing", photo_url: "https://images.vivino.com/thumbs/I3QR2_0MRLiEwz_mfnJ0Hw_pb_600x600.png", vegan: false, sparkling: true, description: "Fresh on the nose with notes of pear and red fruit, leading to a dry palate with notes of red fruit  and acidity.", color: "Rosé", sweet: "Extra Dry", organic: false},
  {name: "Cecilia Beretta Conegliano Valdobbiadene Prosecco Superiore ", blend: "Glera", price: "10.99", origin_id: 4, style: "Dry, citrusy, and lively", photo_url: "https://images.vivino.com/thumbs/-K7MUuNGRCO_6cJrcTkWfA_pb_x960.png", vegan: true, sparkling: true, description: "Intense and fruity with tropical fruits, acacia, and notes of  white flowers leading to crisp  acidity with citrus hints.", color: "White", sweet: "Brut", organic: false},
  {name: "Cecilia Beretta Valpolicella Ripasso", blend: "Corvina, Rondinella,  Corvinone, Negrara", price: "9.99", origin_id: 4, style: "Rich & sweet", photo_url: "https://images.vivino.com/thumbs/FOg70yxMRHChW775G9J1UA_pb_x600.png", vegan: true, sparkling: false, description: "Intense aromas of wild cherries, red currant and hints of toasting. A rich, full-bodied wine, with sweet and round tannins.", color: "Red", sweet: "Sweet", organic: false},
  {name: "Château de Seguin Bordeaux Supérieur", blend: "Merlot, Cabernet Sauvignon, Cabernet Franc, Malbec", price: "11.99", origin_id: 1, style: "Bold and full-bodied", photo_url: "https://www.wine-searcher.com/images/labels/95/41/10589541.jpg", vegan: false, sparkling: false, description: "Blackcurrants and cherry with hints of coffee, vanilla and oak with well-balanced tannins", color: "Red", sweet: "Dry", organic: false},
  {name: "Dr. Beckermann Rheinhessen Auslese", blend: "Riesling, Muller Thurgau, Silvaner, Kerner", price: "6.99", origin_id: 7, style: "Fruity and sweet", photo_url: "https://www.beverlyhillsliquorandwine.com/media/catalog/product/cache/1/image/650x650/dfe2b9ec391685a0ed1724833627af16/2/0/208159.jpg", vegan: false, sparkling: false, description: "Notes of nectarine and pink grapefruit with a sweet honey  finish.", color: "White", sweet: "Sweet", organic: false},
  {name: "Espiral Vinho Verde", blend: "Loureiro, Pederna, Trajadura, Azal", price: "4.49", origin_id: 2, style: "Dry and aromatic", photo_url: "https://images.vivino.com/thumbs/JR-gzl28RHi04EzOhY87Qg_pb_x600.png", vegan: false, sparkling: true, description: "Green apple, melon, and slight bubbles.", color: "White", sweet: "Dry", organic: false},
  {name: "Baron de Taste Reserve Margaux", blend: "Merlot, Cabernet Sauvignon", price: "14.99", origin_id: 1, style: "Savory and classic", photo_url: "https://images.vivino.com/thumbs/BnVEcBLOR3KUku0k8ZOLDg_pb_x600.png", vegan: false, sparkling: false, description: "Aromatic with black fruits and baking spices. Smooth tannins with toasted oak and a long, intense finish.", color: "Red", sweet: "Dry", organic: false},
  {name: "Floriana Grüner Veltliner", blend: "Grüner Veltliner, Chardonnay", price: "5.99", origin_id: 6, style: "Dry and aromatic", photo_url: "https://products2.imgix.drizly.com/ci-floriana-gruner-veltliner-74fb6b82f2b01948.jpeg?auto=format%2Ccompress&ch=Width%2CDPR&fm=jpg&q=20", vegan: false, sparkling: false, description: "Bone dry and fruity with aromas of green apple and kiwi with crisp and refreshing acidity.", color: "White", sweet: "Dry", organic: false},
  {name: "Finca Flichman Gestos Malbec", blend: "Malbec", price: "8.99", origin_id: 10, style: "Bold and full bodied", photo_url: "https://images.vivino.com/thumbs/jDRb2v6rTayMsZZaudcpHw_pl_480x640.png", vegan: true, sparkling: false, description: "Plums and oak on the nose with a concentrated profile of dark fruit and chocolate.", color: "Red", sweet: "Dry", organic: false},
  {name: "Ruggero di Bardo Susumaniello", blend: "Susumaniello", price: "10.99", origin_id: 4, style: "Fresh and fruity", photo_url: "https://images.squarespace-cdn.com/content/v1/57689a02e4fcb58e1ae15194/1517623079457-Z4EX6EF9P0KMV3RZ7JI2/IMG_9638+2.JPG", vegan: true, sparkling: false, description: "On the nose, blueberries and ripe red fruits, underbrush and red flower, then tobacco, aromatic herbs and a light zesty sensation.", color: "Red", sweet: "Dry", organic: false},
  {name: "Grifone 1967 Toscana Rosso IGT", blend: "Sangiovese, Cabernet Sauvignon, Syrah", price: "6.99", origin_id: 4, style: "Smooth and dry, but fruit-forward", photo_url: "https://bloximages.newyork1.vip.townnews.com/nola.com/content/tncms/assets/v3/editorial/1/f6/1f6a3cd7-59c9-59fe-804e-4b72b9e989e8/5dd4f75eda089.image.jpg?resize=252%2C500", vegan: true, sparkling: false, description: "Cherry, plum, and blackberry with gentle vanilla and oak  notes.", color: "Red", sweet: "Dry", organic: false}
])
User.create!([
  {username: "donnelly.belkis", email: "belkis.donnelly@brown-stracke.co", password_digest: "$2a$12$GbOVJ4HHet22zUdvy2Vu1.FPDjassP.8iGm1IoJbM04d3TS6IscHW"},
  {username: "gutmann_madelene", email: "gutmann_madelene@block.name", password_digest: "$2a$12$QscoG2wUFTCd/2Gep63g/.56D6KurjynKqJ77tJ37feTdrd5Ya6cm"},
  {username: "joie-spencer", email: "joie.spencer@kris.io", password_digest: "$2a$12$ZDoIRiYsOZNT4cjWs/vWwuotImZPFoz40oODneuz0fwHW5X9Ws5QW"},
  {username: "langworth-milton", email: "milton_langworth@mueller-bayer.biz", password_digest: "$2a$12$hemRcOHRKyRbjdXlGsaEL.h9ta1hKzOdC44UZ04kMy.zOybZHUGGC"},
  {username: "rebbecca-block", email: "rebbecca.block@cassin-lynch.name", password_digest: "$2a$12$FtUyFogiW7LQ6fUQaNfDIOr84Gf7oeGZnxnEw7yJGvrd7Lkc8fjX2"},
  {username: "lowe.alita.mr", email: "mr.lowe.alita@wolf-breitenberg.io", password_digest: "$2a$12$.KUp6saYTA.HgZaMUY6TxutV3vO.KADeiWv5H3gqWV8aizzPKRrn6"},
  {username: "beatty.hipolito", email: "hipolito_beatty@kassulke-auer.co", password_digest: "$2a$12$H5KjN/vVJQq1Mogt7pBVTuJbTo7jy7TLBi6DANTFfhHP4cjiaH.d."},
  {username: "quitzon-olevia", email: "olevia.quitzon@champlin.com", password_digest: "$2a$12$M5drfN74zPefAqCa0fzzNe0eo7M.2nVsrE5cJDHjrppSd1arstYOe"},
  {username: "alton-terry", email: "alton.terry@hartmann.name", password_digest: "$2a$12$zt1j0TJ9BLzpAUOH9LUN7eH5iVRS.9aPtY9PKzXygh.EF5gFn8PWa"},
  {username: "mcclure_dewayne", email: "mcclure_dewayne@hilpert.co", password_digest: "$2a$12$F6DDABb8zV24nXzWFsDbK.b5NK0zkR6Sar3hvgYNuT3kubY3X/rIW"},
  {username: "welch_kacey", email: "welch_kacey@schinner.info", password_digest: "$2a$12$T.NEezckNXU6Qe3.0xFIiejc.rCf44oIBZm.bp0sUHzyh1GgqqKxy"},
  {username: "i.lucilla.langosh", email: "langosh_lucilla_i@nader.com", password_digest: "$2a$12$8FEBmwKUlU4eeDhATbmCeOQ6fzqqSQpr59/pzLBWZEqI4yTlVZpNu"},
  {username: "ashley.kuhn", email: "kuhn_ashley@orn.name", password_digest: "$2a$12$tpmc8MK61ZZG3mj0zPrWeuc9JaBdkfNtNNTo0cbKov2R/kS5P.c1u"},
  {username: "keeling.mica", email: "mica_keeling@krajcik-hahn.info", password_digest: "$2a$12$3S7NzKX8kdWMhAAS2uUmz.qy/KuBdZNNlQwg6yPRf5Ng7YbIi5BmK"},
  {username: "blythe.king", email: "king.blythe@baumbach.biz", password_digest: "$2a$12$HDVeem1aGFNgtusOUgTWkO6Lt70MRmntxfbpJJCogzK1DcbmvfYAi"},
  {username: "thiel.rosalie", email: "thiel.rosalie@gottlieb.org", password_digest: "$2a$12$JC8g40ri7uTemZ220CcjJen8DbzhJ29bEzT3bJvYARCqO7DHy/Wjy"},
  {username: "boyer_kristyn", email: "boyer_kristyn@klein.net", password_digest: "$2a$12$6R8bVdd5q24WcX.HEIQJ4.cHqo8PcSdTq/tX6D.C5cpcOpp6kmyYa"},
  {username: "oma-reynolds-sen", email: "reynolds.oma.sen@larson.net", password_digest: "$2a$12$tJ0ZbXffJopu.ohETUewl..xJyMU0ZJg1L1yG4aCGIWfSqdhg2W9m"},
  {username: "douglas.willms", email: "douglas.willms@olson-hamill.name", password_digest: "$2a$12$dKCrNGR9YE3x2FLNmB.l8u.4O8ZJi/xrMqzaeZZ3OuV0zRbIHUSyi"},
  {username: "pagac_willis", email: "pagac_willis@reilly.biz", password_digest: "$2a$12$JRxS8cwzqrGD43kUZL6q4eeeFagrME8ZHLKrNWcYSLJ29ePiIkP0S"},
  {username: "maragret.christiansen.ms", email: "maragret.ms.christiansen@moen-price.com", password_digest: "$2a$12$jMesfmNUA0E8uwYbl9i9yeF7L2J5BvQV7fxP2iM2CRNe15ziqfFvK"},
  {username: "franklin.turcotte", email: "franklin_turcotte@weber.biz", password_digest: "$2a$12$W3rrS1nJ3PR.mU1OUQkP8OrrH5Zjn0vjPJDMaTv9lKS05I9jtO3gm"},
  {username: "turner-alva", email: "alva.turner@schowalter.io", password_digest: "$2a$12$XLAd1VXRg9Ns9eiLwXmR5ehK/hv39d8RJ22UQZUfcvea35BtMguNG"},
  {username: "angela_runolfsson", email: "angela_runolfsson@renner-marks.net", password_digest: "$2a$12$x7azYd0l9UYwT8k8Jt6V8OyUn66I6jRfY7Cic//YOwFDZXbzBbLfK"},
  {username: "wade.cormier", email: "cormier.wade@rohan.name", password_digest: "$2a$12$hsxx/ptHyRD6SqJwp6I4HeXlw3gTEwmNl01A98jXzvNxBr7ZeZvIy"},
  {username: "o.connell.pres.asuncion", email: "asuncion.connell.pres.o@shanahan-bergstrom.co", password_digest: "$2a$12$/PfIeGEfenS63w0K9w0Ks.iVz76aux4dcgoA1W0zREKZ/nSyLqzzi"},
  {username: "titus.stehr", email: "stehr_titus@collins.co", password_digest: "$2a$12$2Ag4it47unZi12XE/K1e.eb/t2OsQbHqYn4qcAWAljtInzX3mSZBG"},
  {username: "christian.iii.will", email: "will.iii.christian@rodriguez-mccullough.com", password_digest: "$2a$12$naOLUGpBoz6KEyrvODvmEuB8CFHxgNOwkur7DVw3N9GCZXJA0zcNa"},
  {username: "d-amore-alva-dr", email: "alva_d_dr_amore@krajcik.io", password_digest: "$2a$12$QwONuAAScSp23psAoQwxy.kFKkVhPlCGPUqi8iT5fd/UL40atNH7e"},
  {username: "braun_sacha", email: "braun_sacha@champlin-rice.name", password_digest: "$2a$12$BKNV7aRW7DVU3QYDxCOhUeUZQQHbdkTCe0hjzhahRzyE.idmnfBzm"}
])
UserProfile.create!([
  {name: "Belkis Donnelly", user_img_url: "https://robohash.org/undequoaccusamus.png?size=300x300&set=set1", bio: "Porro voluptatem optio quia.", phone: "700-993-4999", location: "Quintinmouth, TX", user_id: 1},
  {name: "Madelene Gutmann", user_img_url: "https://robohash.org/quialiquama.png?size=300x300&set=set1", bio: "Corporis nesciunt minus officia.", phone: "(803) 457-4034", location: "Schillerland, NJ", user_id: 2},
  {name: "Joie Spencer", user_img_url: "https://robohash.org/aperiamofficiisqui.png?size=300x300&set=set1", bio: "Dolor rem laudantium labore.", phone: "1-693-535-6108", location: "Legrosberg, ME", user_id: 3},
  {name: "Milton Langworth", user_img_url: "https://robohash.org/quisetquidem.png?size=300x300&set=set1", bio: "Sunt est nesciunt laboriosam.", phone: "(221) 886-8297", location: "East Nelsonberg, IL", user_id: 4},
  {name: "Rebbecca Block", user_img_url: "https://robohash.org/cupiditateautqui.png?size=300x300&set=set1", bio: "Pariatur omnis est qui.", phone: "131-069-7593", location: "North Neda, HI", user_id: 5},
  {name: "Mr. Alita Lowe", user_img_url: "https://robohash.org/minuseoslabore.png?size=300x300&set=set1", bio: "Voluptas aut alias in.", phone: "885-446-4761", location: "Lake Blaine, MT", user_id: 6},
  {name: "Hipolito Beatty", user_img_url: "https://robohash.org/quorecusandaeplaceat.png?size=300x300&set=set1", bio: "Sequi quibusdam reprehenderit quaerat.", phone: "1-726-231-4011", location: "West Ileneport, WA", user_id: 7},
  {name: "Olevia Quitzon", user_img_url: "https://robohash.org/saepequodipsum.png?size=300x300&set=set1", bio: "Modi doloremque cum reprehenderit.", phone: "846.122.9579", location: "West Lucretiaview, MS", user_id: 8},
  {name: "Alton Terry", user_img_url: "https://robohash.org/quamexplicaboeveniet.png?size=300x300&set=set1", bio: "Vel harum consequatur aliquam.", phone: "1-626-385-1314", location: "West Teritown, NH", user_id: 9},
  {name: "Dewayne McClure", user_img_url: "https://robohash.org/voluptatemvoluptasdolorum.png?size=300x300&set=set1", bio: "In occaecati at sit.", phone: "1-733-422-5554", location: "Sashaberg, DE", user_id: 10},
  {name: "Kacey Welch", user_img_url: "https://robohash.org/iustodeseruntmollitia.png?size=300x300&set=set1", bio: "Et et accusamus dignissimos.", phone: "734-146-4617", location: "Port Blainemouth, OH", user_id: 11},
  {name: "Lucilla Langosh I", user_img_url: "https://robohash.org/voluptatemisteimpedit.png?size=300x300&set=set1", bio: "Delectus soluta velit officiis.", phone: "175-079-2487", location: "Ardischester, IN", user_id: 12},
  {name: "Ashley Kuhn", user_img_url: "https://robohash.org/etnumquamaut.png?size=300x300&set=set1", bio: "Exercitationem totam id autem.", phone: "(132) 221-6302", location: "Lindmouth, NC", user_id: 13},
  {name: "Mica Keeling", user_img_url: "https://robohash.org/etdolorquo.png?size=300x300&set=set1", bio: "Deserunt incidunt aut aut.", phone: "985-251-8969", location: "Thielmouth, NC", user_id: 14},
  {name: "Blythe King", user_img_url: "https://robohash.org/laudantiumexplicaboprovident.png?size=300x300&set=set1", bio: "Quam veritatis ut illum.", phone: "(435) 245-6414", location: "New Bethanie, WI", user_id: 15},
  {name: "Rosalie Thiel", user_img_url: "https://robohash.org/modidoloreset.png?size=300x300&set=set1", bio: "Maiores sint officiis qui.", phone: "940.124.6437", location: "Lake Krismouth, OK", user_id: 16},
  {name: "Kristyn Boyer", user_img_url: "https://robohash.org/velnatusquia.png?size=300x300&set=set1", bio: "Ea magni est sunt.", phone: "142.955.7840", location: "North Kelleychester, GA", user_id: 17},
  {name: "Sen. Oma Reynolds", user_img_url: "https://robohash.org/veniamquienim.png?size=300x300&set=set1", bio: "Enim tempora at possimus.", phone: "710-050-2946", location: "East Ronnyview, KY", user_id: 18},
  {name: "Douglas Willms", user_img_url: "https://robohash.org/autemvitaecommodi.png?size=300x300&set=set1", bio: "Sit esse dicta ducimus.", phone: "1-533-822-6945", location: "South Vincenzo, NE", user_id: 19},
  {name: "Willis Pagac", user_img_url: "https://robohash.org/rerumconsectetursed.png?size=300x300&set=set1", bio: "Veniam nostrum quo minus.", phone: "1-297-123-0562", location: "East Dottymouth, FL", user_id: 20},
  {name: "Ms. Maragret Christiansen", user_img_url: "https://robohash.org/dignissimosinmolestiae.png?size=300x300&set=set1", bio: "Fugiat suscipit veritatis voluptatibus.", phone: "(325) 707-6451", location: "Sengerton, WI", user_id: 21},
  {name: "Franklin Turcotte", user_img_url: "https://robohash.org/omnisistenecessitatibus.png?size=300x300&set=set1", bio: "Eum porro hic asperiores.", phone: "(588) 292-9627", location: "Port Haihaven, IL", user_id: 22},
  {name: "Alva Turner", user_img_url: "https://robohash.org/vitaeinventoretotam.png?size=300x300&set=set1", bio: "Qui eum optio qui.", phone: "1-148-066-1930", location: "Brandonview, IA", user_id: 23},
  {name: "Angela Runolfsson", user_img_url: "https://robohash.org/sedvelquos.png?size=300x300&set=set1", bio: "Velit esse ut totam.", phone: "325-485-0606", location: "Bauchside, OH", user_id: 24},
  {name: "Wade Cormier", user_img_url: "https://robohash.org/placeatdebitisunde.png?size=300x300&set=set1", bio: "Rerum nobis officiis dolores.", phone: "851-258-7014", location: "Ariannachester, GA", user_id: 25},
  {name: "Pres. Asuncion O'Connell", user_img_url: "https://robohash.org/quamvoluptasaspernatur.png?size=300x300&set=set1", bio: "Nihil placeat sed repellendus.", phone: "(116) 929-6086", location: "Deemouth, LA", user_id: 26},
  {name: "Titus Stehr", user_img_url: "https://robohash.org/voluptatemoptionecessitatibus.png?size=300x300&set=set1", bio: "Blanditiis velit est harum.", phone: "(563) 676-1031", location: "West Alonaland, NY", user_id: 27},
  {name: "Christian Will III", user_img_url: "https://robohash.org/quiamolestiasdicta.png?size=300x300&set=set1", bio: "Eum laboriosam non consequatur.", phone: "1-594-671-1272", location: "New Jerome, ND", user_id: 28},
  {name: "Dr. Alva D'Amore", user_img_url: "https://robohash.org/aliaseaut.png?size=300x300&set=set1", bio: "Et quae dolor est.", phone: "1-679-929-6284", location: "Naderstad, MT", user_id: 29},
  {name: "Sacha Braun", user_img_url: "https://robohash.org/etnequemagnam.png?size=300x300&set=set1", bio: "Rerum occaecati perspiciatis ratione.", phone: "1-452-561-0591", location: "East Rae, SC", user_id: 30}
])

