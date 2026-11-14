-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
limited with org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package;
package org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References is
   type IdGeneratorEntityFactory_Access is access all org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package.IdGeneratorEntityFactory'Class;
   type IdGeneratorEntityFactory_Access_Array is array (Natural range <>) of IdGeneratorEntityFactory_Access;
   type IdGeneratorEntityFactory_Access_Array_Access is access all IdGeneratorEntityFactory_Access_Array;
   type IdGeneratorEntityFactory_Access_Array_Access_Array is array (Natural range <>) of IdGeneratorEntityFactory_Access_Array_Access;
   type IdGeneratorEntityFactory_Access_Array_Access_Array_Access is access all IdGeneratorEntityFactory_Access_Array_Access_Array;
   type IdGeneratorEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IdGeneratorEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : IdGeneratorEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IdGeneratorEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IdGeneratorEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IdGeneratorEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in IdGeneratorEntityFactory_Access_Array_Object'Class then IdGeneratorEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type IdGeneratorEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IdGeneratorEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IdGeneratorEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IdGeneratorEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IdGeneratorEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IdGeneratorEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IdGeneratorEntityFactory_Access_Array_Access_Array_Object'Class then IdGeneratorEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References;

with org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package;
with org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References;

package org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package is

   package Reference_Types is
   subtype IdGeneratorEntityInterface_Access is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access;
   use type IdGeneratorEntityInterface_Access;
   subtype IdGeneratorEntityInterface_Access_Array is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access_Array;
   use type IdGeneratorEntityInterface_Access_Array;
   subtype IdGeneratorEntityInterface_Access_Array_Access is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access_Array_Access;
   use type IdGeneratorEntityInterface_Access_Array_Access;
   subtype IdGeneratorEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access_Array_Access_Array;
   use type IdGeneratorEntityInterface_Access_Array_Access_Array;
   subtype IdGeneratorEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package_References.IdGeneratorEntityInterface_Access_Array_Access_Array_Access;
   use type IdGeneratorEntityInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype IdGeneratorEntityFactory_Access is org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References.IdGeneratorEntityFactory_Access;
   function "=" (Left, Right : IdGeneratorEntityFactory_Access) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References."=";
   subtype IdGeneratorEntityFactory_Access_Array is org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References.IdGeneratorEntityFactory_Access_Array;
   function "=" (Left, Right : IdGeneratorEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References."=";
   subtype IdGeneratorEntityFactory_Access_Array_Access is org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References.IdGeneratorEntityFactory_Access_Array_Access;
   function "=" (Left, Right : IdGeneratorEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References."=";
   function Java_Box (Value : IdGeneratorEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References.Java_Box;
   function Java_Unbox_IdGeneratorEntityFactory_Access_Array (Value : access Java_Object'Class) return IdGeneratorEntityFactory_Access_Array_Access renames org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References.Java_Unbox_IdGeneratorEntityFactory_Access_Array;
   subtype IdGeneratorEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References.IdGeneratorEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : IdGeneratorEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References."=";
   subtype IdGeneratorEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References.IdGeneratorEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IdGeneratorEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References."=";
   function Java_Box (Value : IdGeneratorEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References.Java_Box;
   function Java_Unbox_IdGeneratorEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return IdGeneratorEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package_References.Java_Unbox_IdGeneratorEntityFactory_Access_Array_Access_Array;

   type IdGeneratorEntityFactory is new Java_Object with null record;

   procedure Initialize (This : in out IdGeneratorEntityFactory'Class);
   function Create return IdGeneratorEntityFactory_Access;
   function getInstance return IdGeneratorEntityInterface_Access;

end org.allbinary.data.tables.generator.IdGeneratorEntityFactory_Package;


