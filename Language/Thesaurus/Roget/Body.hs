module Language.Thesaurus.Roget.Body
(body)
where

import Language.Thesaurus

body :: ThProg
body = do
  [thesaurus|# The Body and Senses|]
  birth
  theBody
  hair
  clothingMaterials
  clothing
  unclothing
  nutrition
  eating
  refreshment
  food
  cooking
  excretion
  scretion
  bodilyDevelopment
  strength
  weakness
  energy
  power
  impotence
  rest
  fatigue
  sleep
  wakefulness
  sensation
  insensibility
  pain
  vision
  defectiveVision
  opticalInstruments
  blindness
  visibility
  invisibility
  appearance
  disappearance
  color
  colorlessness
  whiteness
  blackness
  grayness
  brownness
  redness
  orangeness
  yellowness
  greenness
  blueness
  purpleness
  variegation
  hearing
  deafness
  sound
  silence
  faintnessOfSound
  loudness
  resonance
  repeatedSounds
  explosiveNoise
  sibilation
  stridency
  cry
  animalSounds
  discord
  taste
  savoriness
  unsavoriness
  insipidness
  sweetness
  sourness
  pungency
  odor
  fragrance
  stench
  odorlessness
  touch
  sensationsOfTouch
  sex
  masculinity
  femininity
  reproduction
  cleanness
  uncleanness
  healthfulness
  unhealthfulness
  health
  fitness
  disease
  remedy
  substanceAbuse
  intoxication
  tobacco
  healthCare
  therapy
  psychology

birth = [thesaurus|
  ## Birth
    noun:
      *birth
        genesis, nativity, nasency, childbirth, childbearing, having a baby, giving birth,
        birthing, parturition, biogenesis, the stork, patter of tiny feet,
      *confinement
        lying-in, being brought to bed, childbed, accouchement, labor, travail, birth throes, pangs,
      *delivery
        blessed event, the Nativity, multiparity, hatching, littering, whelping,
        farrowing, active birth, alternative brith, obstetrics
    verb:
      *be born
        have birth, come forth, issue forth, see the light of day, come into the world,
        hatch, be illegitimate, born out of wedlock, have the bar sinister,
        be born on the wrong side of the blanket, come in through a side door
      *give birth
        bear, have young, have, have a baby, bear a child, have children, drop, cast,
        throw, pup, whelp, kitten, foal, calve, fawn, lamb, cub, yean, farrow, litter,
        spawn, lay eggs, lie in, be confined, labor, travail
    adj:
      *born
        given birth, post-natal, hatched, bred, begotten, cast, dropped, whelped, foaled,
        calved, cast naked upon the naked earth, newborn, stillborn, bearing, giving birth, natal
|]

theBody = [thesaurus|
  ## The Body
    noun:
      *body
        the person, carcass, anatomy, frame, bodily entity, corporal entity, corporeal entity,
        physical self, physical structure, bodily structure, physique, soma, somatotype, bod, torso,
        trunk, organism, organic complex, flesh and blood, the material part, the physical part
      *skeleton
        bones, one's bones, framework, frame, form, structure, shell, bony framework, endoskeleton,
        bag of bones, axial skeleton, appendicular skeleton, visceral skeleton, rib cage, skeletology,
        bone, cartilage
      *muscles
        myon, voluntary muscle, involuntary muscle, musculature, physique, connective tissue,
        connectivum, thew, sinew, tendon, ligament, cartilage
      *skin
        the skin, dermis, integuement, epidermis, scartskin, ecderon, hypodermis, hypodermia,
        dermis, derma, derm, corium, true skin, cutis, cuticle, epithelium, pavement epithelium,
        endothelium, mesoderm, endoderm, entoderm, blastoderm, ectoderm, epiblast, ectoblast,
        enderon, connective tissue, age spot, liver spot, slough, cast, desquamation, exuviae,
        molt
      *membrane
        membrana, pellicle, chorion, basement membrane, membrana propria, allantoic membrane, amnion,
        amniotic sac, arachnoid membrain, serous membrane, serosa, membrena sarosa, eardrum,
        tympanic membrane, tympanum, membrana tympana, mucous membrane, velum, peritoneum, periosteum,
        pleura, pericardium, meninx, meninges, perineurium, neurilemma, conjunctiva, hymen, maidenhead
      *member
        appendage, external organ, head, noggin, noodle, arm, bicep, leg, limb, shank, gam, pin,
        legs, wheels, shin, cnemis, ankle, tarsus, calf, knee, thigh, ham, popliteal space, hand,
        paw, finger, foot, dog puppy, toe
      *teeth
        dentition, ivories, choppers, pearly whites, periodontal tissue, alveolar ridge, alveous,
        tooth, fang,tusk, snag, snaggletooth, peg, bucktooth, gagtooth, gang tooth, pivot tooth, cuspid,
        bicuspid, canine tooth, canine, dogtooth, eyetooth, carnassial, tush, molar, grinder, gnasher,
        premolar, incisor, cutter, fore-tooth, wisdom tooth, milk tooth, baby tooth, deciduous tooth,
        permanent tooth, crown, cusp, dentine, enamel
      *eye
        visual organ, organ of vision, oculus, optic, orb, peeper, clear eyes, bright eyes,
        starry orbs, saucer eyes, banjo eyes, popeyes, google eyes, naked eye, unassisted eye,
        unaided eye, corner of the eye, epicanthus, epicanthic fold, eyeball,
        retina, lens, cornea, sclera, optic nerve, iris, pupil, eyelid, lid, nictitating membrane,
        choroid coat, aqueous humor, vitreous humor
      *ear
        auditory apparatus, hearing organ, lug, external ear, outer ear, auricle, pinna, tragus,
        cauliflower ear, concha, conch, shell, ear lobe, lobe, lobule, auditory canal, acoustic meatus,
        auditory meatus, helix, middle ear, tympanic cavity, tympanum, eardrum, drumhead, tympanic membrane,
        auditory ossicles, malleus, hammer, incus, anvil, stapes, stirrup, mastoid process, eustachian tube,
        auditory tube, innter ear, round window, secondary eardrum, oval window, bony labryrinth,
        membraneous labyrinth, utricle, perilymph, endolymph, vestibule, semicircular canals, cochlea,
        basilar membrane, organ of Corti, auditory nerve, acoustic nerve
      *nose
        nasal organ, snout, smeller, proboscis, beak, schnoz, snout, muzzle, nostril, naris, nasal cavity,
        olfactory nerve
      *mouth
        oral cavity, lips, tongue, taste buds, mandible, jaw, maw, gums, periodontal tissue, uvula, teeth
      *genitals
        genetalia, sex organs, reproductive organs, pudenda, private parts, privy parts, privates,
        meat, naughty bits, crotch, groin, pubic region, perineum, pelvis, male organs,
        penis phallus, lingam, gans penis, gonads, testes, testivles, balls, nuts, rocks,
        ballocks, nads, family jewels, cullions, spermary, scrotum, bag, basket, cod, vas deferens,
        female organs, vulva, yoni, cunt, vagina, clitoris, glans clitoridis, pudenda, labia,
        labia major, labia minora, lips, nymphae, cervix, ovary, uturus, womb, fallopian tubes,
        secondary sex characteristic, mons pubis, mons veneris, pubic hair, beard, breasts
      *nervous system
        nerves, central nervous system, peripheral nervous system, autonomic nervous system,
        sympathetic nervous system, thoracolumbar nervous system, parasympathetic nervous system,
        craniosacral nervous system, nerve, neuron, nerve cell, sensory neuron, afferent neuron,
        association neuron, internuncial neuron, nerve fiber axion, dendrite, myelin sheath,
        medullary sheath, synapse, effector organ, nerve trunk, ganglion, plexus, solar plexus, spinal cord
      *brain
        encephalon, cerebrum, cerebellum, cerebral matter
      *organs
        viscera, vitals, internal organs, insides, innards, entrails, inwards, internals, thoracic viscera,
        abdominal viscera, inner mechanism, works, peritoneum, peritoneal cavity, guts, kishkes,
        giblets, heart, ticker, pump, endocardium, atria, ventricles, aorta, lung, lungs, liver, gallbladder,
        spleen, pancreas, kidney, kidneys, urethra
      *digestion
        ingestion, assimilation, absorption, primary digestion, secondary digestion, peristalsis, predigestion,
        salvitary digestion, gastric digestion, peptic digestion, pancreatic digestion, intestinal digestion,
        digestive system, alimentary canal, gastrointestinal tract, salivary glands, gastric glands,
        liver, pancreas, digestive secretions, saliva, gastric juice, pancreatic juice, intestinal juice, bile
      *digestive system
        mouth, maw, salivary glands, gullet, crop, craw, throat, pharynx, esophagus, gorge, weasand, wizen, fauces,
        isthmus of the fauces, abdomen, stomach, belly, midriff, diaphram, swollen belly, distended belly,
        protruding belly, prominent belly, beer belly, embonpoint, paunch, ventripotence, underbelly,
        pylorus, intestine, intestines, entrails, bowels, small intestine, villus, odenum, jejunum, ileum,
        blind gut, cecum, forgut, hindgut, midgut, mesogaster appendix, vermiform appendix, vermiform process,
        large intestine, colon, sigmoid flexure, rectum, anus
      *tummy
        goozle, guzzle, tum, tum-tum, breadbasket, gut, bulge, fallen chest, corporation, spare tire, bay window,
        pot, potbelly, potgut, beerbelly, german goiter, milwaukee goiter, pusgut, swagbelly, guts, tripes, stuffings
      *metabolism
       metabolic process, basal metabolism, acid-base metabolism, energy metabolism, anabolism, substance metabolism,
       constructive metabolism, assimilation, catabolism, destructive metabolism, disassimilation, endogeneous metabolism,
       exogenous metabolism, pharmacokinetic metabolism, uricotelic metabolism, metabolic rate
      *breathing
        respiration, aspiration, inspiration, inhalation, expiration, exhalation, insufflation, exsufflation,
        breath, wind, breath of air, three-part breath, pant, puff, wheeze, asthmatic wheeze, broken wind, gasp,
        gulp, snoring, snore, stertor, sniff, sniffle, snuff, snuffle, sigh, suspriation, sneeze, sternutation,
        cough, hack, hiccup, artifical repsiration, kiss of life, mouth-to-mouth, resuscitation, anaerobic raspiration
      *respitory system
        lungs, bellows, lights, diahram, windpipe, trachea, weasand, wizen, bronchus, bronchi, bronchial tube, epiglottis
      *duct
        vessle, canal, passage, gland, vasculature, vascularity, vascularization, vas, meatus, thoracic duct,
        lymphatic, emunctry, pore, urethra, urete, vagina, oviduct, fallopian tube, salpinx, eustachian tube,
        ostium, fistula, blood vessle, artery, aorta, pulmonary artery, carotid, vein, jugular vein, vena cava,
        pulmonary vein, portal vein, varicose vein, venation, capillary, arteriole, veinlet, veinule, venule
      *body fluids
        humor, lymph, chyle, choler, yellow bile, black bile, rheum, serous fluid, serum, plasma,
        pus, matter, purulence, peccant humor, suppuration, ichor, sanies, discharge, gleet, leukorrhea,
        the whites, mucus, phlegm, snot, saliva, spit, urine, piss, perspiration, sweat, tear, teardrop,
        lachryma, milk, mother's milk, colostrum, lactation, semen, cerumen, earwax
      *blood
        whole blood, lifeblood, vital fluid, venous blood, arterial blood, gore, ichor, humor, grume,
        serum, blood serum, blood substitute, plasma, synthetic plasma, plasma substitute, dextran,
        clinical dextran, blood cell, corpuscle, hemocyte, red corpuscle, red blood cell, erythrocyte,
        white corpuscle, white blood cell, leukocyte, blodo platelet, hemoglobin, blood pressure,
        circulation, blood group, blood type, type O, type A, type B, type AB, Rh-type, Rh-positive,
        Rh-negative, Rh factor, Rhesus factor, antigen, antibody, isoantibody, globulin, opsonin,
        blood grouping, blood count, hematoscope, hematoscopy, hemometer, bloodstream
    adj:
      *skeleton
        skeletal, bone, osteal, bony, osseous, ossiferous, ossicular, ossified, spinal, myelic, muscle, muscular,
        myoid, cartilage, cartilaginous
      *cutaneous
        curicular, skinlike, skinny, skin-deep, epidermal, epidermic, ecderonic, hypodermic, hypodermal,
        subcutaneous, dermal, dermic, ectodermal, ectodermic, endermic, endermatic, cortical, epicarpal,
        testaceous, membranous
      *optic
        eye, ophthalmic, optical, visual, ear, otic, aural
      *genital
        phallic, penile, penial, testicular, scrotal, spermatic, seminal, vulvar, vulval, vaginal,
        clitoral, cervical, ovarian, uterine, reproductive, generative, hormonal, sexual
      *neural
        nerve, neurological, brain, cerebral, cerebellar, nervous, synaptic
      *digestive
        stomachal, stomachic, abdominal, ventral, celiac, gastric, ventricular, big-bellied, metabolic,
        basal metabolic, anabolic, catabolic, assimilative, dissimilative
      *respitory
        breathing, inspiratory, expiratory, nasal, rhinal, bronchial, tracheal, lung,
        pulmonary, pulmonic, pneumonic, puffing, huffing, snorting, wheezing, wheezy,
        asthmatic, stertorous, snoring, panting, heaving, sniffy, sniggly, sniffling, snuffy, snuffly,
        snuffling, sneezy, sternutative, sternutatory, errhine
      *circulatory
        vascular, vascularized, circulating, vasiform, venous, veinal, venose, capillary, arterial,
        aortic, blood, hematal, hematic, bloody, gory, sanguinary, lymphatic rheumy, humoral, phlegmy,
        ichorous, serous, sanious, chyific, chylifactive, chylifactory, puslike, purulent, suppurated,
        suppurating, suppurative, teary, tearing, tearlike, lachrymal, lacrimal, lacrimatory, mucous,
        sweaty, perspiring, urinary
      *blood types
      A-, B+, A+, O-, AB-, O+, AB+, Rh-negative, B-, RH-positive
      *bones
        acetabelum, aitchbone, alveolar bone, anklebone, anvil, astragalus, backbone, spine, spinal column,
        myel, basilar, breastbone, calcaneus, calf bone, cannon bone, carpal, cheekbone, chin, clavical,
        coccyx, collarbone costa, cranial bones, cranium, cuboid, edgebone, ethmoid, femur, floating rib,
        frontal, funny, gladious, hallux, hammer, haunch, heel, hip, humerus, hyoid, ilium, incus,
        inferior maxillary, innominate, intermaxillary, interparietal, ischium, kneecap, patella,
        lacrimal, lenticular, lentiform, malar, malleus, mandible, mastoid, maxillary, metacarpal,
        metatarsal, multangular, nasal, occipital, palate, parietal, pelvis, periotic, petrosal, phalanx,
        pterygoid, pubis, pyramidal, rachidial, rachis, radius, rib, sacrum, scaphoid, scapula, semilunar,
        sesamoid, shin, shoulder blade, skull, sphenoid, stapes, sternum, stirrup, sutural, talus,
        tarsal, temporal, thigh, tibia, ulna, vertebra, vomer, wrist, zygomatic
      *muscles
        abdominal, anteria tibial, biceps, crural ligaments soleus, deltoid, erector, external oblique,
        extensor, fascia lata, flexor, gastrocnemius, gluteus maximus, gracilis, hamstring, latissimus dorsi,
        pectoralis major, pectoralis minor, quadriceps, rectal abdominis, rectus femoris, rotator cuff,
        sartorius, sternomastoid, tendon of Achilles, trapezius, triceps
|]

hair = [thesaurus|
  ## Hair
  noun:
    *hariness
      shagginess, hirsuteness, pilosity, fuzziness, frizziness, furriness, downiness,
      fluffiness, woolliness, fleeciness, bristliness, stubbliness, burrheadedness, mopheadedness,
      shockheadedness, crinosity, hispidity, villosity, hypertrichosis, pilosis, pilosism, pilosity
    *hair
      pile fur, coat, pelt, fleece, fuzz, wool, camel's hair, horsehair, hide mane, shag,
      tousled hair, matted hair, mat of hair, pubescence, pubes, pubic hair, hairlet, villus,
      capillament, cilium, cilolum, seta, setula, bristle
    *gray hair
      grizzle, silver hair, silvery hair, white hair, salt-and-pepper hair, graying temples,
      hoary hair, the silver livery of advised age
    *head of hair
      head, crine, crop, crop of hair, mat, elflock, thatch, mop, shock, shag, fleece,
      mane, locks, tresses, crowning glory, helmet of hair
    *lock
      tress, flowing locks, fowing tresses, curl, ringlet, wisp, earlock, payess,
      lovelock, frizz, frizzle, crimp, ponytail
    *tuft
      flock, fleck, forelock, widow's peak, crest, quiff, fetlock, cowlick, bang, bangs,
      fringe
    *braid
      plait, twist, pigtail, rat's-tail, rat-tail, tail, queue, cue, coil, knot,
      topknot, scalplock, pigtail, bunches, bun, chignon, widow's peak, dreadlock, cornrow
    *beard
      whiskers, facial hair, beaver, full beard, chin whiskers, side whiskers, sideburns,
      burnsides, muttonchops, goatee, tuft, imperial, Vandyke, spade beard, adolescent beard,
      pappus, down, peach fuzz, the soft down of manhood
    *plant beard
      awn, brush, arista, pile, pappus, nettle
    *animal wiskers
      tactile process, tactile hair, feeler, antenna, vibrissa, barb, barbel, barbule,
      tentacle, palpus, cat whisker
    *mustache
      mustachio, soup-stainer mustachios, toothbrush, handle bars, handlebar, Fu Manchu, Zapata, walrus,
      tash
    *eyelashes
      lashes, cilia, eyebrows, brows
    *false hair
      hair extensions, switch, fall, chignon, rat, false eyelashes
    *wig
      peruke, toupee, hairpiece, rug, divot, doormat, weave, merkin, perwig, hair extensions
    *hairdo
      hairstyle, haircut, do, coiffure, coif, headdress, wave, marcel, marcel wave, permanent,
      permanent wave, home permanent, cold wave, blow-drying, finger-drying
    *feather
      plume, pinion, quill, pinfeather, contour feather, penna, down feather, plume feather,
      plumule, tail feather, filoplume, hackle, scapular, crest, tuft, topknot, panache
    *parts of feathers
      quil, calamus, barrel, barb, shaft, barbule, barbicel, cilium, filament, filamentule, plumule
    *plumage
      feathers, feather, feathering, contour feathers, breast feathers, mail, hackle, flight feathers,
      remiges, primaries, secondaries, tertiaries, covert, tectrices, speculum, wing bay
    *down
      fluff, flue, floss, fuzz, fur, pile, fleece, fine hair, eiderdown, eider, swansdown, thistledown, lint
  verb:
    *grow
      sprout, whisker, bewhisker
    *feather
      fledge, feather out, sprout wings
    *cut
      dress, trim, barber, coiffure, coif, style, shape, prompadour, wave, marcel, process,
      conk, bob, shingle
  adj:
    *hairlike
      trichoid, capillary, filamentous, filamentary, filiform, bristlelike
    *hairy
      hirsute, barbigerous, crinose, crinite, pubescent, pilose, pilous, pileous, furry,
      furred, bushy, villous, vilose, ciliate, cirrose, hispid, hispidulous, setal, woolly,
      fleecy, lanate, lanated, woolly-haired, ulotrichous, bushy, tufty, shaggy, shagged
      matted, tomentose, mopheaded, burrheaded, shockheaded, unshorn, bristly, fuzzy
    *bearded
      whiskered, whiskery, bewhiskered, barbate, barbigerous, mustached, mustachioed,
      awned, awny, pappose, goateed, unshaved, unshaven, stubbled, stubbly, bristly
    *wigged
      periwigged, peruked, toupeed
    *feathery
      plumy, hrsute, featherlike, plumelike, pinnate, pennate, downy, fluffy, nappy,
      velvety, peachy, fuzzy, flossy, furry
    *feathered
      plumaged, flighted, pinioned, plumed, pennate, plumate, plumose
    *tufted
      crested, topknotted
|]
clothingMaterials = [thesaurus|
## Clothing Materials
  noun:
|]
clothing = [thesaurus|
## Clothing
  noun:
    *clothing
      clothing,clothes, apparel, wear, wearing, apparel, daywear, dress, dressing, raiment,
      garmenture, garb, attire. array, habit, habiliment, fashion, style, guise, costume, costumery,
      gear, toilette, trim, bedizenment, vestment, vesture, investment, investiture, canonicals,
      liturgical garment; garments, robes, robing, rags, drapery, finery, feathers, toggery, togs,
      duds, threads, sportswear, work clothes,fatigues, linen, menswear, mens clothing,
      womenswear, womens clothing, unisex clothing,latest fashion
    *wardrobe
      furnishings, things, accouterments, trappings, gear, outfit, livery, harness, caparlson,
      turnout, getup, rig, rig-out, wedding clothes, bridal outfit, trousseau, maternity clothes
    *garment
      vestment, vesture, robe, frock, gown, rage
    *ready-mades
      ready-to-wear, off-the-rack, off-the-peg clothes, store bought, wash-and-wear,
      dry goods
    *rags
      tatters, secondhand clothes, seconds, old clothes, castoff clothes, preowned clothing,
      consignment clothes, Goodwill clothes, worn clothes, hand-me-downs, reach-me-downs,
      castoffs; slops
    *suit
      suit of clothes, set of clothes, ensemble, frock, dress, rig, costume, habit,
     bib and tucker
    *uniform
      livery, monkey suit, nurse's uniform, police officer's uniform,
      athletic team uniform, baseball uniform, sports uniform
    *mufti
      civilian dress, civvies, cits, plain clothes
    *costume
      costumery, character dress, outfit, getup,rig,
      masquerade, disguise, mask, tights, leotards,
      ballet skirt, tutu, bodysuit,
      motley, cap and bells, silks; buskin
    *finery
      frippery, fancy dress, fine feather, full feather,
      investiture, regalia, caparison, fig, full fig,
      best clothes, best bib and tucker,Sunday best, Sunday clothes,
      Sunday-go-to-meeting clothes, Sunday-go-to-meetings,
      glad rags, ostrich feathers, party dress,
      dress-up clothes, dressy clothes, power dressing
    *formal dress
      formals, evening dress, evening wear, full dress, dress clothes,
      evening wear, white tie and tails, soup-and-fish, dinner clothes,
      dress suit, full-dress suit,
      tail coat, tails, tuxedo, tux, dinner jacket, regalia, court dress,
      dress uniform, full-dress uniform, special full-dress uniform, social full-dress uniform,
      whites, dress whites, white tie, evening gown, evening dress, dinner dress, dinner gown,
      prom dress, ball dress, morning dress, morning coat, semiformal dress, black tie,
      bow tie, cummerbund

    *cloak
      overgarment
    *outerwear
     coat, jacket, overcoat, great-coat, topcoat, surcoat, rainwear, rain gear,
     raincoat, slicker, rainsuit, foul weather gear,
    *waistcoat
      weskit, vest, down vest
    *shirt
      waist, shirtwaist, linen, sark and shift, blouse, bodice, pullover, shell, Tshirt,
      dickey, sweater
    *dress
      gown, frock, skirt
    *apron
      tablier, pinafore, bib, tucker, smock
    *pants
      trousers, pair of trousers, pair of pants, breeches, britches, pantaloons, jeans,
      designer jeans, blue jeans, dungarees, slacks, khakis, chinos, corduroys, cords, flannels,
      ducks, pinstripes, bell-bottoms, hiphuggers, Capri pants, Capris, pegged pants, pedal pushers,
      leggings, overalls, knickers, breeches, jodhpurs, sweatpants, cargo pants, carpenter pants, shorts,
      short pants, Bermuda shorts, hot pants, Jamaica shorts, surfer shorts, board shorts, short shorts,
      cycling shorts, gym shorts,
    *waistband
      belt, sash, cummerbund, loincloth, breechcloth, breechclout, waistcloth, G-string, loinguard,
      dhoti, moocha, diaper, dydee, napkins, nappies
    *dishabille
      deshabille, undress, something more comfortable, negligee, neglige, wrap,
      wrapper, sport clothes, playwear, activewear, sportswear, casual wear, leisurewear, casual
      clothes, fling-on clothes, loungewear, plain clothes, dress-down clothes, knock-around clothes
|]
