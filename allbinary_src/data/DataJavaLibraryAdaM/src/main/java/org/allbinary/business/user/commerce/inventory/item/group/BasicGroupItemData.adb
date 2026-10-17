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


package body org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package is

   procedure Initialize_Fields (This : in out BasicGroupItemData'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicGroupItemData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicGroupItemData_Access is
      This : constant BasicGroupItemData_Access := new BasicGroupItemData;
   begin
      Initialize (This.all);
      return This;
   end Create;


begin
   null;
   ITEM_ONE := To_Unbounded_String ("BASICGROUPITEM_ONE");
   ITEM_TWO := To_Unbounded_String ("BASICGROUPITEM_TWO");
   ITEM_THREE := To_Unbounded_String ("BASICGROUPITEM_THREE");
   ITEM_FOUR := To_Unbounded_String ("BASICGROUPITEM_FOUR");
   ITEM_FIVE := To_Unbounded_String ("BASICGROUPITEM_FIVE");
   ITEM_SIX := To_Unbounded_String ("BASICGROUPITEM_SIX");
   ITEM_SEVEN := To_Unbounded_String ("BASICGROUPITEM_SEVEN");
   ITEM_EIGHT := To_Unbounded_String ("BASICGROUPITEM_EIGHT");
   ITEM_NINE := To_Unbounded_String ("BASICGROUPITEM_NINE");
   ITEM_TEN := To_Unbounded_String ("BASICGROUPITEM_TEN");

end org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package;


