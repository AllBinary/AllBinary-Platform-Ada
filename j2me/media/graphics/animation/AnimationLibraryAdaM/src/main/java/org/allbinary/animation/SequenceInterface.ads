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

limited with org.allbinary.animation.SequenceInterface_Package;
package org.allbinary.animation.SequenceInterface_Package_References is
   type SequenceInterface_Access is access all org.allbinary.animation.SequenceInterface_Package.SequenceInterface'Class;
   type SequenceInterface_Access_Array is array (Natural range <>) of SequenceInterface_Access;
   type SequenceInterface_Access_Array_Access is access all SequenceInterface_Access_Array;
   type SequenceInterface_Access_Array_Access_Array is array (Natural range <>) of SequenceInterface_Access_Array_Access;
   type SequenceInterface_Access_Array_Access_Array_Access is access all SequenceInterface_Access_Array_Access_Array;
end org.allbinary.animation.SequenceInterface_Package_References;

with org.allbinary.animation.SequenceInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.SequenceInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type SequenceInterface is interface;
   subtype SequenceInterface_Access is org.allbinary.animation.SequenceInterface_Package_References.SequenceInterface_Access;
   function "=" (Left, Right : SequenceInterface_Access) return Boolean renames org.allbinary.animation.SequenceInterface_Package_References."=";
   subtype SequenceInterface_Access_Array is org.allbinary.animation.SequenceInterface_Package_References.SequenceInterface_Access_Array;
   function "=" (Left, Right : SequenceInterface_Access_Array) return Boolean renames org.allbinary.animation.SequenceInterface_Package_References."=";
   subtype SequenceInterface_Access_Array_Access is org.allbinary.animation.SequenceInterface_Package_References.SequenceInterface_Access_Array_Access;
   function "=" (Left, Right : SequenceInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.SequenceInterface_Package_References."=";
   subtype SequenceInterface_Access_Array_Access_Array is org.allbinary.animation.SequenceInterface_Package_References.SequenceInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SequenceInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.SequenceInterface_Package_References."=";
   subtype SequenceInterface_Access_Array_Access_Array_Access is org.allbinary.animation.SequenceInterface_Package_References.SequenceInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SequenceInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.SequenceInterface_Package_References."=";
   function Java_Object_Access_From_SequenceInterface (Value : SequenceInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setSequence (This : in out SequenceInterface; sequence : Integer_Array_Access) is abstract;
   function getSequence (This : in out SequenceInterface) return Integer_Array_Access is abstract;

end org.allbinary.animation.SequenceInterface_Package;


