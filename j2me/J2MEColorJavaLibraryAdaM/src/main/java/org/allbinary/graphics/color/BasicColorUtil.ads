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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.graphics.color.BasicColorUtil_Package is


   type BasicColorUtil is tagged;
   type BasicColorUtil_Access is access all BasicColorUtil'Class;
   type BasicColorUtil_Access_Array is array (Natural range <>) of BasicColorUtil_Access;
   type BasicColorUtil_Access_Array_Access is access all BasicColorUtil_Access_Array;
   type BasicColorUtil_Access_Array_Access_Array is array (Natural range <>) of BasicColorUtil_Access_Array_Access;
   type BasicColorUtil_Access_Array_Access_Array_Access is access all BasicColorUtil_Access_Array_Access_Array;

   type BasicColorUtil is new Java_Object with record
      ZERO_ARRAY : BasicColor_Access_Array_Access;
      ALPHA : Integer;
      isAlpha : Boolean;
      ffOpaque : Boolean;
   end record;
   instance : BasicColorUtil_Access;

   procedure Initialize (This : in out BasicColorUtil'Class);
   function Create return BasicColorUtil_Access;
   function getInstance return BasicColorUtil_Access;
   function getRGB (This : in out BasicColorUtil; red : Integer; green : Integer; blue : Integer) return Integer;
   procedure getRGB (This : in out BasicColorUtil; red : Integer; green : Integer; blue : Integer);
   function getARGB (This : in out BasicColorUtil; alphaValue : Integer; r : Integer; g : Integer; b : Integer) return Integer;
   procedure getARGB (This : in out BasicColorUtil; alphaValue : Integer; r : Integer; g : Integer; b : Integer);
   function get (This : in out BasicColorUtil; alphaValue : Integer; color : Integer) return Integer;
   procedure get (This : in out BasicColorUtil; alphaValue : Integer; color : Integer);
   function invert (This : in out BasicColorUtil; color : Integer) return Integer;
   procedure invert (This : in out BasicColorUtil; color : Integer);

end org.allbinary.graphics.color.BasicColorUtil_Package;


