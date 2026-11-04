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

limited with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;
package org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References is
   type CaptionAnimationHelperBase_Access is access all org.allbinary.animation.caption.CaptionAnimationHelperBase_Package.CaptionAnimationHelperBase'Class;
   type CaptionAnimationHelperBase_Access_Array is array (Natural range <>) of CaptionAnimationHelperBase_Access;
   type CaptionAnimationHelperBase_Access_Array_Access is access all CaptionAnimationHelperBase_Access_Array;
   type CaptionAnimationHelperBase_Access_Array_Access_Array is array (Natural range <>) of CaptionAnimationHelperBase_Access_Array_Access;
   type CaptionAnimationHelperBase_Access_Array_Access_Array_Access is access all CaptionAnimationHelperBase_Access_Array_Access_Array;
end org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References;

with org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.animation.caption.CaptionAnimationHelperBase_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype CaptionAnimationHelperBase_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array_Access_Array is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access_Array;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";
   subtype CaptionAnimationHelperBase_Access_Array_Access_Array_Access is org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References.CaptionAnimationHelperBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CaptionAnimationHelperBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.caption.CaptionAnimationHelperBase_Package_References."=";

   type CaptionAnimationHelperBase is new Animation_Package.Animation with null record;
   INSTANCE : CaptionAnimationHelperBase_Access;

   procedure Initialize (This : in out CaptionAnimationHelperBase'Class);
   function Create return CaptionAnimationHelperBase_Access;
   function isShowing (This : in out CaptionAnimationHelperBase) return Boolean;
   procedure tick (This : in out CaptionAnimationHelperBase);
   procedure update (This : in out CaptionAnimationHelperBase; message : Unbounded_String; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure paintXY (This : in out CaptionAnimationHelperBase; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.caption.CaptionAnimationHelperBase_Package;


