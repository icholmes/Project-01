/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/


VAR person_name = ""
VAR lighter = 0
VAR liquor = 0
VAR hairspray = 0

-> introduction

== introduction
Indiana University
Thursday, October 31, 2024
Your roommate is at a frat party. You are at home because you are studying for a test the following day. And also because you hate frats. 
Not to mention that two girls have gone missing in the past three months--girls who were your age, girls who attended your school, girls who went missing on nights they went out to party. Girls whom police still haven't yet found. 

* [Continue] -> introduction2

== introduction2
Due to these incidents, going out past 9:00 P.M. is a no-go for you. Although you've tried to convince your roommate to take the same precaution, she never listens.
You are about to submit an assignment for your online self defense class when you feel your phone vibrate next to you.

* [Continue] -> text

== text
11:23 P.M.
Incoming text from "Lottie"

* [Check phone] -> text_1

== text_1
Lottie:
I’m so drunk can u pls pick me up . The vibes here are so bad and I dont want to be here anympre

* [Reply] -> reply

== reply
Me:
Where are you?

* [Continue] -> text_2

== text_2
Lottie: 
Lambda Chi Alpha

* [Continue] -> insert_text

== insert_text
Lottie:
(typing)

* [Continue] -> insert_text2

== insert_text2
Lottie:
The frat

* [Reply] -> reply_1

== reply_1
Me: 
Is that the one off 34th?

* [Continue] -> text_3

== text_3
Lottie:
Yes by bookstore

* [Reply] -> reply_2

== reply_2
Me:
Hold tight, I'll be there

* [Continue] -> text_4

== text_4
Lottie:
(typing)

* [Continue] -> text_5

== text_5
Lottie:
Say u know Matt at the door they'll let u in

* [Reply] -> reply_3

== reply_3
Me:
K

* [Continue] -> text_6

== text_6
Lottie:
(typing)

* [Continue] -> text_7

== text_7
Lottie:
I'm scared

* [Reply] -> reply_4

== reply_4
Me:
I'm on the way. Maybe lock yourself in a bathroom until I get there

* [Continue] -> text_8

== text_8
Lottie:
Ok thank u

* [Continue] -> text_9

== text_9
Lottie:
(typing)

* [Continue] -> text_10

== text_10
Lottie:
I love you

* [Continue] -> lottie_background

== lottie_background
It’s unfortunate you love her too, else you wouldn't be spending your Friday night rounding up a plastered girl from a smarmy frat. Again. 
Third time in two months. You think it should constitute some record.

* [Continue] -> lottie_background2

== lottie_background2
Charlotte Greer:
Sweet, funny, all-American college girl. Your best friend since high school and your college roommate.
Independent souls, you two were, back in high school. Never caring what anyone thought about you. But now, since college, all she wants to do is blend in. 
She's decided to rush a sorority, so she's been going out to parties with the girls she’s rushing with. She thinks it’ll make them like her more.

* [Continue] -> lottie_background3

== lottie_background3

A dumbfuck, is what she is, you think to yourself.
Frat hopping with people who don’t care if she lives or dies on a campus that’s been dealing with missing girls for the past several months.
Where is your mind, Charlotte?

* [Continue] -> lottie_background4

== lottie_background4
Even so, you still love her. Mindful or mindless.
You don't even care to submit your self defense assignment before you hop in your car and punch "Lambda Chi Alpha" in your GPS.

* [Drive to frat] -> lambda_chi

== lambda_chi
{not frat_entrance: 11:32 P.M.}
You arrive at Lambda Chi Alpha and park across the street. You hear a large kickbass thrumming from inside the house's walls.
The house is utterly colossal. Dark brick, almost no dimension or visual interest, and large windows, leaving little to the imagination of what lies inside.
The place is strung out with Halloween decorations. In the front yard lies a ginormous stone statue.

+ [Inspect statue] -> statue
+ [Walk up to the house] -> frat_entrance

== statue
It is a statue of a man with large wings and sparse clothing. Recently vandalized with toilet paper.
A plaque placed at the statue's feet reads: "Thanatos."

+ [Go back] -> lambda_chi

