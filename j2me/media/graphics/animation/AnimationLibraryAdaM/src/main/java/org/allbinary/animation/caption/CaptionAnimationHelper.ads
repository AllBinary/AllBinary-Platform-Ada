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

limited with org.allbinary.animation.caption.CaptionAnimationHelper_Package;
package org.allbinary.animation.caption.CaptionAnimationHelper_Package_References is
   type CaptionAnimationHelper_Access is access all org.allbinary.animation.caption.CaptionAnimationHelper_Package.CaptionAnimationHelper'Class;
   type CaptionAnimationHelper_Access_Array is array (Natural range <>) of CaptionAnimationHelper_Access;
   type CaptionAnimationHelper_Access_Array_Access is access all CaptionAnimationHelper_Access_Array;
   type CaptionAnimationHelper_Access_Array_Access_Array is array (Natural range <>) of CaptionAnimationHelper_Access_Array_Access;
   type CaptionAnimationHelper_Access_Array_Access_Array_Access is access all CaptionAnimationHelper_Access_Array_Access_Array;
end org.allbinary.animation.caption.CaptionAnimationHelper_Package_References;

with org.allbinary.animation.caption.CaptionAnimationHelper_Package_References;
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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
limited with org.allbinary.animation.text.TextAnimation_Package;
with org.allbinary.animation.text.TextAnimation_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package; use org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;

package org.allbinary.animation.caption.CaptionAnimationHelper_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package TextAnimation_Package renames Standard.org.allbinary.animation.text.TextAnimation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   subtype TextAnimation_Access is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access;
   use type TextAnimation_Access;
   subtype TextAnimation_Access_Array is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array;
   use type TextAnimation_Access_Array;
   subtype TextAnimation_Access_Array_Access is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array_Access;
   use type TextAnimation_Access_Array_Access;
   subtype TextAnimation_Access_Array_Access_Array is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array_Access_Array;
   use type TextAnimation_Access_Array_Access_Array;
   subtype TextAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.text.TextAnimation_Package_References.TextAnimation_Access_Array_Access_Array_Access;
   use type TextAnimation_Access_Array_Access_Array_Access;
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


   subtype CaptionAnimationHelper_Access is org.allbinary.animation.caption.CaptionAnimationHelper_Package_References.CaptionAnimationHelper_Access;
   function "=" (Left, Right : CaptionAnimationHelper_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelper_Package_References."=";
   subtype CaptionAnimationHelper_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelper_Package_References.CaptionAnimationHelper_Access_Array;
   function "=" (Left, Right : CaptionAnimationHelper_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelper_Package_References."=";
   subtype CaptionAnimationHelper_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelper_Package_References.CaptionAnimationHelper_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimationHelper_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelper_Package_References."=";
   subtype CaptionAnimationHelper_Access_Array_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelper_Package_References.CaptionAnimationHelper_Access_Array_Access_Array;
   function "=" (Left, Right : CaptionAnimationHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelper_Package_References."=";
   subtype CaptionAnimationHelper_Access_Array_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelper_Package_References.CaptionAnimationHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimationHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelper_Package_References."=";

   type CaptionAnimationHelper is new CaptionAnimationHelperBase with record
      timeHelper : TimeDelayHelper_Access;
      textAnimation : TextAnimation_Access;
      captionAnimation : Animation_Access;
      animation : Animation_Access;
   end record;

   procedure Initialize (This : in out CaptionAnimationHelper'Class; captionAnimation_Param : access Animation_Package.Animation'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer);
   function Create (captionAnimation_Param : access Animation_Package.Animation'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer) return CaptionAnimationHelper_Access;
   function isShowing (This : in out CaptionAnimationHelper) return Boolean;
   procedure tick (This : in out CaptionAnimationHelper);
   procedure update (This : in out CaptionAnimationHelper; message : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure paintXY (This : in out CaptionAnimationHelper; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.caption.CaptionAnimationHelper_Package;


