

select *from sys.foreign_keys  --foreign keys bulma 

select * from sys.foreign_keys
where
 parent_object_id = OBJECT_ID('UmMukellefIsYeri') -- Referring SQL Table
 and type = 'F' -- Check Constraint


 ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

 select * from sys.foreign_keys
where
 referenced_object_id = OBJECT_ID('UmMukellefIsYeri') -- Referenced SQL table
 and type = 'F' -- Check Constraint



ALTER TABLE [dbo].[UmMukellefIsYeri]  WITH CHECK ADD  CONSTRAINT [FK_UmMukellefIsYeri_UmMukellef_MukellefId] FOREIGN KEY([MukellefId])
REFERENCES [dbo].[UmMukellef] ([Id])
GO

ALTER TABLE [dbo].[UmMukellefReport]  WITH CHECK ADD  CONSTRAINT [FK_UmMukellefReport_UmMuhasebeciDosya_DosyaTipiId] FOREIGN KEY([DosyaTipiId])
REFERENCES [dbo].[UmMuhasebeciDosya] ([Id])
GO


ALTER TABLE UmMukellefIsYeri
ADD FOREIGN KEY (MukellefId) REFERENCES UmMukellef(MukellefId);

select *from UmMuhasebeciDosyaTipi


select *from UmMukellefSozlesmeDetay

select *from UmMukellef


ALTER TABLE UmMukellefReport
ADD FOREIGN KEY (DosyaTipiId) REFERENCES UmMuhasebeciDosya(DosyaTipiId);

ALTER TABLE UmMukellefIsYeri
ADD CONSTRAINT FK_UmMukellef
FOREIGN KEY (MukellefId)
REFERENCES UmMukellef(MukellefId)

ALTER TABLE UmMukellefReport
ADD CONSTRAINT FK_UmMukellefReport
FOREIGN KEY (DosyaTipiId)
REFERENCES UmMuhasebeciDosya(DosyaTipiId)



ALTER TABLE UmMukellefSozlesmeDetay
ADD FOREIGN KEY (MukellefSozlesmeId) REFERENCES UmMukellefSozlesmeDetay(MukellefSozlesmeId);

ALTER TABLE [dbo].[UmMukellefSozlesmeDetay]  WITH CHECK ADD  CONSTRAINT [FK_UmMukellefSozlesmeDetay_Mukellef_MukellefId] FOREIGN KEY([MukellefId])
REFERENCES [dbo].[UmMukellefSozlesmeDetay] ([Id])
GO


ALTER TABLE dbo.UmMukellefSozlesmeDetay WITH CHECK ADD  CONSTRAINT [FK_UmMukellefSozlesmeDetay_MukellefSozlesme_MukellefSozlesmeId]
FOREIGN KEY(MukellefSozlesmeId) REFERENCES UmMukellefSozlesme([Id])


select *from UmMukellefSozlesmeDetay


ALTER TABLE UmMukellefSozlesmeDetay
ADD FOREIGN KEY (MukellefSozlesmeId) REFERENCES UmMukellefSozlesme(MukellefSozlesmeId);


ALTER TABLE UmMukellefFisFaturaDetay
ADD FOREIGN KEY (UmMukellefFisFaturaId) REFERENCES UmMukellefFisFaturaDetay(UmMukellefFisFaturaId);

ALTER TABLE UmMukellefFisFaturaDetay
ADD CONSTRAINT FK_UmMukellefFisFaturaDetay
FOREIGN KEY (FisFaturaDetayId) 
REFERENCES FisFaturaDetayId(FisFaturaDetayId);

--UmOkumaDurumu
ALTER TABLE UmOkumaDurum  --nereye 
ADD CONSTRAINT FK_UmOkumaDurum_UmMukellefFisFaturaDetay --isim
FOREIGN KEY (BelgeId)  
REFERENCES UmMukellefFisFaturaDetay(Id);

select *from sys.foreign_keys 

ALTER TABLE UmOkumaDurum  --nereye 
ADD CONSTRAINT FK_UmOkumaDurum_UmMukellefFisFaturaDetay --isim
FOREIGN KEY (BelgeId)  
REFERENCES UmMukellefFisFaturaDetay(Id);

ALTER TABLE UmOkumaDurum
DROP CONSTRAINT  FK_UmOkumaDurum_UmMukellefFisFaturaDetay

ALTER TABLE UmOkumaDurum  --nereye 
ADD CONSTRAINT FK_UmOkumaDurum_UmMukellefFisFaturaDetay_BelgeId --isim
FOREIGN KEY (BelgeId)  
REFERENCES UmMukellefFisFaturaDetay(Id);

--UmMukellefSozlesmeDetay
ALTER TABLE UmMukellefSozlesmeDetay  --nereye 
ADD CONSTRAINT FK_UmMukellefSozlesmeDetay_UmMukellefSozlesme_Id --isim
FOREIGN KEY (MukellefSozlesmeId)  
REFERENCES UmMukellefSozlesmeDetay(Id);

select *from UmMukellefSozlesme

select OId from UmMukellefSozlesme 

select *from UmMukellefSozlesme
select MukellefSozlesmeId from UmMukellefSozlesmeDetay

select MukellefId from UmMukellefSozlesme 

select MukellefSozlesmeId from UmMukellefSozlesmeDetay

select Id from UmMukellefSozlesme

--UmMukellefSozlesmeDetaydan islem ýd to UmOkumaDurum 

ALTER TABLE UmOkumaDurum  --nereye 
ADD CONSTRAINT FK_UmOkumaDurum_UmMukellefFisFaturaDetay_IslemId --isim
FOREIGN KEY (IslemId)  
REFERENCES UmMukellefFisFaturaDetay(Id);



