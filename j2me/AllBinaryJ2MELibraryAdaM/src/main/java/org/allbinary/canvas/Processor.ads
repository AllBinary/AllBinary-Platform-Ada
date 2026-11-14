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
limited with org.allbinary.canvas.Processor_Package;
package org.allbinary.canvas.Processor_Package_References is
   type Processor_Access is access all org.allbinary.canvas.Processor_Package.Processor'Class;
   type Processor_Access_Array is array (Natural range <>) of Processor_Access;
   type Processor_Access_Array_Access is access all Processor_Access_Array;
   type Processor_Access_Array_Access_Array is array (Natural range <>) of Processor_Access_Array_Access;
   type Processor_Access_Array_Access_Array_Access is access all Processor_Access_Array_Access_Array;
   type Processor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Processor_Access_Array_Access;
   end record;
   function Java_Box (Value : Processor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Processor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Processor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Processor_Access_Array_Access is (if Value /= null and then Value.all in Processor_Access_Array_Object'Class then Processor_Access_Array_Object'Class (Value.all).Value else null);
   type Processor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Processor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Processor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Processor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Processor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Processor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Processor_Access_Array_Access_Array_Object'Class then Processor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.canvas.Processor_Package_References;

with org.allbinary.canvas.Processor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.canvas.Processor_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   function "=" (Left, Right : Processor_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   function "=" (Left, Right : Processor_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   function Java_Box (Value : Processor_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.Processor_Package_References.Java_Box;
   function Java_Unbox_Processor_Access_Array (Value : access Java_Object'Class) return Processor_Access_Array_Access renames org.allbinary.canvas.Processor_Package_References.Java_Unbox_Processor_Access_Array;
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   function "=" (Left, Right : Processor_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   function Java_Box (Value : Processor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.Processor_Package_References.Java_Box;
   function Java_Unbox_Processor_Access_Array_Access_Array (Value : access Java_Object'Class) return Processor_Access_Array_Access_Array_Access renames org.allbinary.canvas.Processor_Package_References.Java_Unbox_Processor_Access_Array_Access_Array;

   type Processor is new Java_Object with null record;
   SINGLETON : Processor_Access;

   procedure Initialize (This : in out Processor'Class);
   function Create return Processor_Access;
   function getInstance return Processor_Access;
   procedure process (This : in out Processor);
   procedure processt (This : in out Processor; timeDelta : Long_Long_Integer);

end org.allbinary.canvas.Processor_Package;


