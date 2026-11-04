--  Generated Code Do Not Modify

limited with org.allbinary.animation.NullRotationAnimation_Package;
package org.allbinary.animation.NullRotationAnimation_Package_References is
   type NullRotationAnimation_Access is access all org.allbinary.animation.NullRotationAnimation_Package.NullRotationAnimation'Class;
   type NullRotationAnimation_Access_Array is array (Natural range <>) of NullRotationAnimation_Access;
   type NullRotationAnimation_Access_Array_Access is access all NullRotationAnimation_Access_Array;
   type NullRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of NullRotationAnimation_Access_Array_Access;
   type NullRotationAnimation_Access_Array_Access_Array_Access is access all NullRotationAnimation_Access_Array_Access_Array;
end org.allbinary.animation.NullRotationAnimation_Package_References;

with org.allbinary.animation.NullRotationAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.NullRotationAnimation_Package is

   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   use type AngleInfo_Access;
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   use type AngleInfo_Access_Array;
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   use type AngleInfo_Access_Array_Access;
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   use type AngleInfo_Access_Array_Access_Array;
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   use type AngleInfo_Access_Array_Access_Array_Access;
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
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


   subtype NullRotationAnimation_Access is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access;
   function "=" (Left, Right : NullRotationAnimation_Access) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";
   subtype NullRotationAnimation_Access_Array is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access_Array;
   function "=" (Left, Right : NullRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";
   subtype NullRotationAnimation_Access_Array_Access is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : NullRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";
   subtype NullRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : NullRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";
   subtype NullRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.NullRotationAnimation_Package_References.NullRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.NullRotationAnimation_Package_References."=";

   type NullRotationAnimation is new RotationAnimation with null record;

   procedure Initialize (This : in out NullRotationAnimation'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; circularIndexUtil_Param : access CircularIndexUtil_Package.CircularIndexUtil'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access;
   function createTotalAngle (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access;
   procedure createTotalAngle (angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function createQuarter (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return NullRotationAnimation_Access;
   procedure createQuarter (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function getAnimationSize (This : in out NullRotationAnimation) return Integer;

end org.allbinary.animation.NullRotationAnimation_Package;


