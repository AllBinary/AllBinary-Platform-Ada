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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;

package org.allbinary.canvas.GameGlobalsFactory_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;

   type GameGlobalsFactory is tagged;
   type GameGlobalsFactory_Access is access all GameGlobalsFactory'Class;
   type GameGlobalsFactory_Access_Array is array (Natural range <>) of GameGlobalsFactory_Access;
   type GameGlobalsFactory_Access_Array_Access is access all GameGlobalsFactory_Access_Array;

   type GameGlobalsFactory is new Java_Object with record
      newCanvas : Boolean;
      newDisplaybleTime : Long_Long_Integer;
      point : GPoint_Access;
   end record;
   instance : GameGlobalsFactory_Access;

   procedure Initialize (This : in out GameGlobalsFactory'Class);
   function Create return GameGlobalsFactory_Access;
   function getInstance return GameGlobalsFactory_Access;
   procedure getInstance;

end org.allbinary.canvas.GameGlobalsFactory_Package;


