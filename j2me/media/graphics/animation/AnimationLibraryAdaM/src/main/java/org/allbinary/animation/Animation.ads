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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package; use org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package; use org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.allbinary.animation.AnimationInterface_Package; use org.allbinary.animation.AnimationInterface_Package;

package org.allbinary.animation.Animation_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package BasicColorSetUtil_Package renames Standard.org.allbinary.graphics.color.BasicColorSetUtil_Package;
   package OpenGLSurfaceChangedInterface_Package renames Standard.org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;

   type Animation is tagged;
   type Animation_Access is access all Animation'Class;
   type Animation_Access_Array is array (Natural range <>) of Animation_Access;
   type Animation_Access_Array_Access is access all Animation_Access_Array;

   type Animation is new AnimationInterface and OpenGLSurfaceChangedInterface with record
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


