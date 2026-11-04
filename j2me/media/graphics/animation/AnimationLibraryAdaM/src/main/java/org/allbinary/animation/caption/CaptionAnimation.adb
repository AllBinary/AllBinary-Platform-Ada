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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationInterface_Package;

package body org.allbinary.animation.caption.CaptionAnimation_Package is

   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   procedure Initialize_Fields (This : in out CaptionAnimation'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CaptionAnimation'Class; animationInterface_Param : access Animation_Package.Animation'Class; overlayAnimationInterface_Param : access Animation_Package.Animation'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      overlayAnimationInterface : constant Animation_Access := Animation_Access (overlayAnimationInterface_Param);
   begin
      Animation_Package.Initialize (This);
      Initialize_Fields (This);
        This.animationInterface := animationInterface;
        This.overlayAnimationInterface := overlayAnimationInterface;
        This.captionDx := captionDx;
        This.captionDy := captionDy;
        This.dx := dx;
        This.dy := dy;
   end Initialize;

   function Create (animationInterface_Param : access Animation_Package.Animation'Class; overlayAnimationInterface_Param : access Animation_Package.Animation'Class; captionDx : Integer; captionDy : Integer; dx : Integer; dy : Integer) return CaptionAnimation_Access is
      This : constant CaptionAnimation_Access := new CaptionAnimation;
   begin
      CaptionAnimation_Package.Initialize (This.all, animationInterface_Param, overlayAnimationInterface_Param, captionDx, captionDy, dx, dy);
      return This;
   end Create;

   --  throws Exception
   procedure nextFrame (This : in out CaptionAnimation) is
   begin
        null;
   end nextFrame;

   procedure paintXY (This : in out CaptionAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintXY (graphics, (x) + (This.captionDx), (y) + (This.captionDy));
        This.overlayAnimationInterface.paintXY (graphics, ((x) + (This.captionDx)) + (This.dx), ((y) + (This.captionDy)) + (This.dy));
   end paintXY;

   procedure paintThreedXYZ (This : in out CaptionAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterface.paintThreedXYZ (graphics, (x) + (This.captionDx), (y) + (This.captionDy), z);
        This.overlayAnimationInterface.paintThreedXYZ (graphics, ((x) + (This.captionDx)) + (This.dx), ((y) + (This.captionDy)) + (This.dy), z);
   end paintThreedXYZ;

end org.allbinary.animation.caption.CaptionAnimation_Package;


