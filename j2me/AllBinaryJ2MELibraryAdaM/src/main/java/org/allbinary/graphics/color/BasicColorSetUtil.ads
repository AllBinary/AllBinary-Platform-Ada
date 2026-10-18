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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.graphics.color.BasicColorSetUtil_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type BasicColorSetUtil is tagged;
   type BasicColorSetUtil_Access is access all BasicColorSetUtil'Class;
   type BasicColorSetUtil_Access_Array is array (Natural range <>) of BasicColorSetUtil_Access;
   type BasicColorSetUtil_Access_Array_Access is access all BasicColorSetUtil_Access_Array;
   type BasicColorSetUtil_Access_Array_Access_Array is array (Natural range <>) of BasicColorSetUtil_Access_Array_Access;
   type BasicColorSetUtil_Access_Array_Access_Array_Access is access all BasicColorSetUtil_Access_Array_Access_Array;

   type BasicColorSetUtil is new Java_Object with null record;
   instance : BasicColorSetUtil_Access;

   procedure Initialize (This : in out BasicColorSetUtil'Class);
   function Create return BasicColorSetUtil_Access;
   function getInstance return BasicColorSetUtil_Access;
   procedure setBasicColorP (This : in out BasicColorSetUtil; graphics_Param : access Graphics_Package.Graphics'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setBasicColorP3 (This : in out BasicColorSetUtil; graphics_Param : access Graphics_Package.Graphics'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; value : Integer);

end org.allbinary.graphics.color.BasicColorSetUtil_Package;


