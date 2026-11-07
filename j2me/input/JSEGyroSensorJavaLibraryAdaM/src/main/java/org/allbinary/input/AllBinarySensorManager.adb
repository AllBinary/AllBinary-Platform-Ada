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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.input.AllBinarySensorManager_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out AllBinarySensorManager'Class) is
   begin
      null;
      This.ORIENTATION_SENSOR_INPUT := To_Unbounded_String ("Orientation Sensor Input");
      This.ORIENTATION_TYPE := To_Unbounded_String ("Orientation Type");
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   function getInstance return AllBinarySensorManager_Access is
   begin
        if (AllBinarySensorManager_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AllBinarySensorManager_Package.instance := Java_Object_Access (AllBinarySensorManager_Package.Create);
        end if;
        return AllBinarySensorManager_Access (AllBinarySensorManager_Package.instance);
   end getInstance;

   procedure Initialize (This : in out AllBinarySensorManager'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinarySensorManager_Access is
      This : constant AllBinarySensorManager_Access := new AllBinarySensorManager;
   begin
      AllBinarySensorManager_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out AllBinarySensorManager) is
   begin
        null;
   end init;

   function getSensorNamesList (This : in out AllBinarySensorManager) return BasicArrayList_Access is
   begin
        return This.list;
   end getSensorNamesList;

   procedure shutdown (This : in out AllBinarySensorManager) is
   begin
        null;
   end shutdown;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.AllBinarySensorManager_Package;


