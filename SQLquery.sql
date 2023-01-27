//fetchAddSneaker

//brandNames
SELECT BrandName 
From Technology;

//technologyObjs
SELECT Name, BrandName 
From Technology;

//ambassadors
SELECT ID, Name
From Ambassador;

//designers
SELECT ID, Name
From Designer;

//colorway
SELECT Name, Story
From Colorway;

// SQL query on brandName, productName, colorwayNames, technologyNames, designerID, designerName for 
// TeamProductHasColorway, TeamProductUseTechnology, TeamProductHasTrademark and TeamProductDesignedBy

//brandName
SELECT BrandName
FROM TeamProduct
WHERE BrandName = "<brandName>";

//productName
SELECT Name
FROM TeamProduct
WHERE Name = "<productName>";

//colorwayNames
SELECT ColorwayName
FROM ProductColorway
WHERE BrandName = "<brandName>" and ProductName = "<productName>";

//technologyNames
SELECT TechnologyName
FROM TPUseTechnology
WHERE BrandName = "<brandName>" and ProductName = "<productName>";

//designerID, name
SELECT d.ID, d.Name
FROM Designer d, TeamProduct tp
WHERE tp.DesignerID = d.ID and tp.BrandName = "<brandName>" and tp.Name = "<productName>";


// TODO: SQL query on brandName, productName, colorwayNames, technologyNames, trademark, designer's ID, name, ambassador's ID, name, demand from 
// SignatureProductHasColorway, SignatureProductUseTechnology, SignatureProductHasTrademark, SignatureProductDesignedBy, AmbassadorDemandTechUse

//brandName
SELECT BrandName
FROM SignatureProduct
WHERE BrandName = "<brandName>";

//productName
SELECT Name
FROM SignatureProduct
WHERE Name = "<productName>";

//colorwayNames
SELECT ColorwayName
FROM ProductColorway
WHERE BrandName = "<brandName>" and ProductName = "<productName>";

//technologyNames
SELECT TechnologyName
FROM SPUseTechnology
WHERE BrandName = "<brandName>" and ProductName = "<productName>";

//designerID, name
SELECT d.ID, d.Name
FROM Designer d, SignatureProduct sp
WHERE sp.DesignerID = d.ID and sp.BrandName = "<brandName>" and sp.Name = "<productName>";

//ambassador's ID, name
SELECT a.ID, a.Name, ad.DemandDescription
FROM Ambassador a, AmbassadorDemandSPTechUse ad
WHERE a.ID = ad.AmbassadorID and ad.SPName = "<productName>" and ad.brandName = "<brandName>";


//group by (optional having)
SELECT Count(Name), BrandName
FROM Product
GROUP BY BrandName
//HAVING COUNT(Name) > "<USER INPUT>";