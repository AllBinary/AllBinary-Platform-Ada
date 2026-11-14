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
limited with org.allbinary.animation.Animation_Package;
package org.allbinary.animation.Animation_Package_References is
   type Animation_Access is access all org.allbinary.animation.Animation_Package.Animation'Class;
   type Animation_Access_Array is array (Natural range <>) of Animation_Access;
   type Animation_Access_Array_Access is access all Animation_Access_Array;
   type Animation_Access_Array_Access_Array is array (Natural range <>) of Animation_Access_Array_Access;
   type Animation_Access_Array_Access_Array_Access is access all Animation_Access_Array_Access_Array;
   type Animation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Animation_Access_Array_Access;
   end record;
   function Java_Box (Value : Animation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Animation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Animation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Animation_Access_Array_Access is (if Value /= null and then Value.all in Animation_Access_Array_Object'Class then Animation_Access_Array_Object'Class (Value.all).Value else null);
   type Animation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Animation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Animation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Animation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Animation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Animation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Animation_Access_Array_Access_Array_Object'Class then Animation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.Animation_Package_References;

with org.allbinary.animation.Animation_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package_References;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.animation.AnimationInterface_Package; use org.allbinary.animation.AnimationInterface_Package;

package org.allbinary.animation.Animation_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package OpenGLSurfaceChangedInterface_Package renames Standard.org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
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
   subtype BasicColorSetUtil_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access;
   use type BasicColorSetUtil_Access;
   subtype BasicColorSetUtil_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array;
   use type BasicColorSetUtil_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access;
   subtype BasicColorSetUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array;
   use type BasicColorSetUtil_Access_Array_Access_Array;
   subtype BasicColorSetUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorSetUtil_Package_References.BasicColorSetUtil_Access_Array_Access_Array_Access;
   use type BasicColorSetUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   function Java_Box (Value : Animation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.Animation_Package_References.Java_Box;
   function Java_Unbox_Animation_Access_Array (Value : access Java_Object'Class) return Animation_Access_Array_Access renames org.allbinary.animation.Animation_Package_References.Java_Unbox_Animation_Access_Array;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   function Java_Box (Value : Animation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.Animation_Package_References.Java_Box;
   function Java_Unbox_Animation_Access_Array_Access_Array (Value : access Java_Object'Class) return Animation_Access_Array_Access_Array_Access renames org.allbinary.animation.Animation_Package_References.Java_Unbox_Animation_Access_Array_Access_Array;

   type Animation is new Java_Object and AnimationInterface and OpenGLSurfaceChangedInterface with record
      basicSetColorUtil : BasicColorSetUtil_Access;
      basicColor : BasicColor_Access;
      colorP : Integer;
      changeBasicColorP : BasicColor_Access;
      changeColorP : Integer;
      alphaP : Integer;
   end record;

   procedure Initialize (This : in out Animation'Class);
   function Create return Animation_Access;
   procedure setAlpha (This : in out Animation; alpha : Integer);
   procedure nextFrame (This : in out Animation);
   procedure paintXY (This : in out Animation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure paintThreedXYZ (This : in out Animation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer);
   function isThreed (This : in out Animation) return Boolean;
   function getBasicColorP (This : in out Animation) return BasicColor_Access;
   procedure setBasicColorP (This : in out Animation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setBackgroundBasicColorP (This : in out Animation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getChangeBasicColor (This : in out Animation) return BasicColor_Access;
   procedure changeBasicColor (This : in out Animation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getChangeColor (This : in out Animation) return Integer;
   function getColor (This : in out Animation) return Integer;
   procedure setScale (This : in out Animation; scaleX : Float; scaleY : Float);
   procedure setMaxScale (This : in out Animation; maxScaleX : Float; maxScaleY : Float);
   procedure set (This : in out Animation; gl_Param : access GL_Package.GL'Class);
   procedure setDx (This : in out Animation; dx : Integer);
   function getDx (This : in out Animation) return Integer;
   procedure setDy (This : in out Animation; dy : Integer);
   function getDy (This : in out Animation) return Integer;

end org.allbinary.animation.Animation_Package;


