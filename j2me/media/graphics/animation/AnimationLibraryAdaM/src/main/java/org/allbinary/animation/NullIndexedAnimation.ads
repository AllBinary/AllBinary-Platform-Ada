--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.NullIndexedAnimation_Package is


   type NullIndexedAnimation is tagged;
   type NullIndexedAnimation_Access is access all NullIndexedAnimation'Class;
   type NullIndexedAnimation_Access_Array is array (Natural range <>) of NullIndexedAnimation_Access;
   type NullIndexedAnimation_Access_Array_Access is access all NullIndexedAnimation_Access_Array;

   type NullIndexedAnimation is new IndexedAnimation with null record;

   procedure Initialize (This : in out NullIndexedAnimation'Class; animationBehavior : AnimationBehavior_Access);
   function Create (animationBehavior : AnimationBehavior_Access) return NullIndexedAnimation_Access;
   function getAnimationSize (This : in out NullIndexedAnimation) return Integer;

end org.allbinary.animation.NullIndexedAnimation_Package;


