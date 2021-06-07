SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (1, N'Waxing & Threading')
GO
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (2, N'Skin')
GO
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (3, N'Massages')
GO
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (4, N'Pedicure & Manicure')
GO
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (5, N'Hair')
GO
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (6, N'Hair')
GO
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (7, N'Makeup')
GO
INSERT [dbo].[Categories] ([Id], [CategoryName]) VALUES (8, N'Makeup')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 
GO
INSERT [dbo].[Services] ([Id], [ServiceName], [Description], [CategoryID]) VALUES (1, N'Roll On Waxing', N'roll-on wax is a cost-effective waxing solution for large as well as small body areas, including arms, back and legs. All one needs to do is to insert a single-use wax cartridge inside a roll-on wax warmer and let it get warm for approximately 20 minutes.', 1)
GO
INSERT [dbo].[Services] ([Id], [ServiceName], [Description], [CategoryID]) VALUES (2, N'Normal Wax', N'Normal wax is made by the simple combination of lemon and sugar or honey and contains chemical substances. This wax is not meant for people with sensitive skin as it contains chemicals that can harm the skin. It can cause redness, bumps, itchiness, allergies etc. and this can last up to 2 days.', 1)
GO
INSERT [dbo].[Services] ([Id], [ServiceName], [Description], [CategoryID]) VALUES (3, N'Facials & Clean-Up', N'A clean-up usually costs less than a facial, but does not include massage and other special treatments. Just like clean-up, facial also includes cleansing, scrubbing, steam, removal of blackheads and whiteheads, and applying a face pack. However, this is coupled with a relaxing massage.', 2)
GO
INSERT [dbo].[Services] ([Id], [ServiceName], [Description], [CategoryID]) VALUES (4, N'Body Spa', N'The basic spa treatments are massage, facial, body treatment, manicure, and pedicure. ... A facial is a deep cleansing of your face, and a body treatment exfoliates and softens the skin on your body. Most spas offer manicures and pedicures as well.', 3)
GO
INSERT [dbo].[Services] ([Id], [ServiceName], [Description], [CategoryID]) VALUES (5, N'Pedicure', N'A pedicure is a cosmetic treatment of the feet and toenails, analogous to a manicure. Pedicures are done for cosmetic, therapeutic purposes. They are popular throughout the world, and especially among women', 4)
GO
INSERT [dbo].[Services] ([Id], [ServiceName], [Description], [CategoryID]) VALUES (6, N'Manicure', N'A manicure is a cosmetic beauty treatment for the fingernails and hands performed at home or in a nail salon. A manicure consists of filing and shaping the free edge of nails, pushing and clipping any nonliving tissue, treatments with various liquids, massage of the hand, and the application of fingernail polish.', 4)
GO
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Regions] ON 
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (1, N'Northland', N'North')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (2, N'Auckland', N'North')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (3, N'Waikato', N'North')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (4, N'Bay of Plenty', N'North')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (5, N'Gisborne', N'North')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (6, N'Hawke''s Bay', N'North')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (7, N'Wellington', N'North')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (8, N'Tasman', N'South')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (9, N'Nelson', N'South')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (10, N'Marlborough', N'South')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (11, N'West Coast', N'South')
GO
INSERT [dbo].[Regions] ([Id], [RegionName], [IslandName]) VALUES (12, N'Southland', N'South')
GO
SET IDENTITY_INSERT [dbo].[Regions] OFF
GO
SET IDENTITY_INSERT [dbo].[Salons] ON 
GO
INSERT [dbo].[Salons] ([Id], [SalonName], [Address], [Phone], [RegionID]) VALUES (1, N'Toni & Guy', N'New Zealand 197 Bayswater Avenue, Belmont, Auckland 0622, New Zealand', N'+64 9-445 8999', 2)
GO
INSERT [dbo].[Salons] ([Id], [SalonName], [Address], [Phone], [RegionID]) VALUES (2, N'Bare Waxing & Skin Centre Belmont', N'New Zealand 197 Bayswater Avenue, Belmont, Auckland 0622, New Zealand', N' +64 9-445 8999', 2)
GO
INSERT [dbo].[Salons] ([Id], [SalonName], [Address], [Phone], [RegionID]) VALUES (3, N'Vivo Hair Salon Devon St', N'55 Devon Street East, New Plymouth 4310, New Zealand', N'+64 6-759 4272', 1)
GO
INSERT [dbo].[Salons] ([Id], [SalonName], [Address], [Phone], [RegionID]) VALUES (4, N'The Salon - Rotorua', N'1151 Hinemoa Street, Central Business District, Rotorua 3010, New Zealand', N' +64 7-343 9585', 10)
GO
INSERT [dbo].[Salons] ([Id], [SalonName], [Address], [Phone], [RegionID]) VALUES (5, N'The Salon - Rotorua', N'1151 Hinemoa Street, Central Business District, Rotorua 3010, New Zealand', N' +64 7-343 9585', 10)
GO
INSERT [dbo].[Salons] ([Id], [SalonName], [Address], [Phone], [RegionID]) VALUES (6, N'Vivo Hair Salon Dixon Street', N'115 Dixon Street, Te Aro, Wellington 6011, New Zealand', N'+64 4-385 0855', 7)
GO
SET IDENTITY_INSERT [dbo].[Salons] OFF
GO
