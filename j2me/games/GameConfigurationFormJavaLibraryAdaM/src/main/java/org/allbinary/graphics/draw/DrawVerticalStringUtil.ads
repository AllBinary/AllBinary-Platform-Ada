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

limited with org.allbinary.graphics.draw.DrawVerticalStringUtil_Package;
package org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References is
   type DrawVerticalStringUtil_Access is access all org.allbinary.graphics.draw.DrawVerticalStringUtil_Package.DrawVerticalStringUtil'Class;
   type DrawVerticalStringUtil_Access_Array is array (Natural range <>) of DrawVerticalStringUtil_Access;
   type DrawVerticalStringUtil_Access_Array_Access is access all DrawVerticalStringUtil_Access_Array;
   type DrawVerticalStringUtil_Access_Array_Access_Array is array (Natural range <>) of DrawVerticalStringUtil_Access_Array_Access;
   type DrawVerticalStringUtil_Access_Array_Access_Array_Access is access all DrawVerticalStringUtil_Access_Array_Access_Array;
end org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References;

with org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;

package org.allbinary.graphics.draw.DrawVerticalStringUtil_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DrawVerticalStringUtil_Access is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access;
   function "=" (Left, Right : DrawVerticalStringUtil_Access) return Boolean renames org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References."=";
   subtype DrawVerticalStringUtil_Access_Array is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access_Array;
   function "=" (Left, Right : DrawVerticalStringUtil_Access_Array) return Boolean renames org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References."=";
   subtype DrawVerticalStringUtil_Access_Array_Access is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access_Array_Access;
   function "=" (Left, Right : DrawVerticalStringUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References."=";
   subtype DrawVerticalStringUtil_Access_Array_Access_Array is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DrawVerticalStringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References."=";
   subtype DrawVerticalStringUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References.DrawVerticalStringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DrawVerticalStringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.DrawVerticalStringUtil_Package_References."=";

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


