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
limited with org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
package org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References is
   type TransformInfosData_Access is access all org.allbinary.logic.visual.transform.info.TransformInfosData_Package.TransformInfosData'Class;
   type TransformInfosData_Access_Array is array (Natural range <>) of TransformInfosData_Access;
   type TransformInfosData_Access_Array_Access is access all TransformInfosData_Access_Array;
   type TransformInfosData_Access_Array_Access_Array is array (Natural range <>) of TransformInfosData_Access_Array_Access;
   type TransformInfosData_Access_Array_Access_Array_Access is access all TransformInfosData_Access_Array_Access_Array;
   type TransformInfosData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfosData_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfosData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfosData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfosData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfosData_Access_Array_Access is (if Value /= null and then Value.all in TransformInfosData_Access_Array_Object'Class then TransformInfosData_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfosData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfosData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfosData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfosData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfosData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfosData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfosData_Access_Array_Access_Array_Object'Class then TransformInfosData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.info.TransformInfosData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfosData_Access is org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References.TransformInfosData_Access;
   function "=" (Left, Right : TransformInfosData_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References."=";
   subtype TransformInfosData_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References.TransformInfosData_Access_Array;
   function "=" (Left, Right : TransformInfosData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References."=";
   subtype TransformInfosData_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References.TransformInfosData_Access_Array_Access;
   function "=" (Left, Right : TransformInfosData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References."=";
   function Java_Box (Value : TransformInfosData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References.Java_Box;
   function Java_Unbox_TransformInfosData_Access_Array (Value : access Java_Object'Class) return TransformInfosData_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References.Java_Unbox_TransformInfosData_Access_Array;
   subtype TransformInfosData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References.TransformInfosData_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfosData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References."=";
   subtype TransformInfosData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References.TransformInfosData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfosData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References."=";
   function Java_Box (Value : TransformInfosData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References.Java_Box;
   function Java_Unbox_TransformInfosData_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfosData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfosData_Package_References.Java_Unbox_TransformInfosData_Access_Array_Access_Array;

   type TransformInfosData is new Java_Object with record
      NAME : Unbounded_String;
      GROUP : Unbounded_String;
      ALL_Id : Unbounded_String;
      PREVIEW : Unbounded_String;
      SMALL_PREVIEW : Unbounded_String;
   end record;
   instance : TransformInfosData_Access;

   procedure Initialize (This : in out TransformInfosData'Class);
   function Create return TransformInfosData_Access;
   function getInstance return TransformInfosData_Access;

end org.allbinary.logic.visual.transform.info.TransformInfosData_Package;


