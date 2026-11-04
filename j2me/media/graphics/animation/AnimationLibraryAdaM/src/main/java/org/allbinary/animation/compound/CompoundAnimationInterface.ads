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

limited with org.allbinary.animation.compound.CompoundAnimationInterface_Package;
package org.allbinary.animation.compound.CompoundAnimationInterface_Package_References is
   type CompoundAnimationInterface_Access is access all org.allbinary.animation.compound.CompoundAnimationInterface_Package.CompoundAnimationInterface'Class;
   type CompoundAnimationInterface_Access_Array is array (Natural range <>) of CompoundAnimationInterface_Access;
   type CompoundAnimationInterface_Access_Array_Access is access all CompoundAnimationInterface_Access_Array;
   type CompoundAnimationInterface_Access_Array_Access_Array is array (Natural range <>) of CompoundAnimationInterface_Access_Array_Access;
   type CompoundAnimationInterface_Access_Array_Access_Array_Access is access all CompoundAnimationInterface_Access_Array_Access_Array;
end org.allbinary.animation.compound.CompoundAnimationInterface_Package_References;

with org.allbinary.animation.compound.CompoundAnimationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.AnimationInterface_Package; use org.allbinary.animation.AnimationInterface_Package;
limited with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;

package org.allbinary.animation.compound.CompoundAnimationInterface_Package is

   package AnimationInterface_Package renames Standard.org.allbinary.animation.AnimationInterface_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package Reference_Types is
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   use type IndexedAnimation_Access;
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   use type IndexedAnimation_Access_Array;
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access;
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   use type IndexedAnimation_Access_Array_Access_Array;
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   use type IndexedAnimation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type CompoundAnimationInterface is interface and AnimationInterface;
   subtype CompoundAnimationInterface_Access is org.allbinary.animation.compound.CompoundAnimationInterface_Package_References.CompoundAnimationInterface_Access;
   function "=" (Left, Right : CompoundAnimationInterface_Access) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterface_Package_References."=";
   subtype CompoundAnimationInterface_Access_Array is org.allbinary.animation.compound.CompoundAnimationInterface_Package_References.CompoundAnimationInterface_Access_Array;
   function "=" (Left, Right : CompoundAnimationInterface_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterface_Package_References."=";
   subtype CompoundAnimationInterface_Access_Array_Access is org.allbinary.animation.compound.CompoundAnimationInterface_Package_References.CompoundAnimationInterface_Access_Array_Access;
   function "=" (Left, Right : CompoundAnimationInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterface_Package_References."=";
   subtype CompoundAnimationInterface_Access_Array_Access_Array is org.allbinary.animation.compound.CompoundAnimationInterface_Package_References.CompoundAnimationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CompoundAnimationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterface_Package_References."=";
   subtype CompoundAnimationInterface_Access_Array_Access_Array_Access is org.allbinary.animation.compound.CompoundAnimationInterface_Package_References.CompoundAnimationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompoundAnimationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundAnimationInterface_Package_References."=";
   function Java_Object_Access_From_CompoundAnimationInterface (Value : CompoundAnimationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure nextAnimation (This : in out CompoundAnimationInterface) is abstract;
   procedure previousAnimation (This : in out CompoundAnimationInterface) is abstract;
   procedure setAnimation (This : in out CompoundAnimationInterface; index : Integer) is abstract;
   function getCurrentAnimation (This : in out CompoundAnimationInterface) return IndexedAnimation_Access is abstract;

end org.allbinary.animation.compound.CompoundAnimationInterface_Package;


