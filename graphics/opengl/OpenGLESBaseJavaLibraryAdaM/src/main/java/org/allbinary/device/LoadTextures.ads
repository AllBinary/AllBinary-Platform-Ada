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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;

package org.allbinary.device.LoadTextures_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;

   type LoadTextures is tagged;
   type LoadTextures_Access is access all LoadTextures'Class;
   type LoadTextures_Access_Array is array (Natural range <>) of LoadTextures_Access;
   type LoadTextures_Access_Array_Access is access all LoadTextures_Access_Array;
   type LoadTextures_Access_Array_Access_Array is array (Natural range <>) of LoadTextures_Access_Array_Access;
   type LoadTextures_Access_Array_Access_Array_Access is access all LoadTextures_Access_Array_Access_Array;

   type LoadTextures is new Java_Object with null record;

   procedure Initialize (This : in out LoadTextures'Class);
   function Create return LoadTextures_Access;
   procedure load (This : in out LoadTextures; gl_Param : access GL10_Package.GL10'Class);

end org.allbinary.device.LoadTextures_Package;