== frat_entrance
You approach the house with caution. The house is so grand, Lottie could be anywhere inside. You hope she took your advice and is safely locked inside a bathroom somewhere.

+ [Continue] -> frat_entrance2
+ [Go back] -> lambda_chi

== frat_entrance2
{not downstairs: A large hoard of people dressed in various garb are crowded around the house, one you physically have to swim through to find the entrance.}
{not downstairs: Once you do, }You find yourself in front of two sets of stairs at the front of the house. 
One of them leads downstairs to the basement, where the party is taking place. The other leads upstairs to a landing on the porch of the house.
{grab_lighter: You have {lighter} lighter.}

+ [Go downstairs] -> downstairs
+ {not distraction} [Go upstairs] -> upstairs
+ [Go back] -> frat_entrance

== downstairs
You walk downstairs and are immediately greeted by a bouncer wearing a mask from the movie "Scream" guarding the basement door.

+ ["I need to get into the basement"] -> nocando
+ [Go back] -> frat_entrance2

== nocando
"No can do."
* {distraction} ["Why? I know someone here."] -> why2
+ {not distraction} ["Why? I know someone here."] -> why
+ [Go back] -> downstairs

== why
"Doesn't matter. We're at capacity."
Dammit. Gonna have to find a way to get people out of the basement.

+ [Return upstairs] -> frat_entrance2

== why2
"Who?"

* [Max]
~ person_name = "Max"
-> fail

* [Matt]
~ person_name = "Matt"
-> pass

* [Mark]
~ person_name = "Mark"
-> fail2

== fail
"I don't know a {person_name}. Get the fuck out."

You got kicked out.
-> END

== fail2
"I don't know a {person_name}. Get the fuck out."

You got kicked out.
-> END

== pass
"Yeah, I know {person_name}." 
The bouncer steps aside and opens the door.

* [Enter the basement] -> basement

== upstairs
You walk upstairs to a jam-packed upper deck. To your right is a box of party supplies. To your left is the drink table.

+ [Go right] -> right
+ [Go left] -> left
+ [Go back] -> frat_entrance

== right
You are in front of box of everything a frat could ever wish for: cups, pingpong balls, pool floaties, glowsticks, costume wear, facepaint, and...fireworks?
Hm. Fireworks occupy peoples' attentions well. 
If only you had something to light them with.

* {grab_lighter} [Light fireworks] -> distraction
+ [Go back] -> upstairs

== left
You are in front of the drink table. There is a large vat filled with some unknown red liquid. Next to the vat is an unattented bong. {not grab_lighter: Next to the bong, a small lighter.}
{grab_lighter: You have {lighter} lighter.}
+ [Grab a drink] -> grab_drink
+ [Inspect bong] -> bong
* [Pick up lighter] -> grab_lighter
+ [Go back] -> upstairs

== grab_drink
You take a nearby solo cup, rake it through the liquid, and put it to your lips. 
Tastes like disappointment. You are validated in your hatred for frats.

+ [Go back] -> left

== bong
The bong is slightly warm to the touch. Recently used. 

+ [Go back] -> left

== grab_lighter
~ lighter = lighter + 1
You slip the lighter into your pocket. No one will miss it.

* [Go back] -> left

== distraction
You pick up a few fireworks, quickly lighting them and setting them on the railing of the porch. You walk away in the other direction nondiscriptly and wait for the fireworks to go off.
Within seconds, the shrill whistle of the fireworks pierces the air.
You anticipate the fireworks to blast upward, putting on a glimmering show that would beckon enough people from the basement. 

* [Continue] -> distraction2

== distraction2
Instead, the fireworks launch straight off the porch and into an oak tree stood outside Lambda Chi, starting a small fire.

* [Awesome] -> distraction3

== distraction3
The explosion caused by the fireworks hitting the tree draws the attention of several frat members and onlookers, who are running over to pour their *alcoholic* drinks on the small fire, making it bigger.
By this point, a good portion of people have come up out of the basement to watch the spectacle.
It's now or never.

* [Return downstairs] -> frat_entrance2

