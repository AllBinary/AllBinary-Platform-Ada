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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;

package org.allbinary.view.ViewPosition_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type ViewPosition is tagged;
   type ViewPosition_Access is access all ViewPosition'Class;
   type ViewPosition_Access_Array is array (Natural range <>) of ViewPosition_Access;
   type ViewPosition_Access_Array_Access is access all ViewPosition_Access_Array;

   type ViewPosition is new ViewPositionBase with record
      allbinaryLayer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out ViewPosition'Class; x : Integer; y : Integer; z : Integer);
   function Create (x : Integer; y : Integer; z : Integer) return ViewPosition_Access;
   function getInstanceD return ViewPosition_Access;
   function getX (This : in out ViewPosition) return Integer;
   function getY (This : in out ViewPosition) return Integer;
   function getZ (This : in out ViewPosition) return Integer;
   function getX2 (This : in out ViewPosition) return Integer;
   function getY2 (This : in out ViewPosition) return Integer;
   function getZ2 (This : in out ViewPosition) return Integer;
   procedure setAllbinaryLayer (This : in out ViewPosition; allbinaryLayer_Param : access Java_Object'Class);

end org.allbinary.view.ViewPosition_Package;


