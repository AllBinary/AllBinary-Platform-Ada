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

package org.allbinary.graphics.threed.RatioProcessor_Package is


   type RatioProcessor is tagged;
   type RatioProcessor_Access is access all RatioProcessor'Class;
   type RatioProcessor_Access_Array is array (Natural range <>) of RatioProcessor_Access;
   type RatioProcessor_Access_Array_Access is access all RatioProcessor_Access_Array;

   type RatioProcessor is new Java_Object with null record;

   procedure Initialize (This : in out RatioProcessor'Class);
   function Create return RatioProcessor_Access;
   procedure setCustom (This : in out RatioProcessor; width : Integer; height : Integer; ratio : Float);

end org.allbinary.graphics.threed.RatioProcessor_Package;