== basement
11:45 P.M.
You enter the basement and are met with a thickness in the air that coats your skin and hair.
The room is dark and the only light is the one emanating from the multicolored strobes placed in each corner of the room.
You are surprised to find that the basement is relatively small, given the size of the rest of the house. Half of the basement seems to be tarped off from ceiling to floor, making the space twice as intimate.

* [Continue] -> basement2

== basement2
To your right is a table with three guys sitting in front of a computer, holding rounds of wristbands. Directly in front of you is a dense crowd of party-goers.

+ [Talk to table] -> table
+ [Investigate crowd] -> crowd

== table
The boys look at you expectingly. Above the table is a banner that says "Hail Thanatos."

* ["Can I get a wristband?"] -> wristband
* ["What's with the banner?"] -> banner
* ["Have you seen my friend? Her name is Charlotte."] -> charlotte
+ [Go back] -> basement2

== banner
The three guys at the table glance at each other. The guy on the right looks up at the banner and then back to you.

"It's for Halloween. Supposed to scare people."

* {statue} ["Isn't Thanatos the guy in the statue out front?"] -> statue2
* ["Okay..."] -> table

== statue2
The guys look taken aback.
"Yeah... he's like our mascot," says the guy on the left.
"It's just a Halloween thing. It's not that deep," says the guy on the right.
The guy in the middle shrinks in his seat a little.

+ ["Okay..."] -> table

== wristband
"Here." 
The guy in the middle hands you a wristband.

* [Put it on] -> table

== charlotte
"Last name?"

* ["Greer."] -> greer

== greer
The guy in the middle's face whitens. The guy on the left, dressed in a Grecian toga, leans forward and narrows his eyes at you.

"We don't know a Charlotte Greer."

* ["Can't you look her up on your computer to see if she's here?"] -> computer
* ["Okay."] -> table

== computer
The guy in the middle looks like he's going to puke and is now being comforted by the guy on the right.
"I can't do that," Toga guy spits. "That's a confidentiality issue."

* ["Whatever."] -> table

== crowd
You need to a wristband to enter.
* {wristband} [Push through crowd] -> crowd2
+ [Go back] -> basement2

== crowd2
You squeeze and snake your way through the crowd of inebriated teens jumping to a chopped and remixed version of "Rude Boy" by Rihanna.
You start to think this would be more fun had you taken a couple more sips of that indistinguishable red liquid earlier.

* [Continue pushing though] -> kitchenette

== kitchenette
After what felt like milennia of weaving your way through hot, sweat-covered bodies, you end up in a clearing that looks like a kichenette-turned-minibar.
You are about to start searching around when you feel a moist hand on your shoulder.

* [Continue] -> rachel

== rachel
"What are youuuu doing here?" A familiar voice squaks 3 inches from your ear. 
You turn to find your and Lottie's mutual friend, Rachel. She's obviously a little drunk right now, but she's a good person.
Maybe she knows something about where Lottie is.

* ["Have you seen Lottie?"] -> lottie
* ["What do you know about Thanatos?"] -> thanatos

== lottie
She suddenly gets very close to your face only to yell into your ear:
"I saw her maybeeee... half an hour ago? Twenty minutes ago? I don't know, I haven't been checking the time."

* ["Gotcha."] -> rachel

== thanatos
"Thanos? The Avengers guy?"

Unreal. Maybe more than a little drunk.
* ["Thanatos, the statue outside?"] -> thanatos2

== thanatos2
"Ohhh, oh yeah," she nods her head exageratingly. "I have no clue other than that these guys worship him." 
She kind of pauses for a second and laughs to herself even though what she said didn't garner any laughter.
"I wouldn't be surprised if they like... had a cult dedicated to him."

* ["No kidding."] -> rachel1
* ["Yeah..."] -> rachel1

== rachel1
You're about to turn and head back into the crowd when Rachel speaks up again.
"Sorry I don't know where she is, but that cup--right there behind you--is hers. Mine's one of the red ones."
You turn and see on the minibar counter a shit ton of red solo cups filled with amgibuous-looking liquids. Amidst them all is one, singular blue one.

