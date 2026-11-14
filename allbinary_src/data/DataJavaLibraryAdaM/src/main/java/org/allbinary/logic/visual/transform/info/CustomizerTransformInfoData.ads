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

with AllBinary_Java;
limited with org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package;
package org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References is
   type CustomizerTransformInfoData_Access is access all org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package.CustomizerTransformInfoData'Class;
   type CustomizerTransformInfoData_Access_Array is array (Natural range <>) of CustomizerTransformInfoData_Access;
   type CustomizerTransformInfoData_Access_Array_Access is access all CustomizerTransformInfoData_Access_Array;
   type CustomizerTransformInfoData_Access_Array_Access_Array is array (Natural range <>) of CustomizerTransformInfoData_Access_Array_Access;
   type CustomizerTransformInfoData_Access_Array_Access_Array_Access is access all CustomizerTransformInfoData_Access_Array_Access_Array;
   type CustomizerTransformInfoData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomizerTransformInfoData_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomizerTransformInfoData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomizerTransformInfoData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomizerTransformInfoData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomizerTransformInfoData_Access_Array_Access is (if Value /= null and then Value.all in CustomizerTransformInfoData_Access_Array_Object'Class then CustomizerTransformInfoData_Access_Array_Object'Class (Value.all).Value else null);
   type CustomizerTransformInfoData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomizerTransformInfoData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomizerTransformInfoData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomizerTransformInfoData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomizerTransformInfoData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomizerTransformInfoData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomizerTransformInfoData_Access_Array_Access_Array_Object'Class then CustomizerTransformInfoData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References;

with org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CustomizerTransformInfoData_Access is org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References.CustomizerTransformInfoData_Access;
   function "=" (Left, Right : CustomizerTransformInfoData_Access) return Boolean renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References."=";
   subtype CustomizerTransformInfoData_Access_Array is org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References.CustomizerTransformInfoData_Access_Array;
   function "=" (Left, Right : CustomizerTransformInfoData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References."=";
   subtype CustomizerTransformInfoData_Access_Array_Access is org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References.CustomizerTransformInfoData_Access_Array_Access;
   function "=" (Left, Right : CustomizerTransformInfoData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References."=";
   function Java_Box (Value : CustomizerTransformInfoData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References.Java_Box;
   function Java_Unbox_CustomizerTransformInfoData_Access_Array (Value : access Java_Object'Class) return CustomizerTransformInfoData_Access_Array_Access renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References.Java_Unbox_CustomizerTransformInfoData_Access_Array;
   subtype CustomizerTransformInfoData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References.CustomizerTransformInfoData_Access_Array_Access_Array;
   function "=" (Left, Right : CustomizerTransformInfoData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References."=";
   subtype CustomizerTransformInfoData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References.CustomizerTransformInfoData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomizerTransformInfoData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References."=";
   function Java_Box (Value : CustomizerTransformInfoData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References.Java_Box;
   function Java_Unbox_CustomizerTransformInfoData_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomizerTransformInfoData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package_References.Java_Unbox_CustomizerTransformInfoData_Access_Array_Access_Array;

   type CustomizerTransformInfoData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out CustomizerTransformInfoData'Class);
   function Create return CustomizerTransformInfoData_Access;

end org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package;


