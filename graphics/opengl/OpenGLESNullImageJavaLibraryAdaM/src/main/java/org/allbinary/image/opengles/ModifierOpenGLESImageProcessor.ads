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
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package; use org.allbinary.image.opengles.OpenGLESImageProcessor_Package;

package org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package is


   type ModifierOpenGLESImageProcessor is tagged;
   type ModifierOpenGLESImageProcessor_Access is access all ModifierOpenGLESImageProcessor'Class;
   type ModifierOpenGLESImageProcessor_Access_Array is array (Natural range <>) of ModifierOpenGLESImageProcessor_Access;
   type ModifierOpenGLESImageProcessor_Access_Array_Access is access all ModifierOpenGLESImageProcessor_Access_Array;

   type ModifierOpenGLESImageProcessor is new OpenGLESImageProcessor with null record;
   instanceC : ModifierOpenGLESImageProcessor_Access;

   procedure Initialize (This : in out ModifierOpenGLESImageProcessor'Class);
   function Create return ModifierOpenGLESImageProcessor_Access;
   function getInstance return ModifierOpenGLESImageProcessor_Access;
   procedure getInstance;

end org.allbinary.image.opengles.ModifierOpenGLESImageProcessor_Package;


