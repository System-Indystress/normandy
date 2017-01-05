module Language.Thesaurus.RogetLite where
import Prelude hiding (error,length, sequence)
import Language.Thesaurus

import Language.Thesaurus.RogetLite.Abode
import Language.Thesaurus.RogetLite.Abrogation
import Language.Thesaurus.RogetLite.Absence
import Language.Thesaurus.RogetLite.AbsenceOfInfluence
import Language.Thesaurus.RogetLite.AbsenceOfMotive
import Language.Thesaurus.RogetLite.Absurdity
import Language.Thesaurus.RogetLite.Accompaniment
import Language.Thesaurus.RogetLite.Accounts
import Language.Thesaurus.RogetLite.Accusation
import Language.Thesaurus.RogetLite.Achromatism
import Language.Thesaurus.RogetLite.Acquisition
import Language.Thesaurus.RogetLite.Acquittal
import Language.Thesaurus.RogetLite.Action
import Language.Thesaurus.RogetLite.Activity
import Language.Thesaurus.RogetLite.Addition
import Language.Thesaurus.RogetLite.Adjunct
import Language.Thesaurus.RogetLite.Adolescence
import Language.Thesaurus.RogetLite.Adversity
import Language.Thesaurus.RogetLite.Advice
import Language.Thesaurus.RogetLite.Affection
import Language.Thesaurus.RogetLite.Affirmation
import Language.Thesaurus.RogetLite.Age
import Language.Thesaurus.RogetLite.Agency
import Language.Thesaurus.RogetLite.Agent
import Language.Thesaurus.RogetLite.Aggrivation
import Language.Thesaurus.RogetLite.Agitation
import Language.Thesaurus.RogetLite.Agreement
import Language.Thesaurus.RogetLite.Agriculture
import Language.Thesaurus.RogetLite.Aid
import Language.Thesaurus.RogetLite.Air
import Language.Thesaurus.RogetLite.Airpipe
import Language.Thesaurus.RogetLite.Alarm
import Language.Thesaurus.RogetLite.Allocution
import Language.Thesaurus.RogetLite.Ambush
import Language.Thesaurus.RogetLite.Amorphism
import Language.Thesaurus.RogetLite.Amusement
import Language.Thesaurus.RogetLite.Anachronism
import Language.Thesaurus.RogetLite.Angel
import Language.Thesaurus.RogetLite.Angularity
import Language.Thesaurus.RogetLite.Animal
import Language.Thesaurus.RogetLite.Animality
import Language.Thesaurus.RogetLite.Answer
import Language.Thesaurus.RogetLite.Aphony
import Language.Thesaurus.RogetLite.Appearance
import Language.Thesaurus.RogetLite.Apportionment
import Language.Thesaurus.RogetLite.Approach
import Language.Thesaurus.RogetLite.Approbation
import Language.Thesaurus.RogetLite.Arena
import Language.Thesaurus.RogetLite.Arms
import Language.Thesaurus.RogetLite.Arrangement
import Language.Thesaurus.RogetLite.Arrival
import Language.Thesaurus.RogetLite.Artist
import Language.Thesaurus.RogetLite.Artlessness
import Language.Thesaurus.RogetLite.Ascent
import Language.Thesaurus.RogetLite.Atonement
import Language.Thesaurus.RogetLite.Attack
import Language.Thesaurus.RogetLite.Attention
import Language.Thesaurus.RogetLite.Attraction
import Language.Thesaurus.RogetLite.Attribution
import Language.Thesaurus.RogetLite.Authority
import Language.Thesaurus.RogetLite.Auxillary
import Language.Thesaurus.RogetLite.Avoidance
import Language.Thesaurus.RogetLite.BadMan
import Language.Thesaurus.RogetLite.Baddness
import Language.Thesaurus.RogetLite.Bane
import Language.Thesaurus.RogetLite.Barter
import Language.Thesaurus.RogetLite.Base
import Language.Thesaurus.RogetLite.Beauty
import Language.Thesaurus.RogetLite.Beginning
import Language.Thesaurus.RogetLite.Belief
import Language.Thesaurus.RogetLite.Benefactor
import Language.Thesaurus.RogetLite.Benevolence
import Language.Thesaurus.RogetLite.Bisection
import Language.Thesaurus.RogetLite.Blackness
import Language.Thesaurus.RogetLite.Blemish
import Language.Thesaurus.RogetLite.Blindness
import Language.Thesaurus.RogetLite.Blueness
import Language.Thesaurus.RogetLite.Bluntness
import Language.Thesaurus.RogetLite.Bluster
import Language.Thesaurus.RogetLite.Boasting
import Language.Thesaurus.RogetLite.Book
import Language.Thesaurus.RogetLite.Booty
import Language.Thesaurus.RogetLite.Borrowing
import Language.Thesaurus.RogetLite.Botany
import Language.Thesaurus.RogetLite.Breadth
import Language.Thesaurus.RogetLite.Brittleness
import Language.Thesaurus.RogetLite.Brown
import Language.Thesaurus.RogetLite.Bubble
import Language.Thesaurus.RogetLite.Bungler
import Language.Thesaurus.RogetLite.Business
import Language.Thesaurus.RogetLite.ByChance
import Language.Thesaurus.RogetLite.Calefaction
import Language.Thesaurus.RogetLite.Canonicals
import Language.Thesaurus.RogetLite.Caprice
import Language.Thesaurus.RogetLite.Care
import Language.Thesaurus.RogetLite.Carrier
import Language.Thesaurus.RogetLite.Cause
import Language.Thesaurus.RogetLite.Caution
import Language.Thesaurus.RogetLite.Celebration
import Language.Thesaurus.RogetLite.Celibacy
import Language.Thesaurus.RogetLite.Centrality
import Language.Thesaurus.RogetLite.Certainty
import Language.Thesaurus.RogetLite.Cessation
import Language.Thesaurus.RogetLite.Chance
import Language.Thesaurus.RogetLite.Change
import Language.Thesaurus.RogetLite.Changeableness
import Language.Thesaurus.RogetLite.Cheapness
import Language.Thesaurus.RogetLite.Cheerfulness
import Language.Thesaurus.RogetLite.Choice
import Language.Thesaurus.RogetLite.Chronometry
import Language.Thesaurus.RogetLite.Churchdom
import Language.Thesaurus.RogetLite.Circuit
import Language.Thesaurus.RogetLite.Circuition
import Language.Thesaurus.RogetLite.Circularity
import Language.Thesaurus.RogetLite.Circumjacence
import Language.Thesaurus.RogetLite.Circumscription
import Language.Thesaurus.RogetLite.Circumstance
import Language.Thesaurus.RogetLite.Class
import Language.Thesaurus.RogetLite.Cleanness
import Language.Thesaurus.RogetLite.Clergy
import Language.Thesaurus.RogetLite.Closure
import Language.Thesaurus.RogetLite.Coherence
import Language.Thesaurus.RogetLite.Cold
import Language.Thesaurus.RogetLite.Color
import Language.Thesaurus.RogetLite.Combatant
import Language.Thesaurus.RogetLite.Combination
import Language.Thesaurus.RogetLite.Command
import Language.Thesaurus.RogetLite.Commission
import Language.Thesaurus.RogetLite.Commonalty
import Language.Thesaurus.RogetLite.Compact
import Language.Thesaurus.RogetLite.Comparison
import Language.Thesaurus.RogetLite.Compendium
import Language.Thesaurus.RogetLite.Compensation
import Language.Thesaurus.RogetLite.Completeness
import Language.Thesaurus.RogetLite.Completion
import Language.Thesaurus.RogetLite.Complexity
import Language.Thesaurus.RogetLite.Component
import Language.Thesaurus.RogetLite.Composition
import Language.Thesaurus.RogetLite.Compromise
import Language.Thesaurus.RogetLite.Compulsion
import Language.Thesaurus.RogetLite.Concavity
import Language.Thesaurus.RogetLite.Concealment
import Language.Thesaurus.RogetLite.Conciseness
import Language.Thesaurus.RogetLite.Concord
import Language.Thesaurus.RogetLite.Concurrence
import Language.Thesaurus.RogetLite.Condemnation
import Language.Thesaurus.RogetLite.Condiment
import Language.Thesaurus.RogetLite.Conditions
import Language.Thesaurus.RogetLite.Condolence
import Language.Thesaurus.RogetLite.Conduct
import Language.Thesaurus.RogetLite.Conduit
import Language.Thesaurus.RogetLite.Conformity
import Language.Thesaurus.RogetLite.Confutation
import Language.Thesaurus.RogetLite.Congratulation
import Language.Thesaurus.RogetLite.Consanguinity
import Language.Thesaurus.RogetLite.Consent
import Language.Thesaurus.RogetLite.Consignee
import Language.Thesaurus.RogetLite.Contempt
import Language.Thesaurus.RogetLite.Content
import Language.Thesaurus.RogetLite.Contention
import Language.Thesaurus.RogetLite.Contents
import Language.Thesaurus.RogetLite.Contiguity
import Language.Thesaurus.RogetLite.ContingentDuration
import Language.Thesaurus.RogetLite.Continuance
import Language.Thesaurus.RogetLite.Continuity
import Language.Thesaurus.RogetLite.Contraction
import Language.Thesaurus.RogetLite.Contraposition
import Language.Thesaurus.RogetLite.Contrariety
import Language.Thesaurus.RogetLite.Convergence
import Language.Thesaurus.RogetLite.Conversion
import Language.Thesaurus.RogetLite.Convexity
import Language.Thesaurus.RogetLite.Convolution
import Language.Thesaurus.RogetLite.Cooperation
import Language.Thesaurus.RogetLite.Copy
import Language.Thesaurus.RogetLite.Corpse
import Language.Thesaurus.RogetLite.Correlation
import Language.Thesaurus.RogetLite.Correspondence
import Language.Thesaurus.RogetLite.Council
import Language.Thesaurus.RogetLite.CounterEvidence
import Language.Thesaurus.RogetLite.Counteraction
import Language.Thesaurus.RogetLite.Courage
import Language.Thesaurus.RogetLite.Course
import Language.Thesaurus.RogetLite.Courtesy
import Language.Thesaurus.RogetLite.Covering
import Language.Thesaurus.RogetLite.Cowardice
import Language.Thesaurus.RogetLite.Credit
import Language.Thesaurus.RogetLite.Credulity
import Language.Thesaurus.RogetLite.Crossing
import Language.Thesaurus.RogetLite.Cry
import Language.Thesaurus.RogetLite.Cunning
import Language.Thesaurus.RogetLite.Curiosity
import Language.Thesaurus.RogetLite.Curvature
import Language.Thesaurus.RogetLite.Danger
import Language.Thesaurus.RogetLite.Darkness
import Language.Thesaurus.RogetLite.Deafness
import Language.Thesaurus.RogetLite.Dearness
import Language.Thesaurus.RogetLite.Death
import Language.Thesaurus.RogetLite.Debt
import Language.Thesaurus.RogetLite.Deceiver
import Language.Thesaurus.RogetLite.Deception
import Language.Thesaurus.RogetLite.Decomposition
import Language.Thesaurus.RogetLite.Decrement
import Language.Thesaurus.RogetLite.Defense
import Language.Thesaurus.RogetLite.Defiance
import Language.Thesaurus.RogetLite.Degree
import Language.Thesaurus.RogetLite.Deity
import Language.Thesaurus.RogetLite.Dejection
import Language.Thesaurus.RogetLite.Deliverance
import Language.Thesaurus.RogetLite.Demon
import Language.Thesaurus.RogetLite.Demonstration
import Language.Thesaurus.RogetLite.Density
import Language.Thesaurus.RogetLite.Departure
import Language.Thesaurus.RogetLite.Deprecation
import Language.Thesaurus.RogetLite.Depression
import Language.Thesaurus.RogetLite.Depth
import Language.Thesaurus.RogetLite.Deputy
import Language.Thesaurus.RogetLite.Derangement
import Language.Thesaurus.RogetLite.Descent
import Language.Thesaurus.RogetLite.Description
import Language.Thesaurus.RogetLite.Desire
import Language.Thesaurus.RogetLite.Destiny
import Language.Thesaurus.RogetLite.Destroyer
import Language.Thesaurus.RogetLite.Destruction
import Language.Thesaurus.RogetLite.Desuetude
import Language.Thesaurus.RogetLite.Deterioration
import Language.Thesaurus.RogetLite.Detraction
import Language.Thesaurus.RogetLite.Detractor
import Language.Thesaurus.RogetLite.Deviation
import Language.Thesaurus.RogetLite.Dextrality
import Language.Thesaurus.RogetLite.Difference
import Language.Thesaurus.RogetLite.DifferentTime
import Language.Thesaurus.RogetLite.Difficulty
import Language.Thesaurus.RogetLite.Diffuseness
import Language.Thesaurus.RogetLite.Dimness
import Language.Thesaurus.RogetLite.Dimsightedness
import Language.Thesaurus.RogetLite.Direction
import Language.Thesaurus.RogetLite.Directionality
import Language.Thesaurus.RogetLite.Director
import Language.Thesaurus.RogetLite.Disagreement
import Language.Thesaurus.RogetLite.Disappearance
import Language.Thesaurus.RogetLite.Disappointment
import Language.Thesaurus.RogetLite.Disapprobation
import Language.Thesaurus.RogetLite.Disclosure
import Language.Thesaurus.RogetLite.Discontent
import Language.Thesaurus.RogetLite.Discontinutiy
import Language.Thesaurus.RogetLite.Discord
import Language.Thesaurus.RogetLite.Discordness
import Language.Thesaurus.RogetLite.Discount
import Language.Thesaurus.RogetLite.Discourtesy
import Language.Thesaurus.RogetLite.Discovery
import Language.Thesaurus.RogetLite.Discrimination
import Language.Thesaurus.RogetLite.Disease
import Language.Thesaurus.RogetLite.Disinterestedness
import Language.Thesaurus.RogetLite.Disjunction
import Language.Thesaurus.RogetLite.Dislike
import Language.Thesaurus.RogetLite.Disobedience
import Language.Thesaurus.RogetLite.Disorder
import Language.Thesaurus.RogetLite.Displacement
import Language.Thesaurus.RogetLite.Disrepute
import Language.Thesaurus.RogetLite.Disrespect
import Language.Thesaurus.RogetLite.Dissent
import Language.Thesaurus.RogetLite.Dissertation
import Language.Thesaurus.RogetLite.Dissimilarity
import Language.Thesaurus.RogetLite.Dissuasion
import Language.Thesaurus.RogetLite.Distance
import Language.Thesaurus.RogetLite.Distortion
import Language.Thesaurus.RogetLite.Disuse
import Language.Thesaurus.RogetLite.Diuturnity
import Language.Thesaurus.RogetLite.Divergence
import Language.Thesaurus.RogetLite.Divestment
import Language.Thesaurus.RogetLite.Divorce
import Language.Thesaurus.RogetLite.Drunkenness
import Language.Thesaurus.RogetLite.Dryness
import Language.Thesaurus.RogetLite.Duality
import Language.Thesaurus.RogetLite.Dueness
import Language.Thesaurus.RogetLite.Dullness
import Language.Thesaurus.RogetLite.Dupe
import Language.Thesaurus.RogetLite.Duplication
import Language.Thesaurus.RogetLite.Duty
import Language.Thesaurus.RogetLite.Earliness
import Language.Thesaurus.RogetLite.Economy
import Language.Thesaurus.RogetLite.Edge
import Language.Thesaurus.RogetLite.Effect
import Language.Thesaurus.RogetLite.Egress
import Language.Thesaurus.RogetLite.Ejection
import Language.Thesaurus.RogetLite.Elasticity
import Language.Thesaurus.RogetLite.Elegance
import Language.Thesaurus.RogetLite.Elevation
import Language.Thesaurus.RogetLite.End
import Language.Thesaurus.RogetLite.Endearment
import Language.Thesaurus.RogetLite.Enemy
import Language.Thesaurus.RogetLite.Engraving
import Language.Thesaurus.RogetLite.Enmity
import Language.Thesaurus.RogetLite.Envy
import Language.Thesaurus.RogetLite.Equality
import Language.Thesaurus.RogetLite.Equivocalness
import Language.Thesaurus.RogetLite.Error
import Language.Thesaurus.RogetLite.Escape
import Language.Thesaurus.RogetLite.Essay
import Language.Thesaurus.RogetLite.Evening
import Language.Thesaurus.RogetLite.Eventually
import Language.Thesaurus.RogetLite.Evidence
import Language.Thesaurus.RogetLite.Evil
import Language.Thesaurus.RogetLite.EvilDoer
import Language.Thesaurus.RogetLite.Evolution
import Language.Thesaurus.RogetLite.Exaggeration
import Language.Thesaurus.RogetLite.Excitability
import Language.Thesaurus.RogetLite.Excitation
import Language.Thesaurus.RogetLite.Exclusion
import Language.Thesaurus.RogetLite.Excretion
import Language.Thesaurus.RogetLite.Exemption
import Language.Thesaurus.RogetLite.Exemptionality
import Language.Thesaurus.RogetLite.Exertion
import Language.Thesaurus.RogetLite.Existence
import Language.Thesaurus.RogetLite.Expansion
import Language.Thesaurus.RogetLite.Expectance
import Language.Thesaurus.RogetLite.Expectation
import Language.Thesaurus.RogetLite.Expedience
import Language.Thesaurus.RogetLite.Expenditure
import Language.Thesaurus.RogetLite.Experiment
import Language.Thesaurus.RogetLite.Exteriority
import Language.Thesaurus.RogetLite.Extraction
import Language.Thesaurus.RogetLite.Extraneous
import Language.Thesaurus.RogetLite.Extrinsicality
import Language.Thesaurus.RogetLite.Facility
import Language.Thesaurus.RogetLite.Failure
import Language.Thesaurus.RogetLite.Faintness
import Language.Thesaurus.RogetLite.Falsehood
import Language.Thesaurus.RogetLite.Fashion
import Language.Thesaurus.RogetLite.Fastidiousness
import Language.Thesaurus.RogetLite.Fasting
import Language.Thesaurus.RogetLite.Fatigue
import Language.Thesaurus.RogetLite.Favorite
import Language.Thesaurus.RogetLite.Fear
import Language.Thesaurus.RogetLite.Feebleness
import Language.Thesaurus.RogetLite.Feeling
import Language.Thesaurus.RogetLite.Fetor
import Language.Thesaurus.RogetLite.Fewness
import Language.Thesaurus.RogetLite.Filament
import Language.Thesaurus.RogetLite.Five
import Language.Thesaurus.RogetLite.Flatness
import Language.Thesaurus.RogetLite.Flatterer
import Language.Thesaurus.RogetLite.Flattery
import Language.Thesaurus.RogetLite.Fluidity
import Language.Thesaurus.RogetLite.Focus
import Language.Thesaurus.RogetLite.Fold
import Language.Thesaurus.RogetLite.Food
import Language.Thesaurus.RogetLite.Fool
import Language.Thesaurus.RogetLite.Fop
import Language.Thesaurus.RogetLite.Foresight
import Language.Thesaurus.RogetLite.Forgiveness
import Language.Thesaurus.RogetLite.Form
import Language.Thesaurus.RogetLite.Fraction
import Language.Thesaurus.RogetLite.Fragrance
import Language.Thesaurus.RogetLite.Freedom
import Language.Thesaurus.RogetLite.Frequency
import Language.Thesaurus.RogetLite.Friction
import Language.Thesaurus.RogetLite.Friend
import Language.Thesaurus.RogetLite.Friendship
import Language.Thesaurus.RogetLite.Front
import Language.Thesaurus.RogetLite.Fuel
import Language.Thesaurus.RogetLite.Furnace
import Language.Thesaurus.RogetLite.Furrow
import Language.Thesaurus.RogetLite.Futurity
import Language.Thesaurus.RogetLite.Gaseity
import Language.Thesaurus.RogetLite.Generality
import Language.Thesaurus.RogetLite.Giving
import Language.Thesaurus.RogetLite.Gluttony
import Language.Thesaurus.RogetLite.Good
import Language.Thesaurus.RogetLite.GoodMan
import Language.Thesaurus.RogetLite.Goodness
import Language.Thesaurus.RogetLite.Grammar
import Language.Thesaurus.RogetLite.Gratitude
import Language.Thesaurus.RogetLite.Gravity
import Language.Thesaurus.RogetLite.Gray
import Language.Thesaurus.RogetLite.Greatness
import Language.Thesaurus.RogetLite.Greenness
import Language.Thesaurus.RogetLite.Guilt
import Language.Thesaurus.RogetLite.Gulf
import Language.Thesaurus.RogetLite.Habit
import Language.Thesaurus.RogetLite.Hardness
import Language.Thesaurus.RogetLite.Haste
import Language.Thesaurus.RogetLite.Hate
import Language.Thesaurus.RogetLite.Health
import Language.Thesaurus.RogetLite.Hearing
import Language.Thesaurus.RogetLite.Heat
import Language.Thesaurus.RogetLite.Heaven
import Language.Thesaurus.RogetLite.Height
import Language.Thesaurus.RogetLite.Hell
import Language.Thesaurus.RogetLite.Heterodoxy
import Language.Thesaurus.RogetLite.Hinderance
import Language.Thesaurus.RogetLite.Hope
import Language.Thesaurus.RogetLite.Hopelessness
import Language.Thesaurus.RogetLite.Horizontally
import Language.Thesaurus.RogetLite.Humility
import Language.Thesaurus.RogetLite.Humorist
import Language.Thesaurus.RogetLite.Husbandry
import Language.Thesaurus.RogetLite.Idea
import Language.Thesaurus.RogetLite.Identity
import Language.Thesaurus.RogetLite.Idolatry
import Language.Thesaurus.RogetLite.Ignoramus
import Language.Thesaurus.RogetLite.Ignorance
import Language.Thesaurus.RogetLite.Imagination
import Language.Thesaurus.RogetLite.Imbecility
import Language.Thesaurus.RogetLite.Imitation
import Language.Thesaurus.RogetLite.Immateriality
import Language.Thesaurus.RogetLite.Impenitence
import Language.Thesaurus.RogetLite.Imperfection
import Language.Thesaurus.RogetLite.Impiety
import Language.Thesaurus.RogetLite.Importance
import Language.Thesaurus.RogetLite.Impossibility
import Language.Thesaurus.RogetLite.Impotence
import Language.Thesaurus.RogetLite.Improbability
import Language.Thesaurus.RogetLite.Improbity
import Language.Thesaurus.RogetLite.Improvement
import Language.Thesaurus.RogetLite.Impulse
import Language.Thesaurus.RogetLite.Impurity
import Language.Thesaurus.RogetLite.Inaction
import Language.Thesaurus.RogetLite.Inactivity
import Language.Thesaurus.RogetLite.Inattention
import Language.Thesaurus.RogetLite.Inclosure
import Language.Thesaurus.RogetLite.Inclusion
import Language.Thesaurus.RogetLite.Incogitancy
import Language.Thesaurus.RogetLite.Incoherence
import Language.Thesaurus.RogetLite.Incompleteness
import Language.Thesaurus.RogetLite.Increase
import Language.Thesaurus.RogetLite.Incredulity
import Language.Thesaurus.RogetLite.Incuriosity
import Language.Thesaurus.RogetLite.Indifference
import Language.Thesaurus.RogetLite.Indiscrimination
import Language.Thesaurus.RogetLite.Inelasticity
import Language.Thesaurus.RogetLite.Inelegance
import Language.Thesaurus.RogetLite.Inequality
import Language.Thesaurus.RogetLite.Inexcitability
import Language.Thesaurus.RogetLite.Inexistence
import Language.Thesaurus.RogetLite.Inexpectation
import Language.Thesaurus.RogetLite.Inexpedience
import Language.Thesaurus.RogetLite.Inextension
import Language.Thesaurus.RogetLite.Infant
import Language.Thesaurus.RogetLite.Inferiority
import Language.Thesaurus.RogetLite.Infinity
import Language.Thesaurus.RogetLite.Influence
import Language.Thesaurus.RogetLite.Information
import Language.Thesaurus.RogetLite.Infrequency
import Language.Thesaurus.RogetLite.Ingratitude
import Language.Thesaurus.RogetLite.Ingress
import Language.Thesaurus.RogetLite.Inhabitant
import Language.Thesaurus.RogetLite.Innocence
import Language.Thesaurus.RogetLite.Inodorousness
import Language.Thesaurus.RogetLite.Inorganization
import Language.Thesaurus.RogetLite.Inquiry
import Language.Thesaurus.RogetLite.Insalubrity
import Language.Thesaurus.RogetLite.Insanity
import Language.Thesaurus.RogetLite.Insensibility
import Language.Thesaurus.RogetLite.Insertion
import Language.Thesaurus.RogetLite.Insipidity
import Language.Thesaurus.RogetLite.Insolence
import Language.Thesaurus.RogetLite.Instantaneity
import Language.Thesaurus.RogetLite.Institutions
import Language.Thesaurus.RogetLite.Instrument
import Language.Thesaurus.RogetLite.Instrumentality
import Language.Thesaurus.RogetLite.Insufficiency
import Language.Thesaurus.RogetLite.Intellect
import Language.Thesaurus.RogetLite.Intelligence
import Language.Thesaurus.RogetLite.Intelligibility
import Language.Thesaurus.RogetLite.Intemperance
import Language.Thesaurus.RogetLite.Intention
import Language.Thesaurus.RogetLite.Interchange
import Language.Thesaurus.RogetLite.Interiority
import Language.Thesaurus.RogetLite.Interjacence
import Language.Thesaurus.RogetLite.Interlocution
import Language.Thesaurus.RogetLite.Interment
import Language.Thesaurus.RogetLite.Interpretation
import Language.Thesaurus.RogetLite.Interpreter
import Language.Thesaurus.RogetLite.Interval
import Language.Thesaurus.RogetLite.Intrinsicality
import Language.Thesaurus.RogetLite.Intuition
import Language.Thesaurus.RogetLite.Inutility
import Language.Thesaurus.RogetLite.Inversion
import Language.Thesaurus.RogetLite.Investment
import Language.Thesaurus.RogetLite.Invisibility
import Language.Thesaurus.RogetLite.Irascibility
import Language.Thesaurus.RogetLite.Irregularity
import Language.Thesaurus.RogetLite.Irrelation
import Language.Thesaurus.RogetLite.Irreligion
import Language.Thesaurus.RogetLite.Irresoluton
import Language.Thesaurus.RogetLite.Island
import Language.Thesaurus.RogetLite.Jealousy
import Language.Thesaurus.RogetLite.Journey
import Language.Thesaurus.RogetLite.Judge
import Language.Thesaurus.RogetLite.Judgement
import Language.Thesaurus.RogetLite.Junction
import Language.Thesaurus.RogetLite.Jurisdiction
import Language.Thesaurus.RogetLite.Keeper
import Language.Thesaurus.RogetLite.Killing
import Language.Thesaurus.RogetLite.Knave
import Language.Thesaurus.RogetLite.Knowledge
import Language.Thesaurus.RogetLite.Laity
import Language.Thesaurus.RogetLite.Lamentation
import Language.Thesaurus.RogetLite.Land
import Language.Thesaurus.RogetLite.Language
import Language.Thesaurus.RogetLite.Latency
import Language.Thesaurus.RogetLite.Lateness
import Language.Thesaurus.RogetLite.Laterality
import Language.Thesaurus.RogetLite.Laughingstock
import Language.Thesaurus.RogetLite.Lawsuit
import Language.Thesaurus.RogetLite.Lawyer
import Language.Thesaurus.RogetLite.Laxity
import Language.Thesaurus.RogetLite.Layer
import Language.Thesaurus.RogetLite.Leap
import Language.Thesaurus.RogetLite.Learner
import Language.Thesaurus.RogetLite.Learning
import Language.Thesaurus.RogetLite.Legality
import Language.Thesaurus.RogetLite.Leisure
import Language.Thesaurus.RogetLite.Lending
import Language.Thesaurus.RogetLite.Length
import Language.Thesaurus.RogetLite.Lenity
import Language.Thesaurus.RogetLite.Letter
import Language.Thesaurus.RogetLite.Levity
import Language.Thesaurus.RogetLite.Liability
import Language.Thesaurus.RogetLite.Liberality
import Language.Thesaurus.RogetLite.Liberation
import Language.Thesaurus.RogetLite.Libertine
import Language.Thesaurus.RogetLite.Life
import Language.Thesaurus.RogetLite.Light
import Language.Thesaurus.RogetLite.Limit
import Language.Thesaurus.RogetLite.Lining
import Language.Thesaurus.RogetLite.Liquefaction
import Language.Thesaurus.RogetLite.List
import Language.Thesaurus.RogetLite.Littleness
import Language.Thesaurus.RogetLite.Location
import Language.Thesaurus.RogetLite.Loquacity
import Language.Thesaurus.RogetLite.Loss
import Language.Thesaurus.RogetLite.Loudness
import Language.Thesaurus.RogetLite.Love
import Language.Thesaurus.RogetLite.Lowness
import Language.Thesaurus.RogetLite.Lubrication
import Language.Thesaurus.RogetLite.Luminary
import Language.Thesaurus.RogetLite.Madman
import Language.Thesaurus.RogetLite.Malediction
import Language.Thesaurus.RogetLite.Malevolence
import Language.Thesaurus.RogetLite.Man
import Language.Thesaurus.RogetLite.Manifestation
import Language.Thesaurus.RogetLite.Mankind
import Language.Thesaurus.RogetLite.Mariner
import Language.Thesaurus.RogetLite.Marriage
import Language.Thesaurus.RogetLite.Marsh
import Language.Thesaurus.RogetLite.Mart
import Language.Thesaurus.RogetLite.Master
import Language.Thesaurus.RogetLite.Materiality
import Language.Thesaurus.RogetLite.Materials
import Language.Thesaurus.RogetLite.Maxim
import Language.Thesaurus.RogetLite.Mean
import Language.Thesaurus.RogetLite.Meaning
import Language.Thesaurus.RogetLite.Means
import Language.Thesaurus.RogetLite.Measurement
import Language.Thesaurus.RogetLite.Mediation
import Language.Thesaurus.RogetLite.Mediocrity
import Language.Thesaurus.RogetLite.Melody
import Language.Thesaurus.RogetLite.Memory
import Language.Thesaurus.RogetLite.Merchandise
import Language.Thesaurus.RogetLite.Merchant
import Language.Thesaurus.RogetLite.Messenger
import Language.Thesaurus.RogetLite.Metaphor
import Language.Thesaurus.RogetLite.Method
import Language.Thesaurus.RogetLite.Midcourse
import Language.Thesaurus.RogetLite.Middle
import Language.Thesaurus.RogetLite.Misanthropy
import Language.Thesaurus.RogetLite.Misinterpretation
import Language.Thesaurus.RogetLite.Misjudgment
import Language.Thesaurus.RogetLite.Misnomer
import Language.Thesaurus.RogetLite.Misrepresentation
import Language.Thesaurus.RogetLite.Misteaching
import Language.Thesaurus.RogetLite.Misuse
import Language.Thesaurus.RogetLite.Mixture
import Language.Thesaurus.RogetLite.Moderation
import Language.Thesaurus.RogetLite.Modesty
import Language.Thesaurus.RogetLite.Moisture
import Language.Thesaurus.RogetLite.Money
import Language.Thesaurus.RogetLite.Morning
import Language.Thesaurus.RogetLite.Motion
import Language.Thesaurus.RogetLite.Motive
import Language.Thesaurus.RogetLite.Multiformity
import Language.Thesaurus.RogetLite.Multitude
import Language.Thesaurus.RogetLite.Music
import Language.Thesaurus.RogetLite.MusicalInstruments
import Language.Thesaurus.RogetLite.Musician
import Language.Thesaurus.RogetLite.Mythological
import Language.Thesaurus.RogetLite.Narrowness
import Language.Thesaurus.RogetLite.Navigation
import Language.Thesaurus.RogetLite.Nearness
import Language.Thesaurus.RogetLite.Necessity
import Language.Thesaurus.RogetLite.Negation
import Language.Thesaurus.RogetLite.Neglect
import Language.Thesaurus.RogetLite.Neologism
import Language.Thesaurus.RogetLite.Neverness
import Language.Thesaurus.RogetLite.Newness
import Language.Thesaurus.RogetLite.News
import Language.Thesaurus.RogetLite.Nobility
import Language.Thesaurus.RogetLite.Nomenclature
import Language.Thesaurus.RogetLite.Nonaddition
import Language.Thesaurus.RogetLite.Nonassemblage
import Language.Thesaurus.RogetLite.Noncompletion
import Language.Thesaurus.RogetLite.Nonimitation
import Language.Thesaurus.RogetLite.Nonincrease
import Language.Thesaurus.RogetLite.Nonobservance
import Language.Thesaurus.RogetLite.Nonpayment
import Language.Thesaurus.RogetLite.Nonpreparation
import Language.Thesaurus.RogetLite.Nonresonance
import Language.Thesaurus.RogetLite.Nonuniformity
import Language.Thesaurus.RogetLite.Normality
import Language.Thesaurus.RogetLite.Notch
import Language.Thesaurus.RogetLite.Number
import Language.Thesaurus.RogetLite.Numbness
import Language.Thesaurus.RogetLite.Numeration
import Language.Thesaurus.RogetLite.Obedience
import Language.Thesaurus.RogetLite.Obliquity
import Language.Thesaurus.RogetLite.Obliteration
import Language.Thesaurus.RogetLite.Oblivion
import Language.Thesaurus.RogetLite.Obscurity
import Language.Thesaurus.RogetLite.Observance
import Language.Thesaurus.RogetLite.Obstinacy
import Language.Thesaurus.RogetLite.Occasion
import Language.Thesaurus.RogetLite.Ocean
import Language.Thesaurus.RogetLite.Odor
import Language.Thesaurus.RogetLite.Offer
import Language.Thesaurus.RogetLite.Oil
import Language.Thesaurus.RogetLite.Oldness
import Language.Thesaurus.RogetLite.Omen
import Language.Thesaurus.RogetLite.Opacity
import Language.Thesaurus.RogetLite.Opening
import Language.Thesaurus.RogetLite.Opponent
import Language.Thesaurus.RogetLite.Opposition
import Language.Thesaurus.RogetLite.OpticalInstrument
import Language.Thesaurus.RogetLite.Oracle
import Language.Thesaurus.RogetLite.Orange
import Language.Thesaurus.RogetLite.Order
import Language.Thesaurus.RogetLite.Organization
import Language.Thesaurus.RogetLite.Orgnaments
import Language.Thesaurus.RogetLite.Ornament
import Language.Thesaurus.RogetLite.Orthodoxy
import Language.Thesaurus.RogetLite.Oscillation
import Language.Thesaurus.RogetLite.Ostentation
import Language.Thesaurus.RogetLite.Outline
import Language.Thesaurus.RogetLite.Overestimation
import Language.Thesaurus.RogetLite.PhysicalPleasure
import Language.Thesaurus.RogetLite.PhysicalSensibility
import Language.Thesaurus.RogetLite.Pacification
import Language.Thesaurus.RogetLite.Pain
import Language.Thesaurus.RogetLite.Painting
import Language.Thesaurus.RogetLite.Parallelism
import Language.Thesaurus.RogetLite.Parsimony
import Language.Thesaurus.RogetLite.Part
import Language.Thesaurus.RogetLite.Participation
import Language.Thesaurus.RogetLite.Partnity
import Language.Thesaurus.RogetLite.Party
import Language.Thesaurus.RogetLite.Passage
import Language.Thesaurus.RogetLite.PassiveAffections
import Language.Thesaurus.RogetLite.Payment
import Language.Thesaurus.RogetLite.Peace
import Language.Thesaurus.RogetLite.Penalty
import Language.Thesaurus.RogetLite.Pendency
import Language.Thesaurus.RogetLite.Penitence
import Language.Thesaurus.RogetLite.Perfection
import Language.Thesaurus.RogetLite.Perforator
import Language.Thesaurus.RogetLite.Period
import Language.Thesaurus.RogetLite.Periodicity
import Language.Thesaurus.RogetLite.Permanence
import Language.Thesaurus.RogetLite.Permission
import Language.Thesaurus.RogetLite.Perpetuity
import Language.Thesaurus.RogetLite.Perseverance
import Language.Thesaurus.RogetLite.Perspicuity
import Language.Thesaurus.RogetLite.Petitioner
import Language.Thesaurus.RogetLite.Philanthropy
import Language.Thesaurus.RogetLite.Phrase
import Language.Thesaurus.RogetLite.PhysicalEnergy
import Language.Thesaurus.RogetLite.PhysicalInertness
import Language.Thesaurus.RogetLite.PhysicalInsensibility
import Language.Thesaurus.RogetLite.PhysicalPain
import Language.Thesaurus.RogetLite.Piety
import Language.Thesaurus.RogetLite.Pitfall
import Language.Thesaurus.RogetLite.Pitilessness
import Language.Thesaurus.RogetLite.Pity
import Language.Thesaurus.RogetLite.Place
import Language.Thesaurus.RogetLite.Plain
import Language.Thesaurus.RogetLite.Plainness
import Language.Thesaurus.RogetLite.Plan
import Language.Thesaurus.RogetLite.Pleasure
import Language.Thesaurus.RogetLite.Pleasureableness
import Language.Thesaurus.RogetLite.Plunge
import Language.Thesaurus.RogetLite.Plurality
import Language.Thesaurus.RogetLite.Poetry
import Language.Thesaurus.RogetLite.Possession
import Language.Thesaurus.RogetLite.Possessor
import Language.Thesaurus.RogetLite.Possibility
import Language.Thesaurus.RogetLite.Posteriority
import Language.Thesaurus.RogetLite.Posterity
import Language.Thesaurus.RogetLite.Poverty
import Language.Thesaurus.RogetLite.Power
import Language.Thesaurus.RogetLite.Precedence
import Language.Thesaurus.RogetLite.Precept
import Language.Thesaurus.RogetLite.Precession
import Language.Thesaurus.RogetLite.Precursor
import Language.Thesaurus.RogetLite.Predetermination
import Language.Thesaurus.RogetLite.Prediction
import Language.Thesaurus.RogetLite.Preparation
import Language.Thesaurus.RogetLite.Presence
import Language.Thesaurus.RogetLite.Preservation
import Language.Thesaurus.RogetLite.Preterition
import Language.Thesaurus.RogetLite.Pretext
import Language.Thesaurus.RogetLite.Price
import Language.Thesaurus.RogetLite.Pride
import Language.Thesaurus.RogetLite.Printing
import Language.Thesaurus.RogetLite.Priority
import Language.Thesaurus.RogetLite.Prison
import Language.Thesaurus.RogetLite.Prisoner
import Language.Thesaurus.RogetLite.Probability
import Language.Thesaurus.RogetLite.Probity
import Language.Thesaurus.RogetLite.Prodigality
import Language.Thesaurus.RogetLite.Prodigy
import Language.Thesaurus.RogetLite.Producer
import Language.Thesaurus.RogetLite.Production
import Language.Thesaurus.RogetLite.Productiveness
import Language.Thesaurus.RogetLite.Proficient
import Language.Thesaurus.RogetLite.Progression
import Language.Thesaurus.RogetLite.Prohibition
import Language.Thesaurus.RogetLite.Promise
import Language.Thesaurus.RogetLite.Property
import Language.Thesaurus.RogetLite.Propulsion
import Language.Thesaurus.RogetLite.Prose
import Language.Thesaurus.RogetLite.Prosperity
import Language.Thesaurus.RogetLite.Prototype
import Language.Thesaurus.RogetLite.Provision
import Language.Thesaurus.RogetLite.Pseudorevelation
import Language.Thesaurus.RogetLite.Publication
import Language.Thesaurus.RogetLite.Pulverulence
import Language.Thesaurus.RogetLite.Punctuality
import Language.Thesaurus.RogetLite.Pungency
import Language.Thesaurus.RogetLite.Punishment
import Language.Thesaurus.RogetLite.Purchase
import Language.Thesaurus.RogetLite.Purity
import Language.Thesaurus.RogetLite.Purple
import Language.Thesaurus.RogetLite.Pursuit
import Language.Thesaurus.RogetLite.Quadrisection
import Language.Thesaurus.RogetLite.Quadruplication
import Language.Thesaurus.RogetLite.Qualifications
import Language.Thesaurus.RogetLite.Quantity
import Language.Thesaurus.RogetLite.Quaternity
import Language.Thesaurus.RogetLite.Quiescence
import Language.Thesaurus.RogetLite.Quinquesection
import Language.Thesaurus.RogetLite.Rarity
import Language.Thesaurus.RogetLite.Rashiness
import Language.Thesaurus.RogetLite.Rear
import Language.Thesaurus.RogetLite.Reasoning
import Language.Thesaurus.RogetLite.Receipt
import Language.Thesaurus.RogetLite.Receiving
import Language.Thesaurus.RogetLite.Receptacle
import Language.Thesaurus.RogetLite.Reception
import Language.Thesaurus.RogetLite.Recession
import Language.Thesaurus.RogetLite.Recoil
import Language.Thesaurus.RogetLite.Record
import Language.Thesaurus.RogetLite.Recorder
import Language.Thesaurus.RogetLite.Rediculousness
import Language.Thesaurus.RogetLite.Redness
import Language.Thesaurus.RogetLite.Redundance
import Language.Thesaurus.RogetLite.Refreshment
import Language.Thesaurus.RogetLite.Refridgeration
import Language.Thesaurus.RogetLite.Refrigeratory
import Language.Thesaurus.RogetLite.Refuge
import Language.Thesaurus.RogetLite.Refusal
import Language.Thesaurus.RogetLite.Region
import Language.Thesaurus.RogetLite.Regression
import Language.Thesaurus.RogetLite.Regret
import Language.Thesaurus.RogetLite.Rejection
import Language.Thesaurus.RogetLite.Rejoicing
import Language.Thesaurus.RogetLite.Relapse
import Language.Thesaurus.RogetLite.Relation
import Language.Thesaurus.RogetLite.Release
import Language.Thesaurus.RogetLite.Relief
import Language.Thesaurus.RogetLite.Relinquish
import Language.Thesaurus.RogetLite.Relinquishment
import Language.Thesaurus.RogetLite.Remainder
import Language.Thesaurus.RogetLite.Remedy
import Language.Thesaurus.RogetLite.RepeatedNumber
import Language.Thesaurus.RogetLite.Repose
import Language.Thesaurus.RogetLite.Representation
import Language.Thesaurus.RogetLite.Reproduction
import Language.Thesaurus.RogetLite.Repulsion
import Language.Thesaurus.RogetLite.Repute
import Language.Thesaurus.RogetLite.Request
import Language.Thesaurus.RogetLite.Requirement
import Language.Thesaurus.RogetLite.Resentment
import Language.Thesaurus.RogetLite.Resignation
import Language.Thesaurus.RogetLite.Resin
import Language.Thesaurus.RogetLite.Resistance
import Language.Thesaurus.RogetLite.Resolution
import Language.Thesaurus.RogetLite.Resonance
import Language.Thesaurus.RogetLite.Respect
import Language.Thesaurus.RogetLite.Restitution
import Language.Thesaurus.RogetLite.Restoration
import Language.Thesaurus.RogetLite.Restraint
import Language.Thesaurus.RogetLite.Retaliation
import Language.Thesaurus.RogetLite.Retention
import Language.Thesaurus.RogetLite.Revelation
import Language.Thesaurus.RogetLite.Revenge
import Language.Thesaurus.RogetLite.Reversion
import Language.Thesaurus.RogetLite.Revolution
import Language.Thesaurus.RogetLite.Reward
import Language.Thesaurus.RogetLite.Ridicule
import Language.Thesaurus.RogetLite.Right
import Language.Thesaurus.RogetLite.Rite
import Language.Thesaurus.RogetLite.River
import Language.Thesaurus.RogetLite.Roll
import Language.Thesaurus.RogetLite.Rotation
import Language.Thesaurus.RogetLite.Rotundity
import Language.Thesaurus.RogetLite.Roughness
import Language.Thesaurus.RogetLite.Safety
import Language.Thesaurus.RogetLite.Sage
import Language.Thesaurus.RogetLite.Sale
import Language.Thesaurus.RogetLite.Salubrity
import Language.Thesaurus.RogetLite.Sanity
import Language.Thesaurus.RogetLite.Satan
import Language.Thesaurus.RogetLite.Satiety
import Language.Thesaurus.RogetLite.Savoriness
import Language.Thesaurus.RogetLite.Scepter
import Language.Thesaurus.RogetLite.Scholar
import Language.Thesaurus.RogetLite.School
import Language.Thesaurus.RogetLite.Scourage
import Language.Thesaurus.RogetLite.Sculpture
import Language.Thesaurus.RogetLite.Seclusion
import Language.Thesaurus.RogetLite.Secret
import Language.Thesaurus.RogetLite.Security
import Language.Thesaurus.RogetLite.Selfishness
import Language.Thesaurus.RogetLite.Semiliquidity
import Language.Thesaurus.RogetLite.Semitransparency
import Language.Thesaurus.RogetLite.SensationsTouch
import Language.Thesaurus.RogetLite.Sensibility
import Language.Thesaurus.RogetLite.Sensualist
import Language.Thesaurus.RogetLite.Sequel
import Language.Thesaurus.RogetLite.Sequence
import Language.Thesaurus.RogetLite.Sequential
import Language.Thesaurus.RogetLite.Servant
import Language.Thesaurus.RogetLite.Servility
import Language.Thesaurus.RogetLite.Severity
import Language.Thesaurus.RogetLite.Shade
import Language.Thesaurus.RogetLite.Shallowness
import Language.Thesaurus.RogetLite.Sharpness
import Language.Thesaurus.RogetLite.Ship
import Language.Thesaurus.RogetLite.Shortcoming
import Language.Thesaurus.RogetLite.Shortness
import Language.Thesaurus.RogetLite.Sibilation
import Language.Thesaurus.RogetLite.Silence
import Language.Thesaurus.RogetLite.Similarity
import Language.Thesaurus.RogetLite.Simpleness
import Language.Thesaurus.RogetLite.Simplicity
import Language.Thesaurus.RogetLite.Sinitrality
import Language.Thesaurus.RogetLite.Situation
import Language.Thesaurus.RogetLite.Size
import Language.Thesaurus.RogetLite.Skill
import Language.Thesaurus.RogetLite.Slowness
import Language.Thesaurus.RogetLite.Smallness
import Language.Thesaurus.RogetLite.Smoothness
import Language.Thesaurus.RogetLite.Snap
import Language.Thesaurus.RogetLite.Sobriety
import Language.Thesaurus.RogetLite.Sociality
import Language.Thesaurus.RogetLite.Softness
import Language.Thesaurus.RogetLite.Solecism
import Language.Thesaurus.RogetLite.Soliloquy
import Language.Thesaurus.RogetLite.Sorcerer
import Language.Thesaurus.RogetLite.Sorcery
import Language.Thesaurus.RogetLite.Sound
import Language.Thesaurus.RogetLite.Sourness
import Language.Thesaurus.RogetLite.Space
import Language.Thesaurus.RogetLite.Speciality
import Language.Thesaurus.RogetLite.Spectator
import Language.Thesaurus.RogetLite.Speech
import Language.Thesaurus.RogetLite.Spell
import Language.Thesaurus.RogetLite.Stability
import Language.Thesaurus.RogetLite.Stammering
import Language.Thesaurus.RogetLite.State
import Language.Thesaurus.RogetLite.Stealing
import Language.Thesaurus.RogetLite.Stopper
import Language.Thesaurus.RogetLite.Store
import Language.Thesaurus.RogetLite.Straightness
import Language.Thesaurus.RogetLite.Stream
import Language.Thesaurus.RogetLite.Strength
import Language.Thesaurus.RogetLite.Stridor
import Language.Thesaurus.RogetLite.Style
import Language.Thesaurus.RogetLite.Subjection
import Language.Thesaurus.RogetLite.Submission
import Language.Thesaurus.RogetLite.Substantiality
import Language.Thesaurus.RogetLite.Substitution
import Language.Thesaurus.RogetLite.Subtitute
import Language.Thesaurus.RogetLite.Success
import Language.Thesaurus.RogetLite.Sufficiency
import Language.Thesaurus.RogetLite.Sullenness
import Language.Thesaurus.RogetLite.Summit
import Language.Thesaurus.RogetLite.Superiority
import Language.Thesaurus.RogetLite.Support
import Language.Thesaurus.RogetLite.Supposition
import Language.Thesaurus.RogetLite.Sweetness
import Language.Thesaurus.RogetLite.Symmety
import Language.Thesaurus.RogetLite.Synchronism
import Language.Thesaurus.RogetLite.Taciturnity
import Language.Thesaurus.RogetLite.Taking
import Language.Thesaurus.RogetLite.Taste
import Language.Thesaurus.RogetLite.Tasteness
import Language.Thesaurus.RogetLite.Teacher
import Language.Thesaurus.RogetLite.Teaching
import Language.Thesaurus.RogetLite.Temperance
import Language.Thesaurus.RogetLite.Temple
import Language.Thesaurus.RogetLite.Tenacity
import Language.Thesaurus.RogetLite.Tendency
import Language.Thesaurus.RogetLite.Tergiversation
import Language.Thesaurus.RogetLite.Term
import Language.Thesaurus.RogetLite.Texture
import Language.Thesaurus.RogetLite.TheDrama
import Language.Thesaurus.RogetLite.ThePresentTime
import Language.Thesaurus.RogetLite.Theology
import Language.Thesaurus.RogetLite.Theremometer
import Language.Thesaurus.RogetLite.Thief
import Language.Thesaurus.RogetLite.Thought
import Language.Thesaurus.RogetLite.Threat
import Language.Thesaurus.RogetLite.Time
import Language.Thesaurus.RogetLite.Title
import Language.Thesaurus.RogetLite.Topic
import Language.Thesaurus.RogetLite.Touch
import Language.Thesaurus.RogetLite.Traction
import Language.Thesaurus.RogetLite.Transcursion
import Language.Thesaurus.RogetLite.Transfer
import Language.Thesaurus.RogetLite.Transference
import Language.Thesaurus.RogetLite.Transientness
import Language.Thesaurus.RogetLite.Transparency
import Language.Thesaurus.RogetLite.Traveler
import Language.Thesaurus.RogetLite.Treasurer
import Language.Thesaurus.RogetLite.Treasury
import Language.Thesaurus.RogetLite.Triality
import Language.Thesaurus.RogetLite.Tribunal
import Language.Thesaurus.RogetLite.Triplication
import Language.Thesaurus.RogetLite.Trisection
import Language.Thesaurus.RogetLite.Trophy
import Language.Thesaurus.RogetLite.Truth
import Language.Thesaurus.RogetLite.Ugliness
import Language.Thesaurus.RogetLite.Ululation
import Language.Thesaurus.RogetLite.Unbelief
import Language.Thesaurus.RogetLite.Uncertainty
import Language.Thesaurus.RogetLite.Uncleanness
import Language.Thesaurus.RogetLite.Uncomformity
import Language.Thesaurus.RogetLite.Unctuousness
import Language.Thesaurus.RogetLite.Underestimation
import Language.Thesaurus.RogetLite.Undertaking
import Language.Thesaurus.RogetLite.Undueness
import Language.Thesaurus.RogetLite.Uniformity
import Language.Thesaurus.RogetLite.Unimportance
import Language.Thesaurus.RogetLite.Unintelligibility
import Language.Thesaurus.RogetLite.Unity
import Language.Thesaurus.RogetLite.Unmeaningness
import Language.Thesaurus.RogetLite.Unproductiveness
import Language.Thesaurus.RogetLite.Unsavoriness
import Language.Thesaurus.RogetLite.Unskillfulness
import Language.Thesaurus.RogetLite.Unsubstantiality
import Language.Thesaurus.RogetLite.Untimliness
import Language.Thesaurus.RogetLite.Untruth
import Language.Thesaurus.RogetLite.Unwillingness
import Language.Thesaurus.RogetLite.Use
import Language.Thesaurus.RogetLite.Utility
import Language.Thesaurus.RogetLite.Vanity
import Language.Thesaurus.RogetLite.Vaporization
import Language.Thesaurus.RogetLite.Variation
import Language.Thesaurus.RogetLite.Variegation
import Language.Thesaurus.RogetLite.Vegetability
import Language.Thesaurus.RogetLite.Vegetable
import Language.Thesaurus.RogetLite.Vehicle
import Language.Thesaurus.RogetLite.Velocity
import Language.Thesaurus.RogetLite.Veracity
import Language.Thesaurus.RogetLite.Verticality
import Language.Thesaurus.RogetLite.Veteran
import Language.Thesaurus.RogetLite.Vice
import Language.Thesaurus.RogetLite.Vigor
import Language.Thesaurus.RogetLite.Vinculum
import Language.Thesaurus.RogetLite.Vindication
import Language.Thesaurus.RogetLite.Violence
import Language.Thesaurus.RogetLite.Virtue
import Language.Thesaurus.RogetLite.Visibility
import Language.Thesaurus.RogetLite.Vision
import Language.Thesaurus.RogetLite.Voice
import Language.Thesaurus.RogetLite.Vulgarity
import Language.Thesaurus.RogetLite.Warfare
import Language.Thesaurus.RogetLite.Warning
import Language.Thesaurus.RogetLite.Waste
import Language.Thesaurus.RogetLite.Water
import Language.Thesaurus.RogetLite.Weakness
import Language.Thesaurus.RogetLite.Wealth
import Language.Thesaurus.RogetLite.Weariness
import Language.Thesaurus.RogetLite.Whiteness
import Language.Thesaurus.RogetLite.Whole
import Language.Thesaurus.RogetLite.Will
import Language.Thesaurus.RogetLite.Willingness
import Language.Thesaurus.RogetLite.Wind
import Language.Thesaurus.RogetLite.Wit
import Language.Thesaurus.RogetLite.Woman
import Language.Thesaurus.RogetLite.Wonder
import Language.Thesaurus.RogetLite.Word
import Language.Thesaurus.RogetLite.Workshop
import Language.Thesaurus.RogetLite.World
import Language.Thesaurus.RogetLite.Worship
import Language.Thesaurus.RogetLite.Writing
import Language.Thesaurus.RogetLite.Wrong
import Language.Thesaurus.RogetLite.Yellow
import Language.Thesaurus.RogetLite.Youth
import Language.Thesaurus.RogetLite.Zero
import Language.Thesaurus.RogetLite.Zoology


