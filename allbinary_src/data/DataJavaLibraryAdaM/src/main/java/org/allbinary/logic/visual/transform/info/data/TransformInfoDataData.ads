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
limited with org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package;
package org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References is
   type TransformInfoDataData_Access is access all org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package.TransformInfoDataData'Class;
   type TransformInfoDataData_Access_Array is array (Natural range <>) of TransformInfoDataData_Access;
   type TransformInfoDataData_Access_Array_Access is access all TransformInfoDataData_Access_Array;
   type TransformInfoDataData_Access_Array_Access_Array is array (Natural range <>) of TransformInfoDataData_Access_Array_Access;
   type TransformInfoDataData_Access_Array_Access_Array_Access is access all TransformInfoDataData_Access_Array_Access_Array;
   type TransformInfoDataData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoDataData_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoDataData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoDataData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoDataData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoDataData_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoDataData_Access_Array_Object'Class then TransformInfoDataData_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoDataData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoDataData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoDataData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoDataData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoDataData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoDataData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoDataData_Access_Array_Access_Array_Object'Class then TransformInfoDataData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References;

with org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoDataData_Access is org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References.TransformInfoDataData_Access;
   function "=" (Left, Right : TransformInfoDataData_Access) return Boolean renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References."=";
   subtype TransformInfoDataData_Access_Array is org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References.TransformInfoDataData_Access_Array;
   function "=" (Left, Right : TransformInfoDataData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References."=";
   subtype TransformInfoDataData_Access_Array_Access is org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References.TransformInfoDataData_Access_Array_Access;
   function "=" (Left, Right : TransformInfoDataData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References."=";
   function Java_Box (Value : TransformInfoDataData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References.Java_Box;
   function Java_Unbox_TransformInfoDataData_Access_Array (Value : access Java_Object'Class) return TransformInfoDataData_Access_Array_Access renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References.Java_Unbox_TransformInfoDataData_Access_Array;
   subtype TransformInfoDataData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References.TransformInfoDataData_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoDataData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References."=";
   subtype TransformInfoDataData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References.TransformInfoDataData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoDataData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References."=";
   function Java_Box (Value : TransformInfoDataData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References.Java_Box;
   function Java_Unbox_TransformInfoDataData_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoDataData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package_References.Java_Unbox_TransformInfoDataData_Access_Array_Access_Array;

   type TransformInfoDataData is new Java_Object with record
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : TransformInfoDataData_Access;

   procedure Initialize (This : in out TransformInfoDataData'Class);
   function Create return TransformInfoDataData_Access;
   function getInstance return TransformInfoDataData_Access;

end org.allbinary.logic.visual.transform.info.data.TransformInfoDataData_Package;


