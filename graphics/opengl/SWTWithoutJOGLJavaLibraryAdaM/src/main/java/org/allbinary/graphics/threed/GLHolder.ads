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

package org.allbinary.graphics.threed.GLHolder_Package is


   type GLHolder is tagged;
   type GLHolder_Access is access all GLHolder'Class;
   type GLHolder_Access_Array is array (Natural range <>) of GLHolder_Access;
   type GLHolder_Access_Array_Access is access all GLHolder_Access_Array;

   type GLHolder is new Java_Object with record
      isCreated : Boolean;
   end record;

   procedure Initialize (This : in out GLHolder'Class);
   function Create return GLHolder_Access;
   procedure runOnSurfaceCreated (This : in out GLHolder; renderer : Java_Object_Access);
   procedure runOnSurfaceChanged (This : in out GLHolder; renderer : Java_Object_Access; width : Integer; height : Integer);
   procedure run (This : in out GLHolder; renderer : Java_Object_Access);

end org.allbinary.graphics.threed.GLHolder_Package;


