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
limited with org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References is
   type TransformInfoData_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoData_Package.TransformInfoData'Class;
   type TransformInfoData_Access_Array is array (Natural range <>) of TransformInfoData_Access;
   type TransformInfoData_Access_Array_Access is access all TransformInfoData_Access_Array;
   type TransformInfoData_Access_Array_Access_Array is array (Natural range <>) of TransformInfoData_Access_Array_Access;
   type TransformInfoData_Access_Array_Access_Array_Access is access all TransformInfoData_Access_Array_Access_Array;
   type TransformInfoData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoData_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoData_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoData_Access_Array_Object'Class then TransformInfoData_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoData_Access_Array_Access_Array_Object'Class then TransformInfoData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.info.TransformInfoData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoData_Access is org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References.TransformInfoData_Access;
   function "=" (Left, Right : TransformInfoData_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References."=";
   subtype TransformInfoData_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References.TransformInfoData_Access_Array;
   function "=" (Left, Right : TransformInfoData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References."=";
   subtype TransformInfoData_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References.TransformInfoData_Access_Array_Access;
   function "=" (Left, Right : TransformInfoData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References."=";
   function Java_Box (Value : TransformInfoData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References.Java_Box;
   function Java_Unbox_TransformInfoData_Access_Array (Value : access Java_Object'Class) return TransformInfoData_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References.Java_Unbox_TransformInfoData_Access_Array;
   subtype TransformInfoData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References.TransformInfoData_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References."=";
   subtype TransformInfoData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References.TransformInfoData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References."=";
   function Java_Box (Value : TransformInfoData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References.Java_Box;
   function Java_Unbox_TransformInfoData_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package_References.Java_Unbox_TransformInfoData_Access_Array_Access_Array;

   type TransformInfoData is new Java_Object with record
      PARENT : Unbounded_String;
      MAPPED : Unbounded_String;
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
      CATEGORY : Unbounded_String;
      OBJECTFILENAME : Unbounded_String;
      OBJECT : Unbounded_String;
      OBJECTCONFIGFILENAME : Unbounded_String;
      OBJECTCONFIG : Unbounded_String;
      TEMPLATEFILENAME : Unbounded_String;
      TEMPLATE : Unbounded_String;
      DATAFILENAME : Unbounded_String;
      DATA : Unbounded_String;
      LABEL : Unbounded_String;
      OWNER : Unbounded_String;
      PARTIAL : Unbounded_String;
   end record;
   instance : TransformInfoData_Access;

   procedure Initialize (This : in out TransformInfoData'Class);
   function Create return TransformInfoData_Access;
   function getInstance return TransformInfoData_Access;

end org.allbinary.logic.visual.transform.info.TransformInfoData_Package;


