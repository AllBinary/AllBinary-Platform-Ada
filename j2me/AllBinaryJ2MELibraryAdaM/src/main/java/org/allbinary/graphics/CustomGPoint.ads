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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;

package org.allbinary.graphics.CustomGPoint_Package is


   type CustomGPoint is tagged;
   type CustomGPoint_Access is access all CustomGPoint'Class;
   type CustomGPoint_Access_Array is array (Natural range <>) of CustomGPoint_Access;
   type CustomGPoint_Access_Array_Access is access all CustomGPoint_Access_Array;

   type CustomGPoint is new GPoint with record
      cx : Integer;
      cy : Integer;
      cz : Integer;
   end record;
   NULL_CUSTOM_POINT : CustomGPoint_Access;

   procedure Initialize (This : in out CustomGPoint'Class; x : Integer; y : Integer; z : Integer);
   function Create (x : Integer; y : Integer; z : Integer) return CustomGPoint_Access;
   function getInstance (point : GPoint_Access) return CustomGPoint_Access;
   procedure getInstance (point : GPoint_Access);
   function getInstance3 (x : Integer; y : Integer) return CustomGPoint_Access;
   procedure getInstance3 (x : Integer; y : Integer);
   procedure setX (This : in out CustomGPoint; x : Integer);
   function getX (This : in out CustomGPoint) return Integer;
   procedure getX (This : in out CustomGPoint);
   procedure setY (This : in out CustomGPoint; y : Integer);
   function getY (This : in out CustomGPoint) return Integer;
   procedure getY (This : in out CustomGPoint);
   procedure setZ (This : in out CustomGPoint; z : Integer);
   function getZ (This : in out CustomGPoint) return Integer;
   procedure getZ (This : in out CustomGPoint);

end org.allbinary.graphics.CustomGPoint_Package;


