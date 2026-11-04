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

limited with org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package;
package org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References is
   type SimultaneousCompoundIndexAnimation_Access is access all org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package.SimultaneousCompoundIndexAnimation'Class;
   type SimultaneousCompoundIndexAnimation_Access_Array is array (Natural range <>) of SimultaneousCompoundIndexAnimation_Access;
   type SimultaneousCompoundIndexAnimation_Access_Array_Access is access all SimultaneousCompoundIndexAnimation_Access_Array;
   type SimultaneousCompoundIndexAnimation_Access_Array_Access_Array is array (Natural range <>) of SimultaneousCompoundIndexAnimation_Access_Array_Access;
   type SimultaneousCompoundIndexAnimation_Access_Array_Access_Array_Access is access all SimultaneousCompoundIndexAnimation_Access_Array_Access_Array;
end org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References;

with org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References;
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
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;

package org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype SimultaneousCompoundIndexAnimation_Access is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References.SimultaneousCompoundIndexAnimation_Access;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimation_Access) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References."=";
   subtype SimultaneousCompoundIndexAnimation_Access_Array is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References.SimultaneousCompoundIndexAnimation_Access_Array;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimation_Access_Array) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References."=";
   subtype SimultaneousCompoundIndexAnimation_Access_Array_Access is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References.SimultaneousCompoundIndexAnimation_Access_Array_Access;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References."=";
   subtype SimultaneousCompoundIndexAnimation_Access_Array_Access_Array is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References.SimultaneousCompoundIndexAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References."=";
   subtype SimultaneousCompoundIndexAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References.SimultaneousCompoundIndexAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimultaneousCompoundIndexAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package_References."=";

   type SimultaneousCompoundIndexAnimation is new IndexedAnimation with record
      animationInterfaceArray : IndexedAnimation_Access_Array_Access;
   end record;

   procedure Initialize (This : in out SimultaneousCompoundIndexAnimation'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterfaceArray : IndexedAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return SimultaneousCompoundIndexAnimation_Access;
   procedure setFrame (This : in out SimultaneousCompoundIndexAnimation; frameIndex : Integer);
   function getFrame (This : in out SimultaneousCompoundIndexAnimation) return Integer;
   function getAnimationSize (This : in out SimultaneousCompoundIndexAnimation) return Integer;
   function getSize (This : in out SimultaneousCompoundIndexAnimation) return Integer;
   procedure previousFrame (This : in out SimultaneousCompoundIndexAnimation);
   procedure nextFrame (This : in out SimultaneousCompoundIndexAnimation);
   procedure setSequence (This : in out SimultaneousCompoundIndexAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out SimultaneousCompoundIndexAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out SimultaneousCompoundIndexAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out SimultaneousCompoundIndexAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   procedure set (This : in out SimultaneousCompoundIndexAnimation; gl_Param : access GL_Package.GL'Class);
   function getAnimationInterfaceArray (This : in out SimultaneousCompoundIndexAnimation) return IndexedAnimation_Access_Array_Access;
   procedure setAnimationInterfaceArray (This : in out SimultaneousCompoundIndexAnimation; animationInterfaceArray : IndexedAnimation_Access_Array_Access);

end org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package;


