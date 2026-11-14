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
limited with org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package;
package org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References is
   type CustomTransformInfo_Access is access all org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package.CustomTransformInfo'Class;
   type CustomTransformInfo_Access_Array is array (Natural range <>) of CustomTransformInfo_Access;
   type CustomTransformInfo_Access_Array_Access is access all CustomTransformInfo_Access_Array;
   type CustomTransformInfo_Access_Array_Access_Array is array (Natural range <>) of CustomTransformInfo_Access_Array_Access;
   type CustomTransformInfo_Access_Array_Access_Array_Access is access all CustomTransformInfo_Access_Array_Access_Array;
   type CustomTransformInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTransformInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTransformInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTransformInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTransformInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTransformInfo_Access_Array_Access is (if Value /= null and then Value.all in CustomTransformInfo_Access_Array_Object'Class then CustomTransformInfo_Access_Array_Object'Class (Value.all).Value else null);
   type CustomTransformInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomTransformInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomTransformInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomTransformInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomTransformInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomTransformInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomTransformInfo_Access_Array_Access_Array_Object'Class then CustomTransformInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References;

with org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.visual.transform.info.TransformInfo_Package; use org.allbinary.logic.visual.transform.info.TransformInfo_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CustomTransformInfo_Access is org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References.CustomTransformInfo_Access;
   function "=" (Left, Right : CustomTransformInfo_Access) return Boolean renames org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References."=";
   subtype CustomTransformInfo_Access_Array is org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References.CustomTransformInfo_Access_Array;
   function "=" (Left, Right : CustomTransformInfo_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References."=";
   subtype CustomTransformInfo_Access_Array_Access is org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References.CustomTransformInfo_Access_Array_Access;
   function "=" (Left, Right : CustomTransformInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References."=";
   function Java_Box (Value : CustomTransformInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References.Java_Box;
   function Java_Unbox_CustomTransformInfo_Access_Array (Value : access Java_Object'Class) return CustomTransformInfo_Access_Array_Access renames org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References.Java_Unbox_CustomTransformInfo_Access_Array;
   subtype CustomTransformInfo_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References.CustomTransformInfo_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTransformInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References."=";
   subtype CustomTransformInfo_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References.CustomTransformInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTransformInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References."=";
   function Java_Box (Value : CustomTransformInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References.Java_Box;
   function Java_Unbox_CustomTransformInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomTransformInfo_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package_References.Java_Unbox_CustomTransformInfo_Access_Array_Access_Array;

   type CustomTransformInfo is new TransformInfo and TransformInfoInterface with null record;

   procedure Initialize (This : in out CustomTransformInfo'Class; outputTypeName : Unbounded_String; inputOutputTypeName : Unbounded_String; inputOutputTypeFile : Unbounded_String; name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String);
   function Create (outputTypeName : Unbounded_String; inputOutputTypeName : Unbounded_String; inputOutputTypeFile : Unbounded_String; name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String) return CustomTransformInfo_Access;

end org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package;


