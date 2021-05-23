INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'edf6eab5-642f-466e-ade9-77b6df074f4d', N'admin', N'admin', N'd08709a7-cb63-49dd-b6dd-553c29291ecf')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a950515d-cf3d-415a-944a-a544ca30412c', N'jaya@gmail.com', N'JAYA@GMAIL.COM', N'jaya@gmail.com', N'JAYA@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDH3O2TouafdTW7fsavsmt9ZSq2h8peCqSlb43oUzfGRDoHaX6v96r5Z2uAXrZXL9Q==', N'VIWLYTVYUZOSMMPC4POYYXLMAC2QZYPR', N'ab11c2f3-e698-4b1f-87a3-e45963815231', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b6ff6d12-954d-4244-a0fc-a8463dedf90e', N'admin@bikestore.com', N'ADMIN@BIKESTORE.COM', N'admin@bikestore.com', N'ADMIN@BIKESTORE.COM', 1, N'AQAAAAEAACcQAAAAEGlbrAxY0T2pgEZU4DqMF+GCALo9xLs6rfuVm9TpEuk0aI69dRegr4WVHwbMhyr5DA==', N'JEMQQFEJWUCBHWI724D2UBWW54OZPCA4', N'd1ffdf99-ad64-4aab-8f46-dd4a00308274', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b6ff6d12-954d-4244-a0fc-a8463dedf90e', N'edf6eab5-642f-466e-ade9-77b6df074f4d')
GO
SET IDENTITY_INSERT [dbo].[CartInfos] ON 
GO
INSERT [dbo].[CartInfos] ([CartID], [UserID], [CartDate], [CartStatus], [OrderDate], [Address], [ContactNo]) VALUES (3, N'jaya@gmail.com', CAST(N'2021-05-23T13:31:06.0000000' AS DateTime2), N'Cancel', CAST(N'2021-05-23T14:26:33.4123046' AS DateTime2), N'70  Rayburn Avenue, Burnside, Christchurch', N'(021) 1759-032')
GO
INSERT [dbo].[CartInfos] ([CartID], [UserID], [CartDate], [CartStatus], [OrderDate], [Address], [ContactNo]) VALUES (4, N'jaya@gmail.com', CAST(N'2021-05-23T15:26:18.3594158' AS DateTime2), N'Cart', CAST(N'2021-05-23T15:26:18.3596416' AS DateTime2), N'', N'')
GO
SET IDENTITY_INSERT [dbo].[CartInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemCategories] ON 
GO
INSERT [dbo].[ItemCategories] ([ItemCategoryID], [ItemCategoryName]) VALUES (1, N'Components')
GO
INSERT [dbo].[ItemCategories] ([ItemCategoryID], [ItemCategoryName]) VALUES (2, N'Accessories')
GO
INSERT [dbo].[ItemCategories] ([ItemCategoryID], [ItemCategoryName]) VALUES (3, N'Apparel')
GO
INSERT [dbo].[ItemCategories] ([ItemCategoryID], [ItemCategoryName]) VALUES (4, N'Bikes')
GO
SET IDENTITY_INSERT [dbo].[ItemCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemSubCategories] ON 
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (1, N'Braking System', 1, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (2, N'Cable & Housing', 1, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (3, N'Tires', 1, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (4, N'Tubes', 1, N'.PNG')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (5, N'Racks', 2, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (6, N'Lights', 2, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (7, N'Hydrations', 2, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (8, N'Headwear', 3, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (9, N'Footwear', 3, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (10, N'Bottomwear', 3, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (11, N'Topwear', 3, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (12, N'Road', 4, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (13, N'Mountain', 4, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (14, N'Woman Bikes', 4, N'.jpg')
GO
INSERT [dbo].[ItemSubCategories] ([ItemSubCategoryID], [ItemSubCategoryName], [ItemCategoryID], [Extension]) VALUES (15, N'Commuter', 4, N'.jpg')
GO
SET IDENTITY_INSERT [dbo].[ItemSubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemInfos] ON 
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (1, N'ALLIGATOR LY-SRG20UD GEAR INNER CABLE FOR SRAM/SHIMANO', 69, N'For SRAM and Shimano', N'Not Mention', 1, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (2, N'SHIMANO B01S RESIN DISC BRAKE PADS', 380, N'Replacement brake pad for Shimano BR-M575, BR-M495, BR-M486, BR-M485, BR-M446, BR-M445, BR-M395 & BR-T675 calipers.', N'Resin pad with low noise and excellent power modulation, Steel backing plates, Low noise and excellent modulation, Top-loading', 1, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (3, N'SHIMANO DEORE SM-RT56 6-BOLT DISC BRAKE ROTOR', 350, N'Ice Tech brake rotors (RT-98; RT-81; RT-67) feature an aluminum core clad with stainless steel braking surfaces. The innovative design sheds weight, dissipate heat and dramatically improves overall performance, Freeza Technology (RT-99) features 3-layer structure with aluminum core and stainless steel outer layers and additional aluminum cooling fins reduces rotor surface temperature approximately 150 degrees Celsius compared to all-steel rotors', N'6 bolt rotors include bolts, 6 bolt are interchangeable with all Shimano disc brakes as long as the hubs and rotor size match the caliper', 1, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (4, N'SHIMANO BL-MT201&BR-MT200 ALTUS HYDRAULIC DISC BRAKES', 2020, N'SHIMANO - Hydraulic Disc Brake Lever - 3 Finger - Alloy Lever

With braking power tuned for entry level riders and a lever reach designed for smaller hands, the SHIMANO ALTUS BL-MT200 is ideal for a wide variety of flat bar bicycles.', N'Anodized Alloy 2/3-finger brake lever, 90% of MT400 kit, Minimum reach 75 mm, Funnel bleeding, SHIMANO Hydraulic Mineral Oil, 40% wider pad clearance', 1, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (5, N'SHIMANO SLX SM-RT66 6-BOLT DISC BRAKE ROTOR', 1740, N'6 bolt rotors include bolts, 6 bolt are interchangeable with all Shimano disc brakes as long as the hubs and rotor size match the caliper', N'Ice Tech brake rotors (RT-98; RT-81; RT-67) feature an aluminum core clad with stainless steel braking surfaces. The innovative design sheds weight, dissipate heat and dramatically improves overall performance, Freeza Technology (RT-99) features 3-layer structure with aluminum core and stainless steel outer layers and additional aluminum cooling fins reduces rotor surface temperature approximately 150 degrees Celsius compared to all-steel rotors', 1, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (6, N'ALLIGATOR 31 STRANDS BRAKE INNER CABLE (LY-B31SSSG30UB)', 490, N'31-Strand inner cable is softer, smoother and more suitable for internal cable system 19 strands. Stronger structure than 19-Strand, increases 10% tensile strength, more stable, more durable and longer life. Lower friction, smoothly work through bicycle frame and brings perfect control performance. Ultra smooth and 3 times longer life after special high-tech treatment SUPERIOR SHINE.
', N'Material - 31-strand Superior Shine Slick Stainless, Compatibility - MTB, Diameter - 1.5mm, Length - 3000 mm, Quantity - 1 Pc/ Card', 2, N'.png')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (7, N'ALLIGATOR BRAKE CABLE HOUSING END CAPS BRASS (FERRULE) (LY-HPBS01#B150)', 4290, N'Alligator Cable Tips Cable tips help prevent fraying of cut cables while protecting the rider from injury.', N'Not Mention', 2, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (8, N'SPECIALIZED GROUND CONTROL 2BLISS READY 650B FOLDABLE', 1700, N'The Ground Control 2Bliss Ready is an exceptionally versatile trail tire. Not only does it feature improved cut-resistance, but we''ve also optimized the tread using FE Analysis. The end result is a tire that rolls fast and provides increased grip, traction, and confidence in every imaginable condition.', N'Casing: 60 TPI for 15% improved cut-resistance over S-Works model; 650b x 3.0" is 120 TPI, Bead: Foldable, Butyl wrapped bead = 2Bliss Ready, Compound: 60a, 650b x 2.1"; psi 35-65; approximate weight 630g', 3, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (9, N'PIRELLI P ZERO RACE FOLDABLE TIRE (BLACK)', 5490, N'ZERO™ Race synthesizes the advantages of the tube-type technology in an all-rounder cycling tire for high-intensity training sessions and races. The TechBELT Road carcass improves reliability against punctures without affecting the weight of the tire while the special SmartEVO Compound enhances the grip performances both on wet and dry asphalt compared to our previous cycling compounds.', N'The new SmartEVO Compound uses a blend of 3 different polymers, each of them providing a specific performance while guaranteeing a perfect balance of opposite characteristics: the endless goal for rubber technicians. To complete this project, Pirelli utilized its exceptional experience developed in over 100 years of Motorsport in addition to implementing their vast cycling expertise, of always performing at the highest level.

Pirelli''s in-depth knowledge and chemical expertise have enabled the Pirelli material engineers and chemists to advanced use of a ternary polymer blend in order to guarantee “smart” behavior characteristic as the base of the outstanding properties of the SmartEVO Compound, resulting in a better grip on dry and wet, while also improving the rolling resistance. A performance package ride enabled and tuned for all the modern road disciplines and terrains, from local or World Tour racing to epic adventures where climate and road surface demand tires that perform in all circumstances.', 3, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (10, N'PIRELLI P ZERO RACE TUBELESS FOLDABLE TIRE (BLACK)', 5990, N'Using experience from World Tour racing, coupled with a constant desire for excellence, the Pirelli engineers have developed the most performing tire ever conceived by the iconic brand. The P ZERO™ Race TLR is crafted to pack all the benefits of tubeless technology, grip rolling and handling, into a race-ready all-rounder which outperforms anything Pirelli has done before, tubular included. After three years of development working with the fastest racers at the World Tour level, Pirelli designed this new tubeless-ready tire with the new SmartEVO compound to provide their Pro Riders, as well as yourself, with the best Pirelli tire ever made!', N'SmartEVO Compound, TechWall+ with the best weight-to-protection-ratio, Tubeless Ready, Rim compatibility developed under ETRTO standards and for modern wide rims, Developed together with the World Tour Teams Mitchelton-SCOTT & TREK | Segafredo', 3, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (11, N'SPECIALIZED CAPTAIN SPORT 29INCH WIRED', 1850, N'The Captain Sport is the perfect tire for riding with control and predictability over any trail. It features sharp-edged center knobs and a tightly spaced knob sequence that provides traction and speed. You''ll also find stable shoulder knobs that make for aggressive cornering, as well as open transition space for self-cleaning when you''re riding along wet or muddy trails.', N'Casing: 60 TPI, Bead: Wire, Compound: 70a, 29 x 2.0 ", psi 35-65, approximate weight 730g', 3, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (12, N'SCHWALBE SV15 700X18-28C PRESTA', 440, N'Presta Valve, Extremely air-tight. Less air loss means having to inflate less, Extremely reliable! Each SCHWALBE tube is individually examined twice at the factory to ensure air-tightness, 700x18C-28C, 60mm and 40 mm VALVE options available, Road tube', N'Threaded Presta Valve', 4, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (13, N'SCHWALBE AV13 26X1.50-2.50 SCHRADER', 400, N'Schrader Valve, Extremely air-tight. Less air loss means having to inflate less. Extremely reliable! Each SCHWALBE tube is individually examined twice at the factory to ensure air-tightness. MTB Tube, 40 mm valve', N'Schrader Valve Type, Wheel Size 26 inch', 4, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (14, N'SPECIALIZED 26X1.75-2.4 40MM SCHRADER', 350, N'The Specialized Standard Schrader MTB tube is the tube that is best suited to all kinds of mountain bike riding. Their standard tubes use a moulded method of construction, ensuring a consistent thickness of butyl rubber and a tube that is exactly the right size. The Butyl rubber, the strong material often used for Specialized''s tyres, itself gives the tube a superior puncture resistance and air retention. The 0.8mm thickness offers riders ess rotational weight helping maintain balance in the wheel.

Suitable for 26 inch wheels and tyres between 1.75 and 2.4 in size.', N'0.8 mm thick for less rotational weight in a standard tube, Butyl rubber, Consistent thickness, 40mm long valve, Schrader valve', 4, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (15, N'CONTINENTAL RACE 28 700X20-25C 80MM PRESTA', 430, N'Continental''s high-quality butyl Race 28 Tube is perfectly suited to Road Racing. Lightweight and effective, this butyl tube is another addition to your cycling arsenal this season.', N'80mm Presta Valve, High-quality Butyl Tube', 4, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (16, N'BNB TRUNK MOUNT BIKE CARRIER - GENESIS', 6490, N'Mounts to sedan and hatchback, Built with high strength steel and reinforced plastic, UV resistant powder coating finish. Stretchable UV resistant bike holders to hold oversized bike frames, Folds flat for compact size, Safety strap included', N'Full colored box package, Full colored guide, TUV certified, 3 bikes capacity, 45 kgs weight restriction, No tools needed', 5, N'.png')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (17, N'BNB BIKE BEAM PRO ADAPATER', 3590, N'The BnB Beam Pro adapter has a sandy black powder coating with a heavy steel tube construction  it act’s as artificial top tube for Y frame bikes', N'For Ladies Bike', 5, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (18, N'YAKIMA SPARE RIDE BIKE CARRIER', 4250, N'SuperCush ZipStrip™ cradles secure the bikes and make loading and unloading a breeze, ZipStrips™ secure bikes to the rack and are fully removable, Anti-sway cradle design minimizes bike-to-bike contact, Fits nearly any stock size spare, SKS locking package secures bikes to rack to help prevent theft

', N'Universal mounting plate with extension fits most lug patterns, Locking knob secures rack and spare tire to the vehicle, Yakima signature bottle opener lets you enjoy a post-ride cold one, 2-bike capacity', 5, N'.png')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (19, N'CATEYE REAR LIGHT (EXTERNAL BATTERY) - OMNI 3 (TL-LD135-R)', 790, N'The Omni 3 rear light provides 360 degrees of visibility and the Cateye exclusive FlexTight bracket and included clothing clip allow you to easily attach the light anywhere you’d like.', N'360-degree visibility, OMNI directional technology and OptiCube™ lens technology, Snap System', 6, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (20, N'NITERIDER LUMINA MICRO 850 FRONT LIGHT', 3399, N'Producing 850 brilliant lumens, the NiteRider® Lumina™ Micro 850 is smaller, lighter, and more compact than the original Lumina™ series. Its compact profile and high light output make the Lumina™ Micro 850 ideal for helmet mounted applications, helmet mount available as an optional accessory. Using the included handlebar mount (fits up to 35mm) with a quick-release tab prevents any chance of theft by allowing convenient removal and installation of the headlight.', N'All New Collimator Lens produces a generous even widespread beam, 4 Light Levels plus 1 Daylight Flash Mode, FL1 Standard IP64, dust and water-resistant, High output light using a CREE™ LED at 6000k, Ultra-lightweight 850 lumen headlight, weighing in at only 130g including mount, Secure on and off-road handlebar mount, Fits standard and oversize 35mm handlebars, Small compact design that’s perfect for helmet mounting (Helmet Mount Sold Separately), 
Convenient USB rechargeable, Low battery indicator, Lock Mode, perfect for use during storage and transporting the light. Press and hold the power button for 7 seconds to lock out the operation of light', 6, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (21, N'CATEYE FRONT LIGHT (EXTERNAL BATTERY) - HL-EL135', 1190, N'The HL-EL135 has three LEDs and OptiCube lens technology for a wider, 150 candlepower beam with excellent visibility.

With two AA batteries, the HL-EL135 will run up to 80 hrs on constant mode and up to 320 hrs on flashing mode, making it the perfect everyday commuter safety light.

Featuring our exclusive tool-free FlexTight mounting bracket that allows you to quickly and easily attach the HL-EL135 to virtually any handlebar.', N'3 white LEDs
AA alkaline battery x 2
2 light modes
FlexTight™ H-34N bracket', 6, N'.png')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (22, N'NITERIDER SENTRY AERO 260 RECHARGEABLE REAR LIGHT', 2499, N'The NiteRider® Sentry™ Aero 260 is a lightweight, aero taillight featuring dual LED light strips to deliver 260 lumens of Daylight Visible red light. An inner and outer lens design helps to shape light output, producing long-range visibility when viewed directly from the rear but also provides ample surrounding light to the peripheral, making the Sentry™ Aero 260 visible from nearly any angle.', N'Daylight Visible Flash (DVF)

Innovative aerodynamic shape with 260 degrees of visibility

Group Ride Mode – be seen without distracting fellow cyclists

Aero and Standard seat post straps included', 6, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (23, N'GIANT DOUBLESPRING II BOTTLE 750ML', 499, N' HYDRATION REFRESHED. Refresh your hydration experience. The DoubleSpring II features Fresh technology—a smooth antimicrobial coating, and a new, improved nozzle design to produce 50% greater water flow. Fresh tasting hydration when you need it most.', N'Fresh antimicrobial technology
100% dishwasher safe, rated up to 90°C
New nozzle design produces 50% greater water flow', 7, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (24, N'CAMELBAK PODIUM CHILL 710ML/24OZ INSULATED BOTTLE', 1399, N'With double-walled construction to keep water cold twice as long as other bottles, the insulated CamelBak Podium Chill is the best-of-the-best for delivering cold, consistent cycling hydration. Features like optimized cage fit and improved clean ability', N'Double-Walled Construction: Keeps water cold twice as long

Optimized Cage Fit: Engineered to securely fit in a variety of bottle cages

Easy Squeeze: Get more fluid with less effort

High Flow, Self-Sealing Cap: Maximizes flow rate while eliminating splatters and spills

100% free of BPA, BPS and BPF: Ride clean, drink clean

Easy-to-Clean Interface: All parts can separate for thorough cleaning

Positive Lock out: For leak-proof transport

TrutasteTM Polypropylene with HydroguardTM: Taste your water and nothing else, time after time.', 7, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (25, N'CAMELBAK PEAK FITNESS CHILL 750ML/25OZ INSULATED BOTTLE', 1499, N'With double-walled insulation to keep your water cold twice as long, the Peak Fitness Chill is poised to become your new favorite workout partner. It features a revolutionary triangular, tapered design for optimized hand fit and better standalone stability. With features like a high flow, self-sealing cap, easy-to-clean drink interface, and Clean Cap to keep your nozzle clean, it prioritizes performance and functionality above all else. From the gym to the studio and everywhere in between, the Peak Fitness bottle is a refreshing addition to our line of innovative, technical hydration tools.', N'Insulation keeps water cold twice as long

Optimized Hand Fit: Comfortably carry in your hand

Carry Loop: Quickly grab and go

High flow, self-sealing Jet Valve™ delivers more water per squeeze

Leak-Proof: Lock-out mode prevents leaking

Cap disassembles for easy cleaning

Clean Cap: Keeps dirt and germs out

Drink Clean: BPA, BPS, and BPF free

TrutasteTM Polypropylene with HydroguardTM: Taste your water and nothing else', 7, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (26, N'ZEFAL PULSE ALLOY BOTTLE CAGE', 150, N'The Wiiz is universal for all types of frames. Its originality comes from its reversibility as it can be mounted to take the bottle from the right or from the left. This bottle cage is made of resistant and elastic thermoplastic resin. Available in two coulours.', N'Aluminum cage with thermoplastic resin brase on
The aluminum cage offers good hand bottle grip while the technopolymer in the fixtures absorbs shock
Can fit in all types of frames and for all types of bottles', 7, N'.png')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (27, N'MERIDA TEAM RACE AR3- IN MOULD', 4390, N'Single inmold construction
Highly ventilated: 12 holes
2D micro dial fit system
Heat embossed & 3D die cut padding
Size: 52-56 cm / 56-59 cm 
Weight: 260g', N'Exchange request to be initiated within 7days from the date of delivery.
Item was delivered in a physically damaged condition.
An incorrect item has been delivered to you.
Delivered Item has manufacturing defects.
This Product is Not eligible for Sizing related Exchange.', 8, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (28, N'GIANT REV COMP HELMET (GLOSS METALLIC WHITE)', 3950, N'Designed For Everyday Road Riding Performance, The All-New Rev Comp Follows In The Footsteps Of The Pro-Level Rev, A Favorite Among Worldtour Riders Including Giro D’Italia Champion Tom Dumoulin. This All-Rounder Introduces Some New Features To Optimize Its Comfort, Protection, And Versatility. It Has 14 Vents To Maximize Airflow, A Cinch Pro Fit System For Quick And Comfortable Fit Adjustment, And Is Available With Mips To Offer Added Impact Protection. Other Features Include Integrated Magnetic Light Mounts For Riding In Low-Light Conditions Or At Night.', N'Airflow 14-Vent Cooling System Is Enhanced By Three Large Center Vents Pull Air Through The Helmet And Over The Rider’S Head To Keep Them Cool

In-Mold Polycarbonate (Pc) Shell With Lightweight Eps Foam Provides Maximum Protection Without Compromising Comfort

Lightweight, Comfortable Liteform™ Webbing Wraps Around The Head For A Secure And Comfortable Fit. It’S Also Hydrophobic So It Won’T Absorb Sweat Or Stretch Out

Transtextura Plus™ Anti-Microbial Padding Helps Fight Bacteria Growth By Pulling Sweat From A Rider’S Head And Transferring It Through The Airflow Vents. The Natural Property Of The Fabric Inhibits Microbes That Cause Odors

Cinch Pro™ Fit System Offers Optimal Coverage By Cradling The Occipital Bone For Full Protection, Support, And Comfort

Numen+ Link Tl Magnetic Mount Integration

Locking Cam Buckles Keep The Liteform™ Webbing Anchored Securely', 8, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (29, N'GIRO SYNTAX MIPS (MATTE BLACK/BRIGHT RED)', 9999, N'LONG-RANGE COMFORT MEETS RELENTLESS PERFORMANCE AND STYLE WITH THE SYNTAX MIPS®. IT HAS SLIGHTLY DEEPER COVERAGE AND A SLIM DESIGN TO KEEP YOU COMFORTABLE WHETHER YOU''RE RIDING ON CITY ROADS OR MOUNTAIN TRAILS.

The outer shell is molded from a tough polycarbonate that''s fused permanently to the EPS foam liner using our In-Mold construction process to enhance durability and ventilation without excess bulk. And the fit is luxurious and secure, thanks to our highly-adjustable Roc Loc 5 Air MIPS® system that allows you to customize fit/feel for great stability and long-range comfort. Another benefit is integrated MIPS® which can provide an added measure of protection from rotational forces in the event of an angled impact.', N'All Giro helmets are designed to reduce as much energy as possible while meeting and exceeding stringent safety standards. The goal of Giro''s MIPS-equipped helmets is to reduce rotational forces. Giro believes that helmets equipped with this technology can reduce the amount of rotational force that may be transferred to rider''s brain in certain impacts.', 8, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (30, N'SPECIALIZED SMALL FRY HELMET (KIDS)', 2500, N'Designed to handle growth spurts, picky kids, and demanding parents, the Small Fry Toddler helmet features our Headset SC dial fit system for easy adjustments to fit even the smallest toddler heads.
Headset SC fit system is scaled for child-sized helmets with a large external adjustment knob to dial-in the perfect fit.
In-molded shell improves strength and reduces weight.
Tri-Fix web splitter for improved comfort and ease of strap adjustments.
Reflective webbing for increased visibility in low-light conditions.', N'Integrated visor/sun brim provides shelter from sunlight.
Front mesh-covered vents to keep bugs out.
Shape designed to accommodate child trailer use.
Toddler size, approximately up to age three.', 8, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (31, N'SPECIALIZED COMP SHOES (BLACK/RED)', 7200, N'The Comp Mountain Bike shoes take a whole lot of comfort, mix it with some serious pedaling efficiency, and add a layer of grippy trail traction for good measure. The result is a feature-packed and reliable all mountain shoe that delivers the right mix of performance and durability for a variety of trail conditions.

Designed with Body Geometry attributes at the forefront, the comfortable fit and stiff sole provide maximum pedal efficiency and power transfer. The Boa® S2-SV dial, meanwhile, is easily replaceable without using any tools, and it allows for on-the-fly fit adjustments. The materials used in the construction are also designed to take a beating, whether it be an accidental root or rock strike, while the SlipNot™ tread gives you reliable trail traction when you need it.', N'Body Geometry sole construction and footbeds are ergonomically designed and scientifically tested to boost power, increase efficiency, and reduce chance of injury by optimizing hip, knee, and foot alignment.
Injection-molded nylon composite outsole with SlipNot™ rubber tread for moderate pedaling stiffness and phenomenal trail traction: Stiffness Index 6.0.
Single Boa® S2-SV dial for on-the-fly micro-adjustment, backed by the Boa® Lifetime Guarantee.
Dial & lace assembly is replaceable in seconds with Snap cartridge system.
Hard-molded toe kick for protection and durability.
Stitched synthetic and mesh upper with asymmetric strap closure for a comfortable fit.
Two-bolt SPD-style cleat pattern fits all major MTB pedals.
Standard Fit last for all-day comfort.
Replaceable toe studs.
Multiple widths available.', 9, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (32, N'SPECIALIZED COMP SHOES (BLACK)', 8415, N'The Comp Road Shoes offer the security and adjustability of our high-end Boa® road shoes, plus they''re paired with a nylon sole and Body Geometry technology to deliver best-in-class performance and value.', N'Body Geometry sole and footbed optimise hip, knee, and foot alignment to improve performance and comfort
Injection-moulded nylon composite sole is engineered to be moderately stiff yet light: Stiffness Index 6.0
Lightweight BoaÂ® S2-SV dial closure for on-the-fly adjustment
Synthetic upper with mesh venting for supple fit
Reflective heel elements for high visibility
Combine Body Geometry shoes, footbeds and wedges to maximise performance benefits
3-bolt cleat pattern fits all major road pedals', 9, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (33, N'SPECIALIZED BODY GEOMETRY SL FOOTBED', 2810, N'Specialized BodyGeometry SL footbeds have been specially designed to customize your cycling shoe fit, improving comfort and inevitably performance. Incredibly lightweight, this easy to use insole provides longitudinal and metatarsal support to be kind to your feet.

The footbed is available in a choice of three colors, depending on your foot requirement.', N'+ Red = minimal contours for riders that prefer minimal support.

++ Blue = moderate (slightly higher longitudinal arch & metatarsal button) = for people with flat to Normal arch.

+++ Green = significant support = for people with Normal or high arches.', 9, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (34, N'CASTELLI QUATTRO 6 SOCKS', 799, N'Our polypropylene Quattro socks are made especially to feel light on the foot and to keep your foot dry. The yarns absorb no moisture, so your foot stays dry for the entire ride. These socks are ideal for use under booties in the rain, since they dry out quicker after it stops raining. As with all Castelli socks, we’ve obsessed over the compression cuff and midfoot band so everything feels just right.', N'Polypropylene yarns for moisture management
Mesh construction on bottom of foot
Midfoot support band
Reinforced cuff for excellent ankle fit
Weight: 55g', 9, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (35, N'CASTELLI EVOLUZIONE 2 BIBSHORT (BLACK)', 6999, N'While this short sits at the entry-level of Castelli’s shorts range, it’s engineered with top-level performance. It starts with the ProDry Soft two-layer fabric that knits a polyester inner layer with a nylon outer layer for exceptional moisture management and durability. Then the side panel and leg ending are extra stretchy for exceptional fit. The KISS Air seat pad is the choice of some of our pro athletes and even sees duty at the Tour de France. Consider this short not as an entry-level short but as your entry to real comfort.', N'New ProDry Soft 2-layer fabric provides exceptional moisture management

Anatomic shape with an extra-stretch side panel that extends to 360° leg band

Mesh bib straps

KISS Air seat pad for all-day comfort

Reflective tabs

Innovative InMold silicone leg gripper with clean edge finish

Weight:197g', 10, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (36, N'SPECIALIZED ATLAS SPORT MTB SHORTS (BLACK)', 2870, N'VaporRize™ moisture transfer stretch woven fabrics
Two cargo pockets', N'Integrated liner with Body Geometry Mountain Chamois
Deflect UV 50+
12" inseam-size medium', 10, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (37, N'SPECIALIZED SWAT MOUNTAIN LINER SHORT (BLACK/HYP GREEN)', 2850, N'VaporRize™ moisture transfer mesh fabrics
Two SWAT integrated pockets
Fold-over leg cuff', N'Body Geometry Mountain Chamois
10" inseam (size medium)', 10, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (38, N'SPECIALIZED RBX SPORT SHORT', 2750, N'Long haul comfort, on-the-spot value—this is the formula at work for the Women''s RBX Sport Shorts.

They''re made from our lightweight, breathable, and highly durable VaporRize™ materials, so they''re guaranteed to keep you dry, cool, and comfortable over the course of a long ride. Further along these lines, the fit of the shorts features an articulated design that moves with the body throughout the movements of cycling, not against it, and it''s generally a less aggressive cut than what you''ll find in the SL line.

For the chamois, we included our women''s-specific Body Geometry Sport Women''s insert that can be characterized by its ample padding. The benefits of this design are multifold in that it''ll help to smooth out rough terrain, while also providing substantial support.', N'VaporRize™ knit fabrics are lightweight, supportive, and effective at moisture wicking and evaporation.

Articulated design ensures the perfect fit while in the riding position.

Fold-over leg cuff w/ silicone print prevents pinching and discomfort by providing an even, low-volume, and compressive hold over the leg.

Body Geometry RBX Sport Women''s chamois features plenty of padding to keep you comfortable over the long haul.

Deflect® UV 50+ protects your skin from harmful ultraviolet rays.', 10, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (39, N'SPECIALIZED RBX SPORT JERSEY (NEON YELLOW)', 2550, N'Sure, for some people, performance is all that matters—we''ll leave the skinsuits for them. For the rest of us, however, there''s value in matching performance with comfort, and this is where our RBX Sport Jersey thrives.

It''s made from our VaporRize™ knit fabrics that place a focus on balancing durability and moisture management, which means that you get a jersey that''ll be long lasting and quite comfortable over the long haul.

Adding to the comfort, you''ll find that we included a full-length front zipper for on-the-fly venting, as well as our Standard Fit. This cut hits the sweet spot between race and classic, so it''s perfect for long, all-out rides, yet it''s roomy enough to avoid any pinching or the feeling of being constricted in your movements.', N'VaporRize™ fabric construction is soft, comfortable, and dutiful at managing sweat.

Three rear expansion pockets expand to house all of your small ride essentials.

Full-length front zipper lets you control ventilation when the heat is on.

Deflect™ UV 30 protects your skin from harmful ultraviolet rays.

Standard Fit is generous, so it fits close to the body without being constricting.', 11, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (40, N'GAMBITT FREEFLOW JERSEY (SURF BLUE/RED)', 2250, N'Gambitt Freeflow Jersey is designed especially for those long training rides in summer. The unique 3D cut provides unmatched comfort and fit. We have used fabrics that are highly breathable and dry quickly.', N'Fabric - Airepass Pro, 100% Polyster (Highly breathable + moisture wicking)
Zipper - Full length zipper
Cuff - No pressure elastic cuff for stay put fit
Hem - Soft gripping silicon band on waist ensures no sliding during rides.
Pockets - Three easy access rear pockets
Print - High Quality Sublimation using Italian ink which never fades.
Reflective - Reflective strip on lower back for enhanced visibility in low light conditions.', 11, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (41, N'SPECIALIZED RBX SPORT JERSEY (BLACK)', 2550, N'Sure, for some people, performance is all that matters—we''ll leave the skinsuits for them. For the rest of us, however, there''s value in matching performance with comfort, and this is where our RBX Sport Jersey thrives.

It''s made from our VaporRize™ knit fabrics that place a focus on balancing durability and moisture management, which means that you get a jersey that''ll be long lasting and quite comfortable over the long haul.

Adding to the comfort, you''ll find that we included a full-length front zipper for on-the-fly venting, as well as our Standard Fit. This cut hits the sweet spot between race and classic, so it''s perfect for long, all-out rides, yet it''s roomy enough to avoid any pinching or the feeling of being constricted in your movements.', N'VaporRize™ fabric construction is soft, comfortable, and dutiful at managing sweat.

Three rear expansion pockets expand to house all of your small ride essentials.

Full-length front zipper lets you control ventilation when the heat is on.

Deflect™ UV 30 protects your skin from harmful ultraviolet rays.

Standard Fit is generous, so it fits close to the body without being constricting.', 11, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (42, N'SPECIALIZED RBX SPORT JERSEY (WHITE/BLACK)', 2750, N'Sure, for some people, performance is all that matters—we''ll leave the skinsuits for them. For the rest of us, however, there''s value in matching performance with comfort, and this is where our RBX Sport Jersey thrives.

It''s made from our VaporRize™ knit fabrics that place a focus on balancing durability and moisture management, which means that you get a jersey that''ll be long lasting and quite comfortable over the long haul.

Adding to the comfort, you''ll find that we included a full-length front zipper for on-the-fly venting, as well as our Standard Fit. This cut hits the sweet spot between race and classic, so it''s perfect for long, all-out rides, yet it''s roomy enough to avoid any pinching or the feeling of being constricted in your movements.', N'VaporRize™ fabric construction is soft, comfortable, and dutiful at managing sweat.

Three rear expansion pockets expand to house all of your small ride essentials.

Full-length front zipper lets you control ventilation when the heat is on.

Deflect™ UV 30 protects your skin from harmful ultraviolet rays.

Standard Fit is generous, so it fits close to the body without being constricting.', 11, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (43, N'POLYGON STRATTOS S4 (BLUE)', 25490, N'The Strattos S4 is built around a light and responsive frame with a full carbon fiber fork. This bike combines a lightweight, durable, and reliable alloy frame with the proven performance. It is the perfect bike for avid road cyclists, sportive regulars, and everyday commuters. Ride all day, experience more.', N'ALXALLOY
Aluminum has been the go-to material for bicycles since the late ''90s. Polygon uses an aluminum blend that is lighter and more durable than our competitors. Starting with 6061 triple-butted tubing and heat-treated for strength and durability, ALX frames are built to last the test of time.

INTERNAL ROUTING
Internal cable routing creates a clean-looking bike by routing all the cables and wires inside the frame.', 12, N'.png')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (44, N'FUJI SPORTIF 1.1 DISC (SATIN MARINE BLUE)', 64990, N'The Sportif is designed for versatility and performance. Taking geometry cues from our top-level endurance bike, the Gran Fondo, the Sportif''s longer wheelbase and taller headtube position the rider efficiently to reduce arm fatigue and back strain while on the road. Endurance geometry, road-compliant seatstays, and smart specs make the Sportif the perfect bike for local group rides, long centuries, or your next charity ride.', N'A2-SL BUTTED ALUMINUM
Fuji''s mid-level aluminum and most widely used frame material which has a double-butted profile in the frame tubes that reduces material in low-stress areas and creates a lightweight frame that is extremely durable.
ENDURANCE GEOMETRY
Fuji models with endurance geometry feature a taller headtube and longer chainstays that put the rider in a more upright riding position and increases bicycle stability. Models with endurance geometry still provide a fast and spirited ride but without the discomfort of an aggressive race posture.
WAVE SEATSTAY
Wave seatstays disrupt and diffuse road vibration and provide a slight vertical flex increasing your comfort on the bike and smoothing out your ride.
FLAT MOUNT DISC BRAKE
Low profile disc brake caliper designed specifically for road bikes providing cleaner integration and more direct connection of the brake caliper to the frame as well as better alignment of the caliper and brake rotor.', 12, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (45, N'FUJI GRANDFONDO DISC 1.3 (CEMENT GREY)', 49990, N'Allow us to introduce the century slayer: the Gran Fondo, built to keep you rolling smooth and fast on all-day rides no matter what the road conditions are. Whether climbing up steep grades or bombing down switchbacks, the Gran Fondo''s high-modulus carbon frame with Vibration Reduction Technology will keep you isolated from road noise so you can ride strong all day. With the Gran Fondo we have flipped the old paradigm around: Don''t let the road rule you. Rule your road.', N'C10 high-modulus carbon with VRTech (Vibration Reduction Technology)

C10 carbon monocoque fork with VRTech with tapered carbon steerer

Shimano 105 components

Oval Concepts 324 Disc Wheelset

Vittoria Zaffiro Pro V G2.0 26 tpi tires', 12, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (46, N'GIANT TRINITY ADVANCED PRO 1 (RAINBOW/BLACK)', 49999, N'Full integration, flat-out fast. Built to meet the demands of professional triathletes and world champion time trialists, this speeding bullet is in a class of its own. Experience supreme aerodynamic performance in a race-ready package.

Engineered using Computational Fluid Dynamics and dynamic wind tunnel testing, the Trinity Advanced Pro delivers a proven aerodynamic advantage. Handcrafted from premium Advanced-grade composite and meticulously formed with Giant''s AeroSystem Shaping Technology, it slices through the wind better than any bike in its class. Made for real-world triathlon performance, it offers a comfortable fit for long-distance training and racing. And its unique AeroVault system includes an integrated front hydration unit, top tube storage box, and downtube water bottle that, together, actually improves the bike''s aero performance on the road.', N'Giant’S High-Performance Grade Raw Carbon Material Is Used To Produce This Custom Frame Material In Our Own Composite Factory With A High Stiffness-To-Weight Ratio. The Front Triangle Of These Framesets Is Assembled And Molded As One Continuous Piece In A Proprietary Manufacturing Process Called Modified Monocoque Construction.

', 12, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (47, N'MONTAGUE PARATROOPER EXPRESS (AIR FORCE BLUE)', 29990, N'Like all Montagues, the Paratrooper Express is designed to fold and fit anywhere. With front suspension and semi-knobby tires, the Express is at home on and off-road. It makes for the perfect light trail bike or rugged commuter.

With Shimano derailleurs, Suntour suspension, and Tektro brakes, the Paratrooper Express offers components from the industry’s top manufacturers, carrying on the Swissbike® tradition of performance and portability.', N'SUSPENSION FORK
An SR Suntour suspension fork provides a smooth ride over bumps, roots and rocks, making the Express suited for on and off-road.

1.95″ WIDE TIRES
The Express is equipped with multi-sport tires that are wide enough to instill confidence in any rider while being smooth enough for pavement.

18 SPEEDS
The Paratrooper Express is equipped with an 18 speed Shimano drivetrain to deliver simple shifting and a range of gears for varied terrain.', 13, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (48, N'GIANT FATHOM 1 (TEAL)', 32999, N'Get Your Dose Of Singletrack On A Fun Hardtail That Puts You In Control. The Combination Of A Lightweight Hardtail Frame, 130Mm Suspension Fork, And 27.5 Wheels With Wide Rims And High-Volume Tires Delivers Loads Of Traction, Speed And Fun On The Trail.

With Its Updated Aluxx Sl Aluminum Frame, Quick-Handling 27.5 Wheels, And High-Volume Tires, Fathom Is A Great Choice For Technical Terrain And Singletrack Shredding. It Blends The Efficient Ride Quality Of A Classic Hardtail With The Confident Ride Quality Of Larger Tires That Absorb Bumps And Give You More Traction—So You Can Tackle Rougher Trails With Total Control. The Frame Is Designed With Trail-Friendly Geometry That Includes A More Relaxed Head Angle And A 130Mm Suspension Fork.', N'ALUXX SL ALUMINUM TECHNOLOGY
This High-Performance Level, State-Of-The-Art Aluminum Material Is Made Predominantly From 6011 Alloy And Delivers Best-In-Class Strength-To-Weight Ratios. These Framesets Also Feature Unique Welding Technologies For A High-Performance Ride Quality.
OVERDRIVE
Giant’s Original Oversized Fork Steerer Tube Technology. Designed To Provide Precise Front-End Steering Performance, The System’S Oversized Headset Bearings (1 1/4” Lower And 1 1/8” Upper For Road, 1 1/2” Lower And 1 1/8” Upper For Mountain) And Tapered Steerer Tube Work In Conjunction To Provide Optimal Steering Stiffness.
TUBELESS SYSTEM
Fewer Flat Tires. Greater Traction. Less Rolling Resistance And A Smoother, Faster Ride. Giant’S Tubeless System Makes It Easier Than Ever To Experience All These Benefits.', 13, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (49, N'MONTAGUE PARATROOPER (MATTE CAMMY GREEN)', 20900, N'The classic folding mountain bike from Montague, the Paratrooper is tough, rugged, and ready for anything. Its patented folding design was developed under a grant from DARPA to allow airborne soldiers to drop out of airplanes and into combat.

The Paratrooper offers 24 speeds, front suspension, mechanical disc brakes, and the RackStand for hauling gear. Tackle any terrain, carry your gear, and fold to stash in your trunk. ', N'DISC BRAKES
The Paratrooper is equipped with mechanicaldisc brakes. They offer quicker response, more stopping power, and better performance in wet weather than rim brakes.

SUSPENSION FORK
An SR Suntour suspension fork allows the Paratrooper to glide over the obstacles, roots, and rocks of off-road trails.

RACKSTAND
The Paratrooper is equipped with RackStand, a traditional cargo rack, kickstand, workstand, and folded bike stand all in one.', 13, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (50, N'POLYGON PREMIER 4 27.5ER (PURPLE)', 28900, N'The Premier Series Was Created For Riders Who Want A Versatile Mountain Bike. Built With A Lightweight And Durable Al6 Frame With Modern Geometry For A More Comfortable Leisure Ride, The Premier Will Keep Riders Enthusiastic About Riding For Years To Come. The Premier Series Fits The Rider And Sets Them Up For Optimal Efficiency And Power Transfer For Day To Day Ride And Sports.', N'Alutech XC Sport Frame, Suntour Xcm 120Mm Travel, Pro-Wheel Alloy TM-CY10 (Teeth Ratio 48x24T)', 13, N'.png')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (51, N'GIANT ATX 27.5ER (BLACK)', 33999, N'From Parkways To Paths And Everything In Between, This Versatile Bike Can Add Some Spice To Your Commute Or Fitness Routine. With Its Flat Handlebar, Upright Positioning, And Suspension Fork, You’Re Free To Ride Different Types Of Terrain With Confidence And Control.

With A Rugged Personality And A Smooth Riding Style, Atx Features The Familiar Flat Handlebar Look Of A Traditional Mountain Bike. It Has A Lightweight Yet Durable Aluxx Aluminum Frame And A Suspension Fork With 100Mm Of Smooth Travel To Soak Up Bumps. The Wheel Diameter Varies Based On Bike Size, With 26-Inch Wheels On Smaller Frames And 27.5 On Larger Ones. This Tailors The Bike’S Handling To A Rider’S Height. Powerful Disc Brakes Deliver Confident Handling In All Types Of Weather, And Integrated Mounts Make It Easy To Add Racks Or Fenders To Suit Your Riding Adventures.', N'ALL-TERRAIN VERSATILITY
With A Mountain Bike Style Flat Handlebar, Suspension Fork And Disc Brakes, You Can Ride Road Or Dirt With Confidence. 

LIGHTWEIGHT AND DURABLE
Frameset Constructed With High-Quality Aluxx Aluminum. 

COMFORT AND STABILITY
Frame Geometry Puts The Rider In A Position That Balances Efficiency With Stability On Rough Roads, Paths Or Trails.', 14, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (52, N'GIANT ATX 27.5ER (VIBRANT BLUE)', 33999, N'From Parkways To Paths And Everything In Between, This Versatile Bike Can Add Some Spice To Your Commute Or Fitness Routine. With Its Flat Handlebar, Upright Positioning, And Suspension Fork, You’Re Free To Ride Different Types Of Terrain With Confidence And Control.

With A Rugged Personality And A Smooth Riding Style, Atx Features The Familiar Flat Handlebar Look Of A Traditional Mountain Bike. It Has A Lightweight Yet Durable Aluxx Aluminum Frame And A Suspension Fork With 100Mm Of Smooth Travel To Soak Up Bumps. The Wheel Diameter Varies Based On Bike Size, With 26-Inch Wheels On Smaller Frames And 27.5 On Larger Ones. This Tailors The Bike’S Handling To A Rider’S Height. Powerful Disc Brakes Deliver Confident Handling In All Types Of Weather, And Integrated Mounts Make It Easy To Add Racks Or Fenders To Suit Your Riding Adventures.', N'ALL-TERRAIN VERSATILITY
With A Mountain Bike Style Flat Handlebar, Suspension Fork And Disc Brakes, You Can Ride Road Or Dirt With Confidence. 

LIGHTWEIGHT AND DURABLE
Frameset Constructed With High-Quality Aluxx Aluminum. 

COMFORT AND STABILITY
Frame Geometry Puts The Rider In A Position That Balances Efficiency With Stability On Rough Roads, Paths Or Trails.', 14, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (53, N'FUJI SPORTIF 1.1 DISC (SATIN MARINE BLUE)', 35900, N'The Sportif is designed for versatility and performance. Taking geometry cues from our top-level endurance bike, the Gran Fondo, the Sportif''s longer wheelbase and taller headtube position the rider efficiently to reduce arm fatigue and back strain while on the road. Endurance geometry, road-compliant seatstays, and smart specs make the Sportif the perfect bike for local group rides, long centuries, or your next charity ride.', N'A2-SL BUTTED ALUMINUM
Fuji''s mid-level aluminum and most widely used frame material which has a double-butted profile in the frame tubes that reduces material in low-stress areas and creates a lightweight frame that is extremely durable.
ENDURANCE GEOMETRY
Fuji models with endurance geometry feature a taller headtube and longer chainstays that put the rider in a more upright riding position and increases bicycle stability. Models with endurance geometry still provide a fast and spirited ride but without the discomfort of an aggressive race posture.', 14, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (54, N'FUJI GRANDFONDO DISC 1.3 (CEMENT GREY)', 31900, N'Allow us to introduce the century slayer: the Gran Fondo, built to keep you rolling smooth and fast on all-day rides no matter what the road conditions are. Whether climbing up steep grades or bombing down switchbacks, the Gran Fondo''s high-modulus carbon frame with Vibration Reduction Technology will keep you isolated from road noise so you can ride strong all day. With the Gran Fondo we have flipped the old paradigm around: Don''t let the road rule you. Rule your road.', N'C10 high-modulus carbon with VRTech (Vibration Reduction Technology)

C10 carbon monocoque fork with VRTech with tapered carbon steerer

Shimano 105 components

Oval Concepts 324 Disc Wheelset

Vittoria Zaffiro Pro V G2.0 26 tpi tires', 14, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (55, N'KONA DEW (ORANGE)', 41500, N'The Dew is our classic all-around commuter/townie option for someone looking for an affordable, comfortable ride. We’ve modernized the Dew with a sweet new 2x8 Shimano drivetrain and integrated brake and shifter levers. Equal parts functional and fun, the Dew is at home hopping curbs on urban rides, cruising the bike paths, or rallying your local taco truck time trial.', N'KONA 6061 ALUMINUM
Kona 7005 and 6061 Aluminum alloys are used extensively throughout our fleet of mountain and asphalt bicycles. A tough, durable, light alloy, both Kona 7005 and 6061 deliver fantastic, reliable performance that lasts for thousands of rides. Much of our 7005/6061 tubing is butted and/or formed, meaning the tubing’s wall thickness can be increased or decreased, as well as shaped, so we can fine-tune a particular frame’s strength and ride characteristics depending on its intended application

INTERNAL HEADSET
Bearing cups are actually pressed into the frame and are easily removable. An internal headset also reduces stack height, so the height of the stem and bars are more adjustable, giving the rider the best fit possible.

650B WHEELS
650b wheels and tires have a similar overall diameter to a traditional 700c gravel or commuting tire, but with a smaller diameter rim and a wider, taller tire. The extra air volume in this new generation of urban and mixed-surface tires means they can be run comfortably at lower pressures while still rolling quickly on a variety of surfaces. It’s the best of both worlds', 15, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (56, N'SPECIALIZED SIRRUS (BLACK/WHITE/CHARCOAL)', 36900, N'If you''re going to get in shape you need to move, and nothing wants to help you move faster than our Sirrus. It takes a no-nonsense approach to its design, giving you everything that you need and nothing that you don''t. This means that you can expect reliable components that are built to withstand years of daily abuse, a lightweight A1 Premium Aluminum frame that''s corrosion-resistant, and comforting Body Geometry components that''ll take the sting out of long rides. Complacency just met its match.

 ', N'The reliable and sturdy A1 Premium Aluminum frame features rack and fender mounts, allowing you to carry gear or to fend off road spray in inclement weather.
A steel, straight blade fork provides a responsive ride, while the fender and rack mounts give you the option to install rain-fighting fenders and racks that can transport your gear around town.
V-brakes are dependable and easy to maintain, so you won''t have to worry about brake bleeds or labor-intensive maintenance to have awesome stopping power. 
 ', 15, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (57, N'KONA DEW (BLACK)', 35900, N'The Dew is our classic all-around commuter/townie option for someone looking for an affordable, comfortable ride. We’ve modernized the Dew with a sweet new 2x8 Shimano drivetrain and integrated brake and shifter levers. Equal parts functional and fun, the Dew is at home hopping curbs on urban rides, cruising the bike paths, or rallying your local taco truck time trial.', N'KONA 6061 ALUMINUM
Kona 7005 and 6061 Aluminum alloys are used extensively throughout our fleet of mountain and asphalt bicycles. A tough, durable, light alloy, both Kona 7005 and 6061 deliver fantastic, reliable performance that lasts for thousands of rides. Much of our 7005/6061 tubing is butted and/or formed, meaning the tubing’s wall thickness can be increased or decreased, as well as shaped, so we can fine-tune a particular frame’s strength and ride characteristics depending on its intended application

INTERNAL HEADSET
Bearing cups are actually pressed into the frame and are easily removable. An internal headset also reduces stack height, so the height of the stem and bars are more adjustable, giving the rider the best fit possible.

650B WHEELS
650b wheels and tires have a similar overall diameter to a traditional 700c gravel or commuting tire, but with a smaller diameter rim and a wider, taller tire. The extra air volume in this new generation of urban and mixed-surface tires means they can be run comfortably at lower pressures while still rolling quickly on a variety of surfaces. It’s the best of both worlds.', 15, N'.jpg')
GO
INSERT [dbo].[ItemInfos] ([ItemID], [ItemName], [ItemPrice], [ItemDescription], [ItemFeature], [ItemSubCategoryID], [Extension]) VALUES (58, N'SPECIALIZED SIRRUS (LIME/TITANIUM/OAKGREEN)', 32900, N'If you''re going to get in shape you need to move, and nothing wants to help you move faster than our Sirrus. It takes a no-nonsense approach to its design, giving you everything that you need and nothing that you don''t. This means that you can expect reliable components that are built to withstand years of daily abuse, a lightweight A1 Premium Aluminum frame that''s corrosion-resistant, and comforting Body Geometry components that''ll take the sting out of long rides. Complacency just met its match.

 ', N'The reliable and sturdy A1 Premium Aluminum frame features rack and fender mounts, allowing you to carry gear or to fend off road spray in inclement weather.
A steel, straight blade fork provides a responsive ride, while the fender and rack mounts give you the option to install rain-fighting fenders and racks that can transport your gear around town.
V-brakes are dependable and easy to maintain, so you won''t have to worry about brake bleeds or labor-intensive maintenance to have awesome stopping power. 
 ', 15, N'.jpg')
GO
SET IDENTITY_INSERT [dbo].[ItemInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[CartItems] ON 
GO
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ItemID], [Price], [Quantity], [Total]) VALUES (4, 3, 23, 499, 1, 499)
GO
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ItemID], [Price], [Quantity], [Total]) VALUES (5, 3, 27, 4390, 1, 4390)
GO
INSERT [dbo].[CartItems] ([CartItemID], [CartID], [ItemID], [Price], [Quantity], [Total]) VALUES (6, 4, 40, 2250, 1, 2250)
GO
SET IDENTITY_INSERT [dbo].[CartItems] OFF
GO
