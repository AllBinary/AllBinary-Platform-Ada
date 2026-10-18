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

package org.allbinary.image.ChoiceGroupImageUtil_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type ChoiceGroupImageUtil is tagged;
   type ChoiceGroupImageUtil_Access is access all ChoiceGroupImageUtil'Class;
   type ChoiceGroupImageUtil_Access_Array is array (Natural range <>) of ChoiceGroupImageUtil_Access;
   type ChoiceGroupImageUtil_Access_Array_Access is access all ChoiceGroupImageUtil_Access_Array;
   type ChoiceGroupImageUtil_Access_Array_Access_Array is array (Natural range <>) of ChoiceGroupImageUtil_Access_Array_Access;
   type ChoiceGroupImageUtil_Access_Array_Access_Array_Access is access all ChoiceGroupImageUtil_Access_Array_Access_Array;

   type ChoiceGroupImageUtil is new Java_Object with null record;
   instance : ChoiceGroupImageUtil_Access;

   procedure Initialize (This : in out ChoiceGroupImageUtil'Class);
   function Create return ChoiceGroupImageUtil_Access;
   function getInstance return ChoiceGroupImageUtil_Access;
   procedure init (This : in out ChoiceGroupImageUtil);
   procedure update (This : in out ChoiceGroupImageUtil; gl_Param : access GL_Package.GL'Class);
   procedure update (This : in out ChoiceGroupImageUtil; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.image.ChoiceGroupImageUtil_Package;


