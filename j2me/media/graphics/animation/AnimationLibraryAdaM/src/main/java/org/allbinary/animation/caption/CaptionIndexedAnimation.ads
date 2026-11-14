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

with AllBinary_Java;
limited with org.allbinary.animation.caption.CaptionIndexedAnimation_Package;
package org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References is
   type CaptionIndexedAnimation_Access is access all org.allbinary.animation.caption.CaptionIndexedAnimation_Package.CaptionIndexedAnimation'Class;
   type CaptionIndexedAnimation_Access_Array is array (Natural range <>) of CaptionIndexedAnimation_Access;
   type CaptionIndexedAnimation_Access_Array_Access is access all CaptionIndexedAnimation_Access_Array;
   type CaptionIndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of CaptionIndexedAnimation_Access_Array_Access;
   type CaptionIndexedAnimation_Access_Array_Access_Array_Access is access all CaptionIndexedAnimation_Access_Array_Access_Array;
   type CaptionIndexedAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CaptionIndexedAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : CaptionIndexedAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CaptionIndexedAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CaptionIndexedAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CaptionIndexedAnimation_Access_Array_Access is (if Value /= null and then Value.all in CaptionIndexedAnimation_Access_Array_Object'Class then CaptionIndexedAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type CaptionIndexedAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CaptionIndexedAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CaptionIndexedAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CaptionIndexedAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CaptionIndexedAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CaptionIndexedAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CaptionIndexedAnimation_Access_Array_Access_Array_Object'Class then CaptionIndexedAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References;

with org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References;
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
limited with javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package org.allbinary.animation.caption.CaptionIndexedAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
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
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   use type Player_Access;
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   use type Player_Access_Array;
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   use type Player_Access_Array_Access;
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   use type Player_Access_Array_Access_Array;
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   use type Player_Access_Array_Access_Array_Access;
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
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CaptionIndexedAnimation_Access is org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References.CaptionIndexedAnimation_Access;
   function "=" (Left, Right : CaptionIndexedAnimation_Access) return Boolean renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References."=";
   subtype CaptionIndexedAnimation_Access_Array is org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References.CaptionIndexedAnimation_Access_Array;
   function "=" (Left, Right : CaptionIndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References."=";
   subtype CaptionIndexedAnimation_Access_Array_Access is org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References.CaptionIndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : CaptionIndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References."=";
   function Java_Box (Value : CaptionIndexedAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References.Java_Box;
   function Java_Unbox_CaptionIndexedAnimation_Access_Array (Value : access Java_Object'Class) return CaptionIndexedAnimation_Access_Array_Access renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References.Java_Unbox_CaptionIndexedAnimation_Access_Array;
   subtype CaptionIndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References.CaptionIndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : CaptionIndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References."=";
   subtype CaptionIndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References.CaptionIndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CaptionIndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References."=";
   function Java_Box (Value : CaptionIndexedAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References.Java_Box;
   function Java_Unbox_CaptionIndexedAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return CaptionIndexedAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.caption.CaptionIndexedAnimation_Package_References.Java_Unbox_CaptionIndexedAnimation_Access_Array_Access_Array;

   type CaptionIndexedAnimation is new IndexedAnimation with record
      animationInterface : Animation_Access;
      movieIndexedAnimationInterface : IndexedAnimation_Access;
      captionDx : Integer;
      captionDy : Integer;
      dx : Integer;
      dy : Integer;
      time : Integer;
      END_EVENT : AllBinaryEventObject_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      player : Player_Access;
   end record;

   procedure Initialize (This : in out CaptionIndexedAnimation'Class; animationInterface_Param : access Animation_Package.Animation'Class; movieIndexedAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class; player_Param : access Player_Package.Player'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; movieIndexedAnimationInterface_Param : access IndexedAnimation_Package.IndexedAnimation'Class; player_Param : access Player_Package.Player'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer; time : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return CaptionIndexedAnimation_Access;
   procedure nextFrame (This : in out CaptionIndexedAnimation);
   function isLastFrame (This : in out CaptionIndexedAnimation) return Boolean;
   procedure previousFrame (This : in out CaptionIndexedAnimation);
   procedure setFrame (This : in out CaptionIndexedAnimation; index : Integer);
   function getFrame (This : in out CaptionIndexedAnimation) return Integer;
   function getSize (This : in out CaptionIndexedAnimation) return Integer;
   procedure setSequence (This : in out CaptionIndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out CaptionIndexedAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out CaptionIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out CaptionIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.animation.caption.CaptionIndexedAnimation_Package;


