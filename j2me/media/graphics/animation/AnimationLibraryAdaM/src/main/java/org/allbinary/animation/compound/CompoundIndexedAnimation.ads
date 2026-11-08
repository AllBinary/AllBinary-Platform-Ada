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

limited with org.allbinary.animation.compound.CompoundIndexedAnimation_Package;
package org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References is
   type CompoundIndexedAnimation_Access is access all org.allbinary.animation.compound.CompoundIndexedAnimation_Package.CompoundIndexedAnimation'Class;
   type CompoundIndexedAnimation_Access_Array is array (Natural range <>) of CompoundIndexedAnimation_Access;
   type CompoundIndexedAnimation_Access_Array_Access is access all CompoundIndexedAnimation_Access_Array;
   type CompoundIndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of CompoundIndexedAnimation_Access_Array_Access;
   type CompoundIndexedAnimation_Access_Array_Access_Array_Access is access all CompoundIndexedAnimation_Access_Array_Access_Array;
end org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References;

with org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.animation.compound.CompoundAnimationInterface_Package; use org.allbinary.animation.compound.CompoundAnimationInterface_Package;

package org.allbinary.animation.compound.CompoundIndexedAnimation_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   use type GL_Access;
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   use type GL_Access_Array;
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   use type GL_Access_Array_Access;
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   use type GL_Access_Array_Access_Array;
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   use type GL_Access_Array_Access_Array_Access;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CompoundIndexedAnimation_Access is org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References.CompoundIndexedAnimation_Access;
   function "=" (Left, Right : CompoundIndexedAnimation_Access) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References."=";
   subtype CompoundIndexedAnimation_Access_Array is org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References.CompoundIndexedAnimation_Access_Array;
   function "=" (Left, Right : CompoundIndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References."=";
   subtype CompoundIndexedAnimation_Access_Array_Access is org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References.CompoundIndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : CompoundIndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References."=";
   subtype CompoundIndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References.CompoundIndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : CompoundIndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References."=";
   subtype CompoundIndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References.CompoundIndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompoundIndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.CompoundIndexedAnimation_Package_References."=";

   type CompoundIndexedAnimation is new IndexedAnimation and CompoundAnimationInterface with record
      circularIndexUtil : CircularIndexUtil_Access;
      animationInterfaceArray : Animation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out CompoundIndexedAnimation'Class; animationInterfaceArray : Animation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterfaceArray : Animation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return CompoundIndexedAnimation_Access;
   procedure setFrame (This : in out CompoundIndexedAnimation; index : Integer);
   function getFrame (This : in out CompoundIndexedAnimation) return Integer;
   function getSize (This : in out CompoundIndexedAnimation) return Integer;
   procedure previousFrame (This : in out CompoundIndexedAnimation);
   procedure setSequence (This : in out CompoundIndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out CompoundIndexedAnimation) return Integer_Array_Access;
   procedure nextFrame (This : in out CompoundIndexedAnimation);
   procedure paintXY (This : in out CompoundIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out CompoundIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   function getCurrentAnimation (This : in out CompoundIndexedAnimation) return IndexedAnimation_Access;
   procedure nextAnimation (This : in out CompoundIndexedAnimation);
   procedure previousAnimation (This : in out CompoundIndexedAnimation);
   procedure setAnimation (This : in out CompoundIndexedAnimation; index : Integer);
   function getAnimationInterfaceArray (This : in out CompoundIndexedAnimation) return Animation_Access_Array_Access;
   procedure setAnimationInterfaceArray (This : in out CompoundIndexedAnimation; animationInterfaceArray : Animation_Access_Array_Access);
   procedure set (This : in out CompoundIndexedAnimation; gl_Param : access GL_Package.GL'Class);

end org.allbinary.animation.compound.CompoundIndexedAnimation_Package;


