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

package org.allbinary.animation.ShapeType_Package is


   type ShapeType is tagged;
   type ShapeType_Access is access all ShapeType'Class;
   type ShapeType_Access_Array is array (Natural range <>) of ShapeType_Access;
   type ShapeType_Access_Array_Access is access all ShapeType_Access_Array;

   type ShapeType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out ShapeType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return ShapeType_Access;
   function getName (This : in out ShapeType) return Unbounded_String;
   procedure getName (This : in out ShapeType);

end org.allbinary.animation.ShapeType_Package;


