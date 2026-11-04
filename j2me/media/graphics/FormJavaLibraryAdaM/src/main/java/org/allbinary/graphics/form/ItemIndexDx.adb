-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;

package body org.allbinary.graphics.form.ItemIndexDx_Package is

   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   function "=" (Left, Right : ABCustomItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   function "=" (Left, Right : ABCustomItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   function "=" (Left, Right : ABCustomItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomItem_Package_References."=";
   procedure Initialize_Fields (This : in out ItemIndexDx'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ItemIndexDx'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ItemIndexDx_Access is
      This : constant ItemIndexDx_Access := new ItemIndexDx;
   begin
      ItemIndexDx_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ItemIndexDx_Access is
   begin
        return ItemIndexDx_Access (ItemIndexDx_Package.instance);
   end getInstance;

   --  throws Exception
   function getDx (This : in out ItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        return 0;
   end getDx;

   procedure getDx (This : in out ItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ItemIndexDx'Class (This).getDx (index => index, item_Param => item_Param, dx => dx, dy => dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

begin
   null;
   instance := ItemIndexDx_Package.Create;

end org.allbinary.graphics.form.ItemIndexDx_Package;


