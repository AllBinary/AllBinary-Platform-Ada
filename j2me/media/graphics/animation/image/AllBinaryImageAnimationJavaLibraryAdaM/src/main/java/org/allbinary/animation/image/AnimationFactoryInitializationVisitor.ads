-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;
package org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References is
   type AnimationFactoryInitializationVisitor_Access is access all org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package.AnimationFactoryInitializationVisitor'Class;
   type AnimationFactoryInitializationVisitor_Access_Array is array (Natural range <>) of AnimationFactoryInitializationVisitor_Access;
   type AnimationFactoryInitializationVisitor_Access_Array_Access is access all AnimationFactoryInitializationVisitor_Access_Array;
   type AnimationFactoryInitializationVisitor_Access_Array_Access_Array is array (Natural range <>) of AnimationFactoryInitializationVisitor_Access_Array_Access;
   type AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access is access all AnimationFactoryInitializationVisitor_Access_Array_Access_Array;
end org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References;

with org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AnimationFactoryInitializationVisitor_Access is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";
   subtype AnimationFactoryInitializationVisitor_Access_Array is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access_Array) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";
   subtype AnimationFactoryInitializationVisitor_Access_Array_Access is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array_Access;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";
   subtype AnimationFactoryInitializationVisitor_Access_Array_Access_Array is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";
   subtype AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access is org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References.AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationFactoryInitializationVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package_References."=";

   type AnimationFactoryInitializationVisitor is new Java_Object with record
      width : Integer;
      height : Integer;
      dx : Integer;
      dy : Integer;
      originalDx : Integer;
      originalDy : Integer;
   end record;

   procedure Initialize (This : in out AnimationFactoryInitializationVisitor'Class);
   function Create return AnimationFactoryInitializationVisitor_Access;
   procedure visit (This : in out AnimationFactoryInitializationVisitor);
   function toString (This : in out AnimationFactoryInitializationVisitor) return Unbounded_String;

end org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;


