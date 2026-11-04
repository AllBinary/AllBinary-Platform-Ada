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

limited with org.allbinary.animation.IndexedAnimationInterface_Package;
package org.allbinary.animation.IndexedAnimationInterface_Package_References is
   type IndexedAnimationInterface_Access is access all org.allbinary.animation.IndexedAnimationInterface_Package.IndexedAnimationInterface'Class;
   type IndexedAnimationInterface_Access_Array is array (Natural range <>) of IndexedAnimationInterface_Access;
   type IndexedAnimationInterface_Access_Array_Access is access all IndexedAnimationInterface_Access_Array;
   type IndexedAnimationInterface_Access_Array_Access_Array is array (Natural range <>) of IndexedAnimationInterface_Access_Array_Access;
   type IndexedAnimationInterface_Access_Array_Access_Array_Access is access all IndexedAnimationInterface_Access_Array_Access_Array;
end org.allbinary.animation.IndexedAnimationInterface_Package_References;

with org.allbinary.animation.IndexedAnimationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.SequentialAnimationInterface_Package; use org.allbinary.animation.SequentialAnimationInterface_Package;

package org.allbinary.animation.IndexedAnimationInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type IndexedAnimationInterface is interface and SequentialAnimationInterface;
   subtype IndexedAnimationInterface_Access is org.allbinary.animation.IndexedAnimationInterface_Package_References.IndexedAnimationInterface_Access;
   function "=" (Left, Right : IndexedAnimationInterface_Access) return Boolean renames org.allbinary.animation.IndexedAnimationInterface_Package_References."=";
   subtype IndexedAnimationInterface_Access_Array is org.allbinary.animation.IndexedAnimationInterface_Package_References.IndexedAnimationInterface_Access_Array;
   function "=" (Left, Right : IndexedAnimationInterface_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimationInterface_Package_References."=";
   subtype IndexedAnimationInterface_Access_Array_Access is org.allbinary.animation.IndexedAnimationInterface_Package_References.IndexedAnimationInterface_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimationInterface_Package_References."=";
   subtype IndexedAnimationInterface_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimationInterface_Package_References.IndexedAnimationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedAnimationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimationInterface_Package_References."=";
   subtype IndexedAnimationInterface_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimationInterface_Package_References.IndexedAnimationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimationInterface_Package_References."=";
   function Java_Object_Access_From_IndexedAnimationInterface (Value : IndexedAnimationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure reset (This : in out IndexedAnimationInterface) is abstract;
   procedure setFrame (This : in out IndexedAnimationInterface; index : Integer) is abstract;
   function getFrame (This : in out IndexedAnimationInterface) return Integer is abstract;

end org.allbinary.animation.IndexedAnimationInterface_Package;


