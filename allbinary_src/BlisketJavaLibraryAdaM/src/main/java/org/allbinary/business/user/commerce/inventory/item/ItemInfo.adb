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


package body org.allbinary.business.user.commerce.inventory.item.ItemInfo_Package is

   procedure Initialize_Fields (This : in out ItemInfo'Class) is
   begin
      null;
      This.type_Id := null;
      This.view := null;
      This.data := null;
      This.creationDate := null;
      This.lastModified := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ItemInfo'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ItemInfo_Access is
      This : constant ItemInfo_Access := new ItemInfo;
   begin
      ItemInfo_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.business.user.commerce.inventory.item.ItemInfo_Package;


