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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;

package body views.generic_Id.inventory.InventoryColumnUtil_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   procedure Initialize_Fields (This : in out InventoryColumnUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out InventoryColumnUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InventoryColumnUtil_Access is
      This : constant InventoryColumnUtil_Access := new InventoryColumnUtil;
   begin
      InventoryColumnUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InventoryColumnUtil_Access is
   begin
        return InventoryColumnUtil_Package.instance;
   end getInstance;

   function getColumnWhereLike (This : in out InventoryColumnUtil; inventoryEntity_Param : access InventoryEntity_Package.InventoryEntity'Class; category : Unbounded_String; column : Unbounded_String) return BasicArrayList_Access is
      inventoryEntity : constant InventoryEntity_Access := InventoryEntity_Access (inventoryEntity_Param);
      keywords : BasicArrayList_Access;
      vectorOfHashMaps : BasicArrayList_Access;
      size : Integer;
      hashMap : HashMap_Access;
      categoryName : Unbounded_String;
      index : Integer;
   begin
        This.logUtil.putF (To_Unbounded_String ("Start Category: ") & category, InventoryColumnUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getKeywords"));
        keywords := BasicArrayList_Access (BasicArrayListD_Package.Create);
        vectorOfHashMaps := inventoryEntity.getAllRows;
        size := vectorOfHashMaps.size;
        for index in 0 .. (size) - 1 loop
            hashMap := HashMap_Access (vectorOfHashMaps.get (index));
            categoryName := Java_Unbox (hashMap.get (This.basicItemData.CATEGORY));
            if (not (StringValidationUtil_Package.getInstance.isEmpty (categoryName))) and then (Java_Starts_With (categoryName, category)) then
                keywords.add (hashMap.get (Java_Box (column)));
            end if;
        end loop;
        return keywords;
   end getColumnWhereLike;

   procedure getColumnWhereLike (This : in out InventoryColumnUtil; inventoryEntity_Param : access InventoryEntity_Package.InventoryEntity'Class; category : Unbounded_String; column : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := InventoryColumnUtil'Class (This).getColumnWhereLike (inventoryEntity_Param => inventoryEntity_Param, category => category, column => column);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumnWhereLike;

begin
   null;
   instance := InventoryColumnUtil_Package.Create;

end views.generic_Id.inventory.InventoryColumnUtil_Package;


