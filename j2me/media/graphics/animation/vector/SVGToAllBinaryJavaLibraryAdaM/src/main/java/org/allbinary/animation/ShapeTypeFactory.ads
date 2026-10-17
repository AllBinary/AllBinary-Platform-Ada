-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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

package org.allbinary.animation.ShapeTypeFactory_Package is


   type ShapeTypeFactory is tagged;
   type ShapeTypeFactory_Access is access all ShapeTypeFactory'Class;
   type ShapeTypeFactory_Access_Array is array (Natural range <>) of ShapeTypeFactory_Access;
   type ShapeTypeFactory_Access_Array_Access is access all ShapeTypeFactory_Access_Array;

   type ShapeTypeFactory is new Java_Object with record
      KEY_LINE : Unbounded_String;
      KEY_CIRCLE : Unbounded_String;
      KEY_RECTANGLE : Unbounded_String;
      KEY_RECT : Unbounded_String;
      LINE : ShapeType_Access;
      CIRCLE : ShapeType_Access;
      RECTANGLE : ShapeType_Access;
   end record;
   instance : ShapeTypeFactory_Access;

   procedure Initialize (This : in out ShapeTypeFactory'Class);
   function Create return ShapeTypeFactory_Access;
   function getInstance return ShapeTypeFactory_Access;
   procedure getInstance;

end org.allbinary.animation.ShapeTypeFactory_Package;