rogetLite :: ThProg
rogetLite = do
  abode
  abrogation
  absence
  absenceOfInfluence
  absenceOfMotive
  absurdity
  accompaniment
  accounts
  accusation
  achromatism
  acquisition
  acquittal
  action
  activity
  addition
  adjunct
  adolescence
  adversity
  advice
  affection
  affirmation
  age
  agency
  agent
  aggrivation
  agitation
  agreement
  agriculture
  aid
  air
  airpipe
  alarm
  allocution
  ambush
  amorphism
  amusement
  anachronism
  angel
  angularity
  animal
  animality
  answer
  aphony
  appearance
  apportionment
  approach
  approbation
  arena
  arms
  arrangement
  arrival
  artist
  artlessness
  ascent
  atonement
  attack
  attention
  attraction
  attribution
  authority
  auxillary
  avoidance
  badman
  baddness
  bane
  barter
  base
  beauty
  beginning
  belief
  benefactor
  benevolence
  bisection
  blackness
  blemish
  blindness
  blueness
  bluntness
  bluster
  boasting
  book
  booty
  borrowing
  botany
  breadth
  brittleness
  brown
  bubble
  bungler
  business
  bychance
  calefaction
  canonicals
  caprice
  care
  carrier
  cause
  caution
  celebration
  celibacy
  centrality
  certainty
  cessation
  chance
  change
  changeableness
  cheapness
  cheerfulness
  choice
  chronometry
  churchdom
  circuit
  circuition
  circularity
  circumjacence
  circumscription
  circumstance
  class'
  cleanness
  clergy
  closure
  coherence
  cold
  color
  combatant
  combination
  command
  commission
  commonalty
  compact
  comparison
  compendium
  compensation
  completeness
  completion
  complexity
  component
  composition
  compromise
  compulsion
  concavity
  concealment
  conciseness
  concord
  concurrence
  condemnation
  condiment
  conditions
  condolence
  conduct
  conduit
  conformity
  confutation
  congratulation
  consanguinity
  consent
  consignee
  contempt
  content
  contention
  contents
  contiguity
  contingentduration
  continuance
  continuity
  contraction
  contraposition
  contrariety
  convergence
  conversion
  convexity
  convolution
  cooperation
  copy
  corpse
  correlation
  correspondence
  council
  counterevidence
  counteraction
  courage
  course
  courtesy
  covering
  cowardice
  credit
  credulity
  crossing
  cry
  cunning
  curiosity
  curvature
  danger
  darkness
  deafness
  dearness
  death
  debt
  deceiver
  deception
  decomposition
  decrement
  defense
  defiance
  degree
  deity
  dejection
  deliverance
  demon
  demonstration
  density
  departure
  deprecation
  depression
  depth
  deputy
  derangement
  descent
  description
  desire
  destiny
  destroyer
  destruction
  desuetude
  deterioration
  detraction
  detractor
  deviation
  dextrality
  difference
  differenttime
  difficulty
  diffuseness
  dimness
  dimsightedness
  direction
  directionality
  director
  disagreement
  disappearance
  disappointment
  disapprobation
  disclosure
  discontent
  discontinutiy
  discord
  discordness
  discount
  discourtesy
  discovery
  discrimination
  disease
  disinterestedness
  disjunction
  dislike
  disobedience
  disorder
  displacement
  disrepute
  disrespect
  dissent
  dissertation
  dissimilarity
  dissuasion
  distance
  distortion
  disuse
  diuturnity
  divergence
  divestment
  divorce
  drunkenness
  dryness
  duality
  dueness
  dullness
  dupe
  duplication
  duty
  earliness
  economy
  edge
  effect
  egress
  ejection
  elasticity
  elegance
  elevation
  end
  endearment
  enemy
  engraving
  enmity
  envy
  equality
  equivocalness
  error'
  escape
  essay
  evening
  eventually
  evidence
  evil
  evildoer
  evolution
  exaggeration
  excitability
  excitation
  exclusion
  excretion
  exemption
  exemptionality
  exertion
  existence
  expansion
  expectance
  expectation
  expedience
  expenditure
  experiment
  exteriority
  extraction
  extraneous
  extrinsicality
  facility
  failure
  faintness
  falsehood
  fashion
  fastidiousness
  fasting
  fatigue
  favorite
  fear
  feebleness
  feeling
  fetor
  fewness
  filament
  five
  flatness
  flatterer
  flattery
  fluidity
  focus
  fold
  food
  fool
  fop
  foresight
  forgiveness
  form
  fraction
  fragrance
  freedom
  frequency
  friction
  friend
  friendship
  front
  fuel
  furnace
  furrow
  futurity
  gaseity
  generality
  giving
  gluttony
  good
  goodman
  goodness
  grammar
  gratitude
  gravity
  gray
  greatness
  greenness
  guilt
  gulf
  habit
  hardness
  haste
  hate
  health
  hearing
  heat
  heaven
  height
  hell
  heterodoxy
  hinderance
  hope
  hopelessness
  horizontally
  humility
  humorist
  husbandry
  idea
  identity
  idolatry
  ignoramus
  ignorance
  imagination
  imbecility
  imitation
  immateriality
  impenitence
  imperfection
  impiety
  importance
  impossibility
  impotence
  improbability
  improbity
  improvement
  impulse
  impurity
  inaction
  inactivity
  inattention
  inclosure
  inclusion
  incogitancy
  incoherence
  incompleteness
  increase
  incredulity
  incuriosity
  indifference
  indiscrimination
  inelasticity
  inelegance
  inequality
  inexcitability
  inexistence
  inexpectation
  inexpedience
  inextension
  infant
  inferiority
  infinity
  influence
  information
  infrequency
  ingratitude
  ingress
  inhabitant
  innocence
  inodorousness
  inorganization
  inquiry
  insalubrity
  insanity
  insensibility
  insertion
  insipidity
  insolence
  instantaneity
  institutions
  instrument
  instrumentality
  insufficiency
  intellect
  intelligence
  intelligibility
  intemperance
  intention
  interchange
  interiority
  interjacence
  interlocution
  interment
  interpretation
  interpreter
  interval
  intrinsicality
  intuition
  inutility
  inversion
  investment
  invisibility
  irascibility
  irregularity
  irrelation
  irreligion
  irresoluton
  island
  jealousy
  journey
  judge
  judgement
  junction
  jurisdiction
  keeper
  killing
  knave
  knowledge
  laity
  lamentation
  land
  language
  latency
  lateness
  laterality
  laughingstock
  lawsuit
  lawyer
  laxity
  layer
  leap
  learner
  learning
  legality
  leisure
  lending
  length
  lenity
  letter
  levity
  liability
  liberality
  liberation
  libertine
  life
  light
  limit
  lining
  liquefaction
  list
  littleness
  location
  loquacity
  loss
  loudness
  love
  lowness
  lubrication
  luminary
  madman
  malediction
  malevolence
  man
  manifestation
  mankind
  mariner
  marriage
  marsh
  mart
  master
  materiality
  materials
  maxim
  mean
  meaning
  means
  measurement
  mediation
  mediocrity
  melody
  memory
  merchandise
  merchant
  messenger
  metaphor
  method
  midcourse
  middle
  misanthropy
  misinterpretation
  misjudgment
  misnomer
  misrepresentation
  misteaching
  misuse
  mixture
  moderation
  modesty
  moisture
  money
  morning
  motion
  motive
  multiformity
  multitude
  music
  musicalinstruments
  musician
  mythological
  narrowness
  navigation
  nearness
  necessity
  negation
  neglect
  neologism
  neverness
  newness
  news
  nobility
  nomenclature
  nonaddition
  nonassemblage
  noncompletion
  nonimitation
  nonincrease
  nonobservance
  nonpayment
  nonpreparation
  nonresonance
  nonuniformity
  normality
  notch
  number
  numbness
  numeration
  obedience
  obliquity
  obliteration
  oblivion
  obscurity
  observance
  obstinacy
  occasion
  ocean
  odor
  offer
  oil
  oldness
  omen
  opacity
  opening
  opponent
  opposition
  opticalinstrument
  oracle
  orange
  order
  organization
  orgnaments
  ornament
  orthodoxy
  oscillation
  ostentation
  outline
  overestimation
  physicalpleasure
  physicalsensibility
  pacification
  pain
  painting
  parallelism
  parsimony
  part
  participation
  partnity
  party
  passage
  passiveaffections
  payment
  peace
  penalty
  pendency
  penitence
  perfection
  perforator
  period
  periodicity
  permanence
  permission
  perpetuity
  perseverance
  perspicuity
  petitioner
  philanthropy
  phrase
  physicalenergy
  physicalinertness
  physicalinsensibility
  physicalpain
  piety
  pitfall
  pitilessness
  pity
  place
  plain
  plainness
  plan
  pleasure
  pleasureableness
  plunge
  plurality
  poetry
  possession
  possessor
  possibility
  posteriority
  posterity
  poverty
  power
  precedence
  precept
  precession
  precursor
  predetermination
  prediction
  preparation
  presence
  preservation
  preterition
  pretext
  price
  pride
  printing
  priority
  prison
  prisoner
  probability
  probity
  prodigality
  prodigy
  producer
  production
  productiveness
  proficient
  progression
  prohibition
  promise
  property
  propulsion
  prose
  prosperity
  prototype
  provision
  pseudorevelation
  publication
  pulverulence
  punctuality
  pungency
  punishment
  purchase
  purity
  purple
  pursuit
  quadrisection
  quadruplication
  qualifications
  quantity
  quaternity
  quiescence
  quinquesection
  rarity
  rashiness
  rear
  reasoning
  receipt
  receiving
  receptacle
  reception
  recession
  recoil
  record
  recorder
  rediculousness
  redness
  redundance
  refreshment
  refridgeration
  refrigeratory
  refuge
  refusal
  region
  regression
  regret
  rejection
  rejoicing
  relapse
  relation
  release
  relief
  relinquish
  relinquishment
  remainder
  remedy
  repeatednumber
  repose
  representation
  reproduction
  repulsion
  repute
  request
  requirement
  resentment
  resignation
  resin
  resistance
  resolution
  resonance
  respect
  restitution
  restoration
  restraint
  retaliation
  retention
  revelation
  revenge
  reversion
  revolution
  reward
  ridicule
  right
  rite
  river
  roll
  rotation
  rotundity
  roughness
  safety
  sage
  sale
  salubrity
  sanity
  satan
  satiety
  savoriness
  scepter
  scholar
  school
  scourage
  sculpture
  seclusion
  secret
  security
  selfishness
  semiliquidity
  semitransparency
  sensationstouch
  sensibility
  sensualist
  sequel
  sequence
  sequential
  servant
  servility
  severity
  shade
  shallowness
  sharpness
  ship
  shortcoming
  shortness
  sibilation
  silence
  similarity
  simpleness
  simplicity
  sinitrality
  situation
  size
  skill
  slowness
  smallness
  smoothness
  snap
  sobriety
  sociality
  softness
  solecism
  soliloquy
  sorcerer
  sorcery
  sound
  sourness
  space
  speciality
  spectator
  speech
  spell
  stability
  stammering
  state
  stealing
  stopper
  store
  straightness
  stream
  strength
  stridor
  style
  subjection
  submission
  substantiality
  substitution
  subtitute
  success
  sufficiency
  sullenness
  summit
  superiority
  support
  supposition
  sweetness
  symmety
  synchronism
  taciturnity
  taking
  taste
  tasteness
  teacher
  teaching
  temperance
  temple
  tenacity
  tendency
  tergiversation
  term
  texture
  thedrama
  thepresenttime
  theology
  theremometer
  thief
  thought
  threat
  time
  title
  topic
  touch
  traction
  transcursion
  transfer
  transference
  transientness
  transparency
  traveler
  treasurer
  treasury
  triality
  tribunal
  triplication
  trisection
  trophy
  truth
  ugliness
  ululation
  unbelief
  uncertainty
  uncleanness
  uncomformity
  unctuousness
  underestimation
  undertaking
  undueness
  uniformity
  unimportance
  unintelligibility
  unity
  unmeaningness
  unproductiveness
  unsavoriness
  unskillfulness
  unsubstantiality
  untimliness
  untruth
  unwillingness
  use
  utility
  vanity
  vaporization
  variation
  variegation
  vegetability
  vegetable
  vehicle
  velocity
  veracity
  verticality
  veteran
  vice
  vigor
  vinculum
  vindication
  violence
  virtue
  visibility
  vision
  voice
  vulgarity
  warfare
  warning
  waste
  water
  weakness
  wealth
  weariness
  whiteness
  whole
  will
  willingness
  wind
  wit
  woman
  wonder
  word
  workshop
  world
  worship
  writing
  wrong
  yellow
  youth
  zero
  zoology
