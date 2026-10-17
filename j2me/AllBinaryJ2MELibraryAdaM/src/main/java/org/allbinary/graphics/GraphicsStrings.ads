-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package org.allbinary.graphics.GraphicsStrings_Package is


   type GraphicsStrings is tagged;
   type GraphicsStrings_Access is access all GraphicsStrings'Class;
   type GraphicsStrings_Access_Array is array (Natural range <>) of GraphicsStrings_Access;
   type GraphicsStrings_Access_Array_Access is access all GraphicsStrings_Access_Array;

   type GraphicsStrings is new Java_Object with record
      ANIMATION : Unbounded_String;
      ANGLE : Unbounded_String;
      MOVEMENT_ANGLE : Unbounded_String;
      ROTATION : Unbounded_String;
      OPACITY : Unbounded_String;
      HTML : Unbounded_String;
      WIDTH : Unbounded_String;
      HEIGHT : Unbounded_String;
   end record;
   instance : GraphicsStrings_Access;

   procedure Initialize (This : in out GraphicsStrings'Class);
   function Create return GraphicsStrings_Access;
   function getInstance return GraphicsStrings_Access;
   procedure getInstance;

end org.allbinary.graphics.GraphicsStrings_Package;


