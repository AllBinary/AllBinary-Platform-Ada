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

limited with org.allbinary.animation.special.TitleAnimation_Package;
package org.allbinary.animation.special.TitleAnimation_Package_References is
   type TitleAnimation_Access is access all org.allbinary.animation.special.TitleAnimation_Package.TitleAnimation'Class;
   type TitleAnimation_Access_Array is array (Natural range <>) of TitleAnimation_Access;
   type TitleAnimation_Access_Array_Access is access all TitleAnimation_Access_Array;
   type TitleAnimation_Access_Array_Access_Array is array (Natural range <>) of TitleAnimation_Access_Array_Access;
   type TitleAnimation_Access_Array_Access_Array_Access is access all TitleAnimation_Access_Array_Access_Array;
end org.allbinary.animation.special.TitleAnimation_Package_References;

with org.allbinary.animation.special.TitleAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
limited with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.logic.ABSystemWrapper_Package_References;
with org.allbinary.animation.special.SpecialAnimation_Package; use org.allbinary.animation.special.SpecialAnimation_Package;

package org.allbinary.animation.special.TitleAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;
   package Reference_Types is
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   use type DisplayInfoSingleton_Access;
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   use type DisplayInfoSingleton_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access;
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   use type DisplayInfoSingleton_Access_Array_Access_Array;
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   use type DisplayInfoSingleton_Access_Array_Access_Array_Access;
   subtype ABSystemWrapper_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access;
   use type ABSystemWrapper_Access;
   subtype ABSystemWrapper_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array;
   use type ABSystemWrapper_Access_Array;
   subtype ABSystemWrapper_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access;
   use type ABSystemWrapper_Access_Array_Access;
   subtype ABSystemWrapper_Access_Array_Access_Array is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array;
   use type ABSystemWrapper_Access_Array_Access_Array;
   subtype ABSystemWrapper_Access_Array_Access_Array_Access is org.allbinary.logic.ABSystemWrapper_Package_References.ABSystemWrapper_Access_Array_Access_Array_Access;
   use type ABSystemWrapper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TitleAnimation_Access is org.allbinary.animation.special.TitleAnimation_Package_References.TitleAnimation_Access;
   function "=" (Left, Right : TitleAnimation_Access) return Boolean renames org.allbinary.animation.special.TitleAnimation_Package_References."=";
   subtype TitleAnimation_Access_Array is org.allbinary.animation.special.TitleAnimation_Package_References.TitleAnimation_Access_Array;
   function "=" (Left, Right : TitleAnimation_Access_Array) return Boolean renames org.allbinary.animation.special.TitleAnimation_Package_References."=";
   subtype TitleAnimation_Access_Array_Access is org.allbinary.animation.special.TitleAnimation_Package_References.TitleAnimation_Access_Array_Access;
   function "=" (Left, Right : TitleAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.special.TitleAnimation_Package_References."=";
   subtype TitleAnimation_Access_Array_Access_Array is org.allbinary.animation.special.TitleAnimation_Package_References.TitleAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : TitleAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.special.TitleAnimation_Package_References."=";
   subtype TitleAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.special.TitleAnimation_Package_References.TitleAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.special.TitleAnimation_Package_References."=";

   type TitleAnimation is new SpecialAnimation with record
      systemWrapper : ABSystemWrapper_Access;
      deltaX : Float;
      deltaY : Float;
      deltaZ : Float;
      basicColorArray : BasicColor_Access_Array_Access;
      dxArray : Integer_Array_Access;
      dyArray : Integer_Array_Access;
      widthP : Integer;
      animationInterfaceArray : IndexedAnimation_Access_Array_Access;
      sizeP : Integer;
      y : Integer;
      lastFrameStartTime : Long_Long_Integer;
      displayInfoSingleton : DisplayInfoSingleton_Access;
      CLEAR_COLOR : BasicColor_Access;
   end record;

   procedure Initialize (This : in out TitleAnimation'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return TitleAnimation_Access;
   function createAnimation (animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer) return TitleAnimation_Access;
   procedure createAnimation (animationInterfaceArray : IndexedAnimation_Access_Array_Access; basicColorArray : BasicColor_Access_Array_Access; dxArray : Integer_Array_Access; dyArray : Integer_Array_Access; y : Integer; width : Integer);
   procedure nextFrame (This : in out TitleAnimation);
   function isComplete (This : in out TitleAnimation) return Boolean;
   procedure setSequence (This : in out TitleAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out TitleAnimation) return Integer_Array_Access;
   function getSize (This : in out TitleAnimation) return Integer;
   function getFrame (This : in out TitleAnimation) return Integer;
   procedure setFrame (This : in out TitleAnimation; frame : Integer);
   procedure setLastFrame (This : in out TitleAnimation);
   procedure reset (This : in out TitleAnimation);
   procedure previousFrame (This : in out TitleAnimation);
   procedure paintFrameXY (This : in out TitleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; frame : Integer; x : Integer; y : Integer);
   procedure paintXY (This : in out TitleAnimation; graphics_Param : access Graphics_Package.Graphics'Class; ax : Integer; ay : Integer);

end org.allbinary.animation.special.TitleAnimation_Package;