* ["What's in it?"] -> rachel2_
* ["Did you guys choose your cups yourselves?"] -> rachel2

== rachel2_
"Twisted Tea? I'm just guessing. Not sure why they put it in a different cup, though. Maybe they ran out of red."
You stare at the blue solo cup so hard, you're surprised there is no hole in it by the time you look away. 
* ["Where is the closest bathroom in here?"] -> rachel3

== rachel2
"No. We got to choose what was in it, but not the cup."
You stare at the blue solo cup so hard, you're surprised there is no hole in it by the time you look away. 
A pit begins to form in your stomach.

* ["Where is the closest bathroom in here?"] -> rachel3

== rachel3
She turns and points in the direction from whence you came.
"Up the stairs by the basement door."
"Thanks, Rachel," you say, quickly pushing past her towards the crowd.
"I hope you find her!" You hear Rachel yell from somewhere behind you.
"Me fucking too," you think to yourself.

* [Continue] -> tarp

== tarp
You begin making your way through the swarm of people once more, feeling more swallowed and claustrophobic than the first time you braved this crowd.
You are shuffling against the tarp towards the stairs when a swift arm flies at your chest out of nowhere, knocking you backward through a slit in the tarp wall.
You land on your back in an abysmal area.

* [Continue] -> tarp1

== tarp1
It takes you a moment to realize what happened to you and where you are.
You are now alone in other half of the Lambda Chi basement.
Your hands reach for anything around you and you begin to realize your eyes aren't going to adjust to the enveloping darkness surrounding you. 
If only you had...

* [Your lighter] -> tarp2

== tarp2
A small area in front of your face is iluminated by the light.
{liquor_pickup: You have {liquor} bottle of liquor.}
{hairspray_pickup: You have {hairspray} can of hairspray.}
* [Go left] -> left2
* [Go right] -> right2
* [Go forward] -> forward
* {left2} {right2} {forward} [Leave] -> basement3

== left2
You walk left and hold out your lighter in front of you until you are directly in front of something.
A corkboard with several pins in it. At closer inspection, you see the pins are attached to various black and white photos printed out on printer paper.
Pictures of girls.
Two of them are pictures you recognize as pictures you've seen hung up around town.

+ [Go back] -> tarp2

== right2

You walk right until you come upon a podium with an old-looking book perched upon it, already opened to certain page.
The page is entitled: "Thanatos: God of Peaceful Death."

* [Read on] -> read

== read
The scripture belows the title reads:
"...the blood of an innocent shall be spilt upon the 12th hour of the last day of every month. He who should succeed shall be granted to he and his bretheren eternal life and prosperity. He who fails to fulfil the word shall burn in eternal damnation..."

+ [Go back] -> tarp2

== forward
Your foot touches something on the floor as you move. You look down and hold your lighter to it.
On the floor beneath your feet is the edge of some marking drawn on the floor. You hold your lighter back to reveal that there is a large black pentagram painted across the floor.
Rachel, you son of a bitch, you were right.

* [Continue] -> forward2

== forward2
You realize now what your foot had touched. At your feet, a bottle of Jack Daniels and a can of hairspray.
You may only take one.

* [Take the liquor] -> liquor_pickup
* [Take the hairspray] -> hairspray_pickup

== liquor_pickup
~ liquor = liquor + 1
You now have a bottle of liquor.

* [Continue] -> tarp2

== hairspray_pickup
~ hairspray = hairspray + 1
You now have a can of hairspray.

* [Continue] -> tarp2

== basement3
11:50 P.M.
You feel as though you are going to hurl. From the statue to the cup to the tarped off cultist area, it all makes sense now.
In ten minutes, they're gonna kill her. 

* [Attempt to save Lottie] -> save
* [Leave the party] -> leave

== leave
You run out of the basement and back onto the Lambda Chi lawn, taking one last look before heading to your car.
You chose to leave Lottie and save yourself. 
You never hear from Lottie again until her name is plastered on the news a few days later.

-> END

== save
You slowly make your way out from behind the tarp curtain, so as to not draw much attention to yourself.
Making a scene could alert the house members, who could easily pass all of this off as Halloween decoration, or worse, do something to you too.
All you know is that you have to find Lottie, and fast.
* [Go upstairs] -> upstairs1

