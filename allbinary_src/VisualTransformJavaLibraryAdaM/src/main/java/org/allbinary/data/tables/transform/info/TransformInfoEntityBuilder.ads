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
limited with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
package org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References is
   type TransformInfoEntityBuilder_Access is access all org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package.TransformInfoEntityBuilder'Class;
   type TransformInfoEntityBuilder_Access_Array is array (Natural range <>) of TransformInfoEntityBuilder_Access;
   type TransformInfoEntityBuilder_Access_Array_Access is access all TransformInfoEntityBuilder_Access_Array;
   type TransformInfoEntityBuilder_Access_Array_Access_Array is array (Natural range <>) of TransformInfoEntityBuilder_Access_Array_Access;
   type TransformInfoEntityBuilder_Access_Array_Access_Array_Access is access all TransformInfoEntityBuilder_Access_Array_Access_Array;
   type TransformInfoEntityBuilder_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoEntityBuilder_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoEntityBuilder_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoEntityBuilder_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoEntityBuilder_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoEntityBuilder_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoEntityBuilder_Access_Array_Object'Class then TransformInfoEntityBuilder_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoEntityBuilder_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoEntityBuilder_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoEntityBuilder_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoEntityBuilder_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoEntityBuilder_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoEntityBuilder_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoEntityBuilder_Access_Array_Access_Array_Object'Class then TransformInfoEntityBuilder_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References;

with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References;

package org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package is

   package Reference_Types is
   subtype TransformInfoEntity_Access is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access;
   use type TransformInfoEntity_Access;
   subtype TransformInfoEntity_Access_Array is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array;
   use type TransformInfoEntity_Access_Array;
   subtype TransformInfoEntity_Access_Array_Access is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array_Access;
   use type TransformInfoEntity_Access_Array_Access;
   subtype TransformInfoEntity_Access_Array_Access_Array is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array_Access_Array;
   use type TransformInfoEntity_Access_Array_Access_Array;
   subtype TransformInfoEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.transform.info.TransformInfoEntity_Package_References.TransformInfoEntity_Access_Array_Access_Array_Access;
   use type TransformInfoEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoEntityBuilder_Access is org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References.TransformInfoEntityBuilder_Access;
   function "=" (Left, Right : TransformInfoEntityBuilder_Access) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References."=";
   subtype TransformInfoEntityBuilder_Access_Array is org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References.TransformInfoEntityBuilder_Access_Array;
   function "=" (Left, Right : TransformInfoEntityBuilder_Access_Array) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References."=";
   subtype TransformInfoEntityBuilder_Access_Array_Access is org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References.TransformInfoEntityBuilder_Access_Array_Access;
   function "=" (Left, Right : TransformInfoEntityBuilder_Access_Array_Access) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References."=";
   function Java_Box (Value : TransformInfoEntityBuilder_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References.Java_Box;
   function Java_Unbox_TransformInfoEntityBuilder_Access_Array (Value : access Java_Object'Class) return TransformInfoEntityBuilder_Access_Array_Access renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References.Java_Unbox_TransformInfoEntityBuilder_Access_Array;
   subtype TransformInfoEntityBuilder_Access_Array_Access_Array is org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References.TransformInfoEntityBuilder_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoEntityBuilder_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References."=";
   subtype TransformInfoEntityBuilder_Access_Array_Access_Array_Access is org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References.TransformInfoEntityBuilder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoEntityBuilder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References."=";
   function Java_Box (Value : TransformInfoEntityBuilder_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References.Java_Box;
   function Java_Unbox_TransformInfoEntityBuilder_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoEntityBuilder_Access_Array_Access_Array_Access renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package_References.Java_Unbox_TransformInfoEntityBuilder_Access_Array_Access_Array;

   type TransformInfoEntityBuilder is new Java_Object with null record;

   procedure Initialize (This : in out TransformInfoEntityBuilder'Class);
   function Create return TransformInfoEntityBuilder_Access;
   function getInstance return TransformInfoEntity_Access;

end org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;


