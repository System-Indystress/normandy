{-#LANGUAGE QuasiQuotes#-}
module Language.Thesaurus.RogetLite.Abode
(abode
) where

import Language.Thesaurus

abode :: ThProg
abode =
  [thesaurus|
    # Space
    ## Abode
      noun:
        *abode
          dwelling, lodging, domicile, residence, address, habitation, where one's lot is cast, local habitation, berth, diggings, seat, lap, sojourn, housing, quarters, headquarters, resiance, tabernacle, throne, ark
        *home
          fatherland, country, homestead, homestall, fireside, hearth, hearth stone, chimney corner, ingleside, harem, seraglio, zenana, household gods, lares et penates, roof, household, housing, dulce domum, paternal domicile, native soil, native land
        *nest
          nidus, snuggery, arbor, bower, lair, den, cave, hole, hiding place, cell, sanctum sanctorum, aerie, eyry, rookery, hive, covert, resort, retreat, perch, roost, nidification, kala jagah
        *bivouac
          camp, encampment, cantonment, castrametation, barrack, casemate, casern
        *tent
          building, chamber, xenodochium
        *tenement
          messuage, farm, farmhouse, grange, hacienda, toft.
        *cot
          cabin, hut, chalet, croft, shed, booth, stall, hovel, bothy, shanty, dugout, wigwam, pen, barn, bawn, kennel, sty, doghold, cote, coop, hutch, byre, cow house, cow shed, stable, dovecote, columbary, columbararium, shippen, igloo, iglu, jacal, lacustrine dwelling, lacuslake dwelling, lacuspile dwelling, log cabin, log house, shack, shebang, tepee, topek
        *house
          mansion, place, villa, cottage, box, lodge, hermitage, rus in urbe, folly, rotunda, tower, chateau, castle, pavilion, hotel, court, manor-house, capital messuage, hall, palace, kiosk, bungalow, casa, country seat, apartment house, flat house, frame house, shingle house, tenement house, temple
        *hamlet
          village, thorp, dorp, ham, kraal, borough, burgh, town, city, capital, metropolis, suburb, province, country, county town, county seat, courthouse, ghetto
        *street
          place, terrace, parade, esplanade, alameda, board walk, embankment, road, row, lane, alley, court, quadrangle, quad, wynd, close, yard, passage, rents, buildings, mews
        *square
          polygon, circus, crescent, mall, piazza, arcade, colonnade, peristyle, cloister, gardens, grove, residences, block of buildings, market place, place, plaza
        *anchorage
          roadstead, roads, dock, basin, wharf, quay, port, harbor
        *quarter
          parish
        *assembly room
           meetinghouse, pump room, spa, watering place, inn, hostel, hostelry, hotel, tavern, caravansary, dark bungalow, khan, hospice, public house, pot house, mug house, gin palace, bar, bar room, barrel house, cabaret, chophouse, club, clubhouse, cookshop, dive, exchange, grill room, saloon, shebeen, coffee house, eating house, canteen, restaurant, buffet, cafe, estaminet, posada, almshouse, poorhouse, townhouse
        *garden
          park, pleasure ground, plaisance, demesne
    verb:
      *take up one's abode
        inhabit
    adj:
      *urban
        metropolitan, suburban, provincial, rural, rustic, domestic, cosmopolitan, palatial
  |]
