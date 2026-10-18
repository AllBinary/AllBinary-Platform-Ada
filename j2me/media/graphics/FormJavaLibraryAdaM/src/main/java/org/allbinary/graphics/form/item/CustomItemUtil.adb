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



package body org.allbinary.graphics.form.item.CustomItemUtil_Package is

   procedure Initialize_Fields (This : in out CustomItemUtil'Class) is
   begin
      null;
      This.CUSTOM_ITEM_ARRAY := new ABCustomItem_Access_Array'(0 .. (0) - 1 => null);
   end Initialize_Fields;

   procedure Initialize (This : in out CustomItemUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CustomItemUtil_Access is
      This : constant CustomItemUtil_Access := new CustomItemUtil;
   begin
      CustomItemUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CustomItemUtil_Access is
   begin
        return CustomItemUtil_Package.instance;
   end getInstance;

begin
   null;
   instance := CustomItemUtil_Package.Create;

end org.allbinary.graphics.form.item.CustomItemUtil_Package;


