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
with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;

package org.allbinary.image.PreResourceImageUtil_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;

   type PreResourceImageUtil is tagged;
   type PreResourceImageUtil_Access is access all PreResourceImageUtil'Class;
   type PreResourceImageUtil_Access_Array is array (Natural range <>) of PreResourceImageUtil_Access;
   type PreResourceImageUtil_Access_Array_Access is access all PreResourceImageUtil_Access_Array;
   type PreResourceImageUtil_Access_Array_Access_Array is array (Natural range <>) of PreResourceImageUtil_Access_Array_Access;
   type PreResourceImageUtil_Access_Array_Access_Array_Access is access all PreResourceImageUtil_Access_Array_Access_Array;

   type PreResourceImageUtil is new Java_Object with null record;
   instance : PreResourceImageUtil_Access;

   procedure Initialize (This : in out PreResourceImageUtil'Class);
   function Create return PreResourceImageUtil_Access;
   function getInstance return PreResourceImageUtil_Access;
   function encapsulate (This : in out PreResourceImageUtil; image_Param : access Image_Package.Image'Class) return Image_Access;
   procedure encapsulate (This : in out PreResourceImageUtil; image_Param : access Image_Package.Image'Class);
   procedure updateGL (This : in out PreResourceImageUtil; gl_Param : access GL_Package.GL'Class; image_Param : access Image_Package.Image'Class);
   procedure update (This : in out PreResourceImageUtil; graphics_Param : access Graphics_Package.Graphics'Class; image_Param : access Image_Package.Image'Class);

end org.allbinary.image.PreResourceImageUtil_Package;