== upstairs1
{&11:51 P.M.|11:52 P.M.|11:53 P.M.}
{not kitchen: You run upstairs onto the main floor of the house.}
{not kitchen: Dark wooden interior, dark accents, dark aura. It looks just as sinister on the inside as it does from the outside.}
{bathroom: You've already explored the kitchen and the bathroom.}
* [Seach the kitchen] -> kitchen
* [Search the bathroom] -> bathroom
* {bathroom} {kitchen} [Move to living room] -> living_room

== kitchen
You walk into the kitchen and quickly start rifling around to get some kind of clue of Lottie's whereabouts. 
No sign of her anywhere.
You reach the last drawer in the line of countertops and open it to find various medicines and ailment treatments.
On top of the pile, partially opened, is a flimsy ziplock baggy with the words "Sleeping Agent" sharpied on top.

* [Go back] -> upstairs1

== bathroom
You find the nearest bathroom with the door wide open. The hinges look as though they've been busted open with something stronger than a hand.
"Lottie?" You call out, but the bathroom's empty.
The bathroom is spotless, save a familiar-looking phone case lodged between the toilet and the wall.
You pick it up and unlock it to find an unsent message from Lottie to you:
"In the bathroom now. A group of guys followed me ifeel sick I had too much to drjnk pls come"

* [Go back] -> upstairs1

== living_room
11:54 P.M.
You make your way into the living room.
Three large couches surround a coffee table in the middle of the room. A large staircase at the back of the room leads up to the second story.
On one of the couches you spot a unassuming crowbar. More than likely used on the bathroom door.
On the floor next to the couch are a familiar pair of shoes. A pair of shoes you've seen walk in and out of your dorm many a time.

* [Continue] -> staircase

== staircase
You hear noise from atop the staircase.

* [Investigate it] -> noise

== noise
11:55 P.M.
At the top of the staircase is a long hallway extending to your right and your left. Directly in front of you is a set of open double doors that lead to a balcony. 
And on that balcony are two men--each of them holding an arm of a girl who's currently sat slumped over on the railing of the balcony.

* [Continue] -> noise1

== noise1
You press yourself against an adjacent wall, just out of sight of the men. One is dressed as Superman, and the other, fittingly, Batman. They are speaking to one another. You extended your ear towards the balcony.
Superman: "How much more time til?"
Batman: "Less than five minutes."
Superman: "And no one saw us?"
Batman: "Everyone's downstairs. We had no problem the last couple of times."

* [Keep listening] -> keep

== keep
Superman pauses before speaking again.
Superman: "This seems cruel for a 'peaceful death.'"
Batman: "'Peaceful' doesn't necessarily mean 'ethical.' This is what He would want," Man 2 said, placing stark emphasis on "He." "She's already so gone anyway, she won't feel a thing."

* [Do something] -> something

== something
11:56 P.M.
Quickly.

* {liquor_pickup} [Act drunk] -> drunk
* {liquor_pickup} [Throw liquor bottle] -> throw_bottle
* {hairspray_pickup} [Create flamethrower] -> flamethrower
* {hairspray_pickup} [Throw hairspray can] -> throw_can
* [Scream] -> scream

== drunk
11:57 P.M.
You take the liquor bottle in one hand and find the innermost drunken character you can find.
You saunter out into the balcony doorway, blinking slowly and making sure your posture is less than perfect.

* ["Hey..."] -> drunk2
* ["What are youuuu two up to?"] -> drunk2

== drunk2
Both men turn around, startled. 
Batman quickly looks at Superman, an indication that he's going to take care of this, and then starts to walk towards you.
Batman: "How'd you get up here?"
You offer an uninterested shrug and take a swig out of the bottle to really sell your performance.
The man inches closer to you, and your window of opportunity opens.

* [Strike him] -> hit

== hit
11:58 P.M.
You strike the man across the face with the bottle of Jack Daniels. Connecting at his right temple, the bottle shatters, sending an array of shards into his face and knocking him to the ground.
You kick him several times before tossing the bottle and stepping onto the balcony.

* [Continue] -> putherdown

== flamethrower
11:57 P.M.
You are suddenly reminded of the fact that you have a lighter on you, as well as a can of aerosol.
You ready the can of hairspray, aiming it towards the balcony doors while you begin to flick on your lighter.

* [Whistle] -> whistle

== whistle
11:58 P.M.
You let out a small whistle, and just as you do, your lighter ignites. You hold it out anticipatingly in front of the can.
Within seconds, Batman rounds the corner, looking the opposite direction before facing you. Your finger plunges down on the hairspray nozzle, unleashing an unforgiving firey breath onto the man's face.
He screams in pain as he falls to the ground, clutching his now droopy face.
You kick him several times before tossing the bottle and stepping onto the balcony.

* [Continue] -> putherdown

== throw_bottle
11:57 P.M.
You take the bottle of Jack Daniels and throw it down the stairs.
It does exactly what you hoped it would.
Batman: "Did you hear that?"
Superman: "Yeah."
Batman: "I think a few drunks wandered up from the basement. Wait here, keep her still. I'll be back."

* [Enter the balcony] -> balcony

== throw_can
11:57 P.M.
You take the bottle of Jack Daniels and throw it down the stairs.
It does exactly what you hoped it would.
Batman: "Did you hear that?"
Superman: "Yeah."
Batman: "I think a few drunks wandered up from the basement. Wait here, keep her still. I'll be back."

* [Enter the balcony] -> balcony

== balcony
11:58 P.M. 
You slowly step onto the balcony. Superman stands with his back toward you, a firm hand on your best friend's arm.

* ["Let her go."] -> lethergo
* ["What are you doing?"] -> lethergo

== lethergo
Superman turns, frozen. Eyes wide.
Superman: "I... I'm just getting her down." His mouth is opened wide as he breathes through it. His hand is still gripping onto her arm. "I found her up here."

* ["Put her down, then."] -> putherdown
* ["Bullshit."] -> putherdown

== putherdown
11:59 P.M.
Superman looks at you, mortified, and then back at Lottie. After a moment's thought and a quick glance at his watch, he turns to execute a shove.
You lunge forward at the man, pulling him down onto the concrete floor of the balcony. Lottie staggers on the edge.
You recall the self defense assignment you were about to submit before you came to this god-forsaken frat and manuever the man into a swift headlock.
Within seconds, he's out.

* [Continue] -> rescue

== rescue
12:00 A.M.
Once he's out, you pull Lottie over the ledge and lay her down next to you.
"Lots, oh my god. Are you okay?"
Her eyes flutter a bit as she starts to nod. Conscious. Good.
At that very same moment, blood-curdling screams begin to emanate throughout the house.

* [Investigate noise] -> noise2

== noise2
You walk back into the house to see various men running around frantically near the bottom of the staircase.
Their bodies are completely engulfed in flames.
Some are running, others are trying to roll around on the ground to put themselves out. To no avail.
You watch as their skin begins to melt off of their bodies and their voices begin to curdle and the horrid stench of burning flesh begins to permeate the air.
You can't help but watch in awe. You can almost feel a smile creep across your face.
Thanatos kept his promise.

* [Return] -> rescue2

== rescue2
You return to where Lottie is lain on the cold concrete. You place your hand under her head and place it into your lap. Screams still ring out from everywhere around you.
"What... is happening?" Lottie manages to say through slurred speech. Poor girl.
You smile at the goofy, numb expression on her face, and then you feel bad after remembering how that numb expression got there in the first place.
You place your hand on her cheek and brush your thumb over it. 
"Don't worry," you say. "I'll tell you about it when we get home."
"Is the party over?" Lottie asks innocently, her blinking slower than molases.
"Yeah," you assure. "It's over."

-> END

== scream
11:57 P.M.
You scream bloody murder and Man 2 comes running around the corner.
He hesitates a moment before administering a nasty right hook to your jaw, rendering you unconscious.
The men dispose of your body over the balconly ledge at midnight along with Lottie's, securing Lambda Chi eternal life and prosperity for another two months.

-> END






