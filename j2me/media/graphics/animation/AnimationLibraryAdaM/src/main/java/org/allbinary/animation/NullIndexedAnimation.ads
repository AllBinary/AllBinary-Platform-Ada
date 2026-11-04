--  Generated Code Do Not Modify

limited with org.allbinary.animation.NullIndexedAnimation_Package;
package org.allbinary.animation.NullIndexedAnimation_Package_References is
   type NullIndexedAnimation_Access is access all org.allbinary.animation.NullIndexedAnimation_Package.NullIndexedAnimation'Class;
   type NullIndexedAnimation_Access_Array is array (Natural range <>) of NullIndexedAnimation_Access;
   type NullIndexedAnimation_Access_Array_Access is access all NullIndexedAnimation_Access_Array;
   type NullIndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of NullIndexedAnimation_Access_Array_Access;
   type NullIndexedAnimation_Access_Array_Access_Array_Access is access all NullIndexedAnimation_Access_Array_Access_Array;
end org.allbinary.animation.NullIndexedAnimation_Package_References;

with org.allbinary.animation.NullIndexedAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.NullIndexedAnimation_Package is

   package Reference_Types is
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   use type AnimationBehavior_Access;
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   use type AnimationBehavior_Access_Array;
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access;
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   use type AnimationBehavior_Access_Array_Access_Array;
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullIndexedAnimation_Access is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access;
   function "=" (Left, Right : NullIndexedAnimation_Access) return Boolean renames org.allbinary.animation.NullIndexedAnimation_Package_References."=";
   subtype NullIndexedAnimation_Access_Array is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access_Array;
   function "=" (Left, Right : NullIndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.NullIndexedAnimation_Package_References."=";
   subtype NullIndexedAnimation_Access_Array_Access is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : NullIndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.NullIndexedAnimation_Package_References."=";
   subtype NullIndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : NullIndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.NullIndexedAnimation_Package_References."=";
   subtype NullIndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.NullIndexedAnimation_Package_References.NullIndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullIndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.NullIndexedAnimation_Package_References."=";

   type NullIndexedAnimation is new IndexedAnimation with null record;

   procedure Initialize (This : in out NullIndexedAnimation'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullIndexedAnimation_Access;
   function getAnimationSize (This : in out NullIndexedAnimation) return Integer;

end org.allbinary.animation.NullIndexedAnimation_Package;


