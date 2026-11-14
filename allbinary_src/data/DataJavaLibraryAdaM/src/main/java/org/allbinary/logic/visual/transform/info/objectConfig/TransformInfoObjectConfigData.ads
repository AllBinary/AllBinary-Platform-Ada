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
limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References is
   type TransformInfoObjectConfigData_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package.TransformInfoObjectConfigData'Class;
   type TransformInfoObjectConfigData_Access_Array is array (Natural range <>) of TransformInfoObjectConfigData_Access;
   type TransformInfoObjectConfigData_Access_Array_Access is access all TransformInfoObjectConfigData_Access_Array;
   type TransformInfoObjectConfigData_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigData_Access_Array_Access;
   type TransformInfoObjectConfigData_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigData_Access_Array_Access_Array;
   type TransformInfoObjectConfigData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectConfigData_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectConfigData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectConfigData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectConfigData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectConfigData_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectConfigData_Access_Array_Object'Class then TransformInfoObjectConfigData_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoObjectConfigData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoObjectConfigData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoObjectConfigData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoObjectConfigData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoObjectConfigData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoObjectConfigData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoObjectConfigData_Access_Array_Access_Array_Object'Class then TransformInfoObjectConfigData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoObjectConfigData_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References.TransformInfoObjectConfigData_Access;
   function "=" (Left, Right : TransformInfoObjectConfigData_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References."=";
   subtype TransformInfoObjectConfigData_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References.TransformInfoObjectConfigData_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigData_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References."=";
   subtype TransformInfoObjectConfigData_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References.TransformInfoObjectConfigData_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References."=";
   function Java_Box (Value : TransformInfoObjectConfigData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectConfigData_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectConfigData_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References.Java_Unbox_TransformInfoObjectConfigData_Access_Array;
   subtype TransformInfoObjectConfigData_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References.TransformInfoObjectConfigData_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References."=";
   subtype TransformInfoObjectConfigData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References.TransformInfoObjectConfigData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References."=";
   function Java_Box (Value : TransformInfoObjectConfigData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References.Java_Box;
   function Java_Unbox_TransformInfoObjectConfigData_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoObjectConfigData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package_References.Java_Unbox_TransformInfoObjectConfigData_Access_Array_Access_Array;

   type TransformInfoObjectConfigData is new Java_Object with record
      NAME : Unbounded_String;
      VARKEY : Unbounded_String;
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : TransformInfoObjectConfigData_Access;

   procedure Initialize (This : in out TransformInfoObjectConfigData'Class);
   function Create return TransformInfoObjectConfigData_Access;
   function getInstance return TransformInfoObjectConfigData_Access;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;


