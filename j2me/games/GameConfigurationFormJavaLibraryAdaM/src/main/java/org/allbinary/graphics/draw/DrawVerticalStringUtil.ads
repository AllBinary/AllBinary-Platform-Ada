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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package; use org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package org.allbinary.graphics.draw.DrawVerticalStringUtil_Package is

   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package OpenGLFeatureUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureUtil_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type DrawVerticalStringUtil is tagged;
   type DrawVerticalStringUtil_Access is access all DrawVerticalStringUtil'Class;
   type DrawVerticalStringUtil_Access_Array is array (Natural range <>) of DrawVerticalStringUtil_Access;
   type DrawVerticalStringUtil_Access_Array_Access is access all DrawVerticalStringUtil_Access_Array;

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
   procedure updateMeasurement (This : in out DrawVerticalStringUtil; graphics : Graphics_Access; string_Id : Unbounded_String);
   procedure paintVerticle (This : in out DrawVerticalStringUtil; graphics : Graphics_Access; string_Id : Unbounded_String; x : Integer; y : Integer; anchor : Integer);
   procedure drawCenterString (This : in out DrawVerticalStringUtil; graphics : Graphics_Access; string_Id : Unbounded_String; offset : Integer; length : Integer; x : Integer; y : Integer);
   procedure drawCenterStrings (This : in out DrawVerticalStringUtil; graphics : Graphics_Access; stringArray : Unbounded_String_Array_Access; maxWidth : Integer; x : Integer; y : Integer);

end org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;


