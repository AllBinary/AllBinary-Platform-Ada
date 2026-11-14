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
limited with org.allbinary.data.generator.IdGeneratorInterface_Package;
package org.allbinary.data.generator.IdGeneratorInterface_Package_References is
   type IdGeneratorInterface_Access is access all org.allbinary.data.generator.IdGeneratorInterface_Package.IdGeneratorInterface'Class;
   type IdGeneratorInterface_Access_Array is array (Natural range <>) of IdGeneratorInterface_Access;
   type IdGeneratorInterface_Access_Array_Access is access all IdGeneratorInterface_Access_Array;
   type IdGeneratorInterface_Access_Array_Access_Array is array (Natural range <>) of IdGeneratorInterface_Access_Array_Access;
   type IdGeneratorInterface_Access_Array_Access_Array_Access is access all IdGeneratorInterface_Access_Array_Access_Array;
   type IdGeneratorInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IdGeneratorInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : IdGeneratorInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IdGeneratorInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IdGeneratorInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IdGeneratorInterface_Access_Array_Access is (if Value /= null and then Value.all in IdGeneratorInterface_Access_Array_Object'Class then IdGeneratorInterface_Access_Array_Object'Class (Value.all).Value else null);
   type IdGeneratorInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IdGeneratorInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IdGeneratorInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IdGeneratorInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IdGeneratorInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IdGeneratorInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IdGeneratorInterface_Access_Array_Access_Array_Object'Class then IdGeneratorInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.generator.IdGeneratorInterface_Package_References;

with org.allbinary.data.generator.IdGeneratorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;

package org.allbinary.data.generator.IdGeneratorInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type IdGeneratorInterface is interface;
   subtype IdGeneratorInterface_Access is org.allbinary.data.generator.IdGeneratorInterface_Package_References.IdGeneratorInterface_Access;
   function "=" (Left, Right : IdGeneratorInterface_Access) return Boolean renames org.allbinary.data.generator.IdGeneratorInterface_Package_References."=";
   subtype IdGeneratorInterface_Access_Array is org.allbinary.data.generator.IdGeneratorInterface_Package_References.IdGeneratorInterface_Access_Array;
   function "=" (Left, Right : IdGeneratorInterface_Access_Array) return Boolean renames org.allbinary.data.generator.IdGeneratorInterface_Package_References."=";
   subtype IdGeneratorInterface_Access_Array_Access is org.allbinary.data.generator.IdGeneratorInterface_Package_References.IdGeneratorInterface_Access_Array_Access;
   function "=" (Left, Right : IdGeneratorInterface_Access_Array_Access) return Boolean renames org.allbinary.data.generator.IdGeneratorInterface_Package_References."=";
   function Java_Box (Value : IdGeneratorInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.IdGeneratorInterface_Package_References.Java_Box;
   function Java_Unbox_IdGeneratorInterface_Access_Array (Value : access Java_Object'Class) return IdGeneratorInterface_Access_Array_Access renames org.allbinary.data.generator.IdGeneratorInterface_Package_References.Java_Unbox_IdGeneratorInterface_Access_Array;
   subtype IdGeneratorInterface_Access_Array_Access_Array is org.allbinary.data.generator.IdGeneratorInterface_Package_References.IdGeneratorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : IdGeneratorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.generator.IdGeneratorInterface_Package_References."=";
   subtype IdGeneratorInterface_Access_Array_Access_Array_Access is org.allbinary.data.generator.IdGeneratorInterface_Package_References.IdGeneratorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IdGeneratorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.generator.IdGeneratorInterface_Package_References."=";
   function Java_Box (Value : IdGeneratorInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.generator.IdGeneratorInterface_Package_References.Java_Box;
   function Java_Unbox_IdGeneratorInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return IdGeneratorInterface_Access_Array_Access_Array_Access renames org.allbinary.data.generator.IdGeneratorInterface_Package_References.Java_Unbox_IdGeneratorInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_IdGeneratorInterface (Value : IdGeneratorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getNext (This : in out IdGeneratorInterface) return Unbounded_String is abstract;

end org.allbinary.data.generator.IdGeneratorInterface_Package;


