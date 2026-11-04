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

limited with org.allbinary.animation.AnimationBehavior_Package;
package org.allbinary.animation.AnimationBehavior_Package_References is
   type AnimationBehavior_Access is access all org.allbinary.animation.AnimationBehavior_Package.AnimationBehavior'Class;
   type AnimationBehavior_Access_Array is array (Natural range <>) of AnimationBehavior_Access;
   type AnimationBehavior_Access_Array_Access is access all AnimationBehavior_Access_Array;
   type AnimationBehavior_Access_Array_Access_Array is array (Natural range <>) of AnimationBehavior_Access_Array_Access;
   type AnimationBehavior_Access_Array_Access_Array_Access is access all AnimationBehavior_Access_Array_Access_Array;
end org.allbinary.animation.AnimationBehavior_Package_References;

with org.allbinary.animation.AnimationBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.AnimationBehavior_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";

   type AnimationBehavior is new Java_Object with null record;
   instance : AnimationBehavior_Access;

   procedure Initialize (This : in out AnimationBehavior'Class);
   function Create return AnimationBehavior_Access;
   function getInstance return AnimationBehavior_Access;
   procedure reset (This : in out AnimationBehavior);

end org.allbinary.animation.AnimationBehavior_Package;


