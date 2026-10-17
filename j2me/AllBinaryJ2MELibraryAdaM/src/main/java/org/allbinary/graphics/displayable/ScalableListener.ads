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

package org.allbinary.graphics.displayable.ScalableListener_Package is


   type ScalableListener is interface;
   type ScalableListener_Access is access all ScalableListener'Class;
   type ScalableListener_Access_Array is array (Natural range <>) of ScalableListener_Access;
   type ScalableListener_Access_Array_Access is access all ScalableListener_Access_Array;
   function getRatio (This : in out ScalableListener; ratio : Float) return Float is abstract;
   function getLeft (This : in out ScalableListener; xOffset : Integer) return Integer is abstract;
   function getTop (This : in out ScalableListener; yOffset : Integer) return Integer is abstract;
   procedure scale (This : in out ScalableListener; ratio : Float) is abstract;

end org.allbinary.graphics.displayable.ScalableListener_Package;


