--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--   
--  Generated Code Do Not Modify


package body org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package is

   procedure Initialize_Fields (This : in out BasicItemData'Class) is
   begin
      null;
      This.ITEM := To_Unbounded_String ("BASICITEM");
      This.TOTAL := To_Unbounded_String ("BASICITEM_TOTAL");
      This.ID := To_Unbounded_String ("BASICITEM_ID");
      This.NUMBER := To_Unbounded_String ("BASICITEM_NUMBER");
      This.INBASKETS := To_Unbounded_String ("BASICITEM_IN_BASKETS");
      This.WEIGHT := To_Unbounded_String ("BASICITEM_WEIGHT");
      This.NEWORUSED := To_Unbounded_String ("BASICITEM_NEW_OR_USED");
      This.SUMMARY := To_Unbounded_String ("BASICITEM_SUMMARY");
      This.DISTRIBUTOR := To_Unbounded_String ("BASICITEM_DISTRIBUTOR");
      This.IDUSEDBYDISTRIBUTOR := To_Unbounded_String ("BASICITEM_IDUSEDBYDISTRIBUTOR");
      This.PRODUCEDBY := To_Unbounded_String ("BASICITEM_PRODUCEDBY");
      This.PRODUCTIONDATE := To_Unbounded_String ("BASICITEM_PRODUCTIONDATE");
      This.STARTPRODUCTIONDATE := To_Unbounded_String ("BASICITEM_STARTPRODUCTIONDATE");
      This.DESCRIPTION := To_Unbounded_String ("BASICITEM_DESCRIPTION");
      This.KEYWORDS := To_Unbounded_String ("BASICITEM_KEYWORDS");
      This.CATEGORY := To_Unbounded_String ("BASICITEM_CATEGORY");
      This.TYPE_Id := To_Unbounded_String ("BASICITEM_TYPE");
      This.IMAGE := To_Unbounded_String ("BASICITEM_IMG");
      This.SMALLIMAGE := To_Unbounded_String ("BASICITEM_SMALL_IMG");
      This.MEDIUMIMAGE := To_Unbounded_String ("BASICITEM_MEDIUM_IMG");
      This.LARGEIMAGE := To_Unbounded_String ("BASICITEM_LARGE_IMG");
      This.PRICE := To_Unbounded_String ("BASICITEM_PRICE");
      This.COMMENT := To_Unbounded_String ("BASICITEM_COMMENT");
      This.CUSTOMS := To_Unbounded_String ("BASICITEM_CUSTOMS");
      This.DOWNLOADS := To_Unbounded_String ("BASICITEM_DOWNLOADS");
      This.GROUPS := To_Unbounded_String ("BASICITEM_GROUPS");
      This.OPTIONS := To_Unbounded_String ("BASICITEM_OPTIONS");
      This.PERMISSIONS := To_Unbounded_String ("BASICITEM_PERMISSIONS");
      This.SPECIALS := To_Unbounded_String ("BASICITEM_SPECIALS");
   end Initialize_Fields;

   procedure Initialize (This : in out BasicItemData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicItemData_Access is
      This : constant BasicItemData_Access := new BasicItemData;
   begin
      BasicItemData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicItemData_Access is
   begin
        return BasicItemData_Package.instance;
   end getInstance;

begin
   null;
   instance := BasicItemData_Package.Create;

end org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;


