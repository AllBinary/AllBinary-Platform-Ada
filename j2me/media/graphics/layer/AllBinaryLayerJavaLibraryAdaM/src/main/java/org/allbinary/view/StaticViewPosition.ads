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
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package org.allbinary.view.StaticViewPosition_Package is


   type StaticViewPosition is tagged;
   type StaticViewPosition_Access is access all StaticViewPosition'Class;
   type StaticViewPosition_Access_Array is array (Natural range <>) of StaticViewPosition_Access;
   type StaticViewPosition_Access_Array_Access is access all StaticViewPosition_Access_Array;

   type StaticViewPosition is new ViewPosition with null record;

   procedure Initialize (This : in out StaticViewPosition'Class; x : Integer; y : Integer; z : Integer);
   function Create (x : Integer; y : Integer; z : Integer) return StaticViewPosition_Access;
   function getX (This : in out StaticViewPosition) return Integer;
   procedure getX (This : in out StaticViewPosition);
   function getY (This : in out StaticViewPosition) return Integer;
   procedure getY (This : in out StaticViewPosition);
   function getZ (This : in out StaticViewPosition) return Integer;
   procedure getZ (This : in out StaticViewPosition);

end org.allbinary.view.StaticViewPosition_Package;


