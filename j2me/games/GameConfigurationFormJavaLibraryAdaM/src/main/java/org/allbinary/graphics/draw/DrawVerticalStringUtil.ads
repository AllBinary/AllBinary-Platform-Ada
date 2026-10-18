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

package org.allbinary.graphics.draw.DrawVerticalStringUtil_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type DrawVerticalStringUtil is tagged;
   type DrawVerticalStringUtil_Access is access all DrawVerticalStringUtil'Class;
   type DrawVerticalStringUtil_Access_Array is array (Natural range <>) of DrawVerticalStringUtil_Access;
   type DrawVerticalStringUtil_Access_Array_Access is access all DrawVerticalStringUtil_Access_Array;
   type DrawVerticalStringUtil_Access_Array_Access_Array is array (Natural range <>) of DrawVerticalStringUtil_Access_Array_Access;
   type DrawVerticalStringUtil_Access_Array_Access_Array_Access is access all DrawVerticalStringUtil_Access_Array_Access_Array;

   type DrawVerticalStringUtil is new Java_Object with record
      EMPTY_STRING : Unbounded_String;
      anchor : Integer;
      charHeight : Integer;
      offsetY : Integer;
      offsetXArray : Integer_Array_Access;
   end record;
   instance : DrawVerticalStringUtil_Access;

   procedure Initialize (This : in out DrawVerticalStringUtil'Class);
   function Create return DrawVerticalStringUtil_Access;
   function getInstance return DrawVerticalStringUtil_Access;
   procedure updateMeasurement (This : in out DrawVerticalStringUtil; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String);
   procedure paintVerticle (This : in out DrawVerticalStringUtil; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; x : Integer; y : Integer; anchor : Integer);
   procedure drawCenterString (This : in out DrawVerticalStringUtil; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; offset : Integer; length : Integer; x : Integer; y : Integer);
   procedure drawCenterStrings (This : in out DrawVerticalStringUtil; graphics_Param : access Graphics_Package.Graphics'Class; stringArray : Unbounded_String_Array_Access; maxWidth : Integer; x : Integer; y : Integer);

end org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;


