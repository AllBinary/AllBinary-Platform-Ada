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
with org.allbinary.graphics.displayable.ScalableListener_Package; use org.allbinary.graphics.displayable.ScalableListener_Package;

package org.allbinary.graphics.displayable.BaseScalable_Package is


   type BaseScalable is tagged;
   type BaseScalable_Access is access all BaseScalable'Class;
   type BaseScalable_Access_Array is array (Natural range <>) of BaseScalable_Access;
   type BaseScalable_Access_Array_Access is access all BaseScalable_Access_Array;

   type BaseScalable is new ScalableListener with null record;

   procedure Initialize (This : in out BaseScalable'Class);
   function Create return BaseScalable_Access;
   function getRatio (This : in out BaseScalable; ratio : Float) return Float;
   procedure getRatio (This : in out BaseScalable; ratio : Float);
   function getLeft (This : in out BaseScalable; xOffset : Integer) return Integer;
   procedure getLeft (This : in out BaseScalable; xOffset : Integer);
   function getTop (This : in out BaseScalable; yOffset : Integer) return Integer;
   procedure getTop (This : in out BaseScalable; yOffset : Integer);
   procedure scale (This : in out BaseScalable; ratio : Float);

end org.allbinary.graphics.displayable.BaseScalable_Package;


