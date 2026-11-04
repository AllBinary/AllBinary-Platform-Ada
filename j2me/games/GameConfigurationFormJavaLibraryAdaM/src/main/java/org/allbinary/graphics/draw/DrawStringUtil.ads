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

limited with org.allbinary.graphics.draw.DrawStringUtil_Package;
package org.allbinary.graphics.draw.DrawStringUtil_Package_References is
   type DrawStringUtil_Access is access all org.allbinary.graphics.draw.DrawStringUtil_Package.DrawStringUtil'Class;
   type DrawStringUtil_Access_Array is array (Natural range <>) of DrawStringUtil_Access;
   type DrawStringUtil_Access_Array_Access is access all DrawStringUtil_Access_Array;
   type DrawStringUtil_Access_Array_Access_Array is array (Natural range <>) of DrawStringUtil_Access_Array_Access;
   type DrawStringUtil_Access_Array_Access_Array_Access is access all DrawStringUtil_Access_Array_Access_Array;
end org.allbinary.graphics.draw.DrawStringUtil_Package_References;

with org.allbinary.graphics.draw.DrawStringUtil_Package_References;
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

package org.allbinary.graphics.draw.DrawStringUtil_Package is

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


   subtype DrawStringUtil_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access;
   function "=" (Left, Right : DrawStringUtil_Access) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array;
   function "=" (Left, Right : DrawStringUtil_Access_Array) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access;
   function "=" (Left, Right : DrawStringUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DrawStringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DrawStringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";

   type DrawStringUtil is new Java_Object with record
      EMPTY_STRING : Unbounded_String;
      anchor : Integer;
   end record;
   instance : DrawStringUtil_Access;

   procedure Initialize (This : in out DrawStringUtil'Class);
   function Create return DrawStringUtil_Access;
   function getInstance return DrawStringUtil_Access;
   procedure drawCenterString (This : in out DrawStringUtil; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; offset : Integer; length : Integer; x : Integer; y : Integer);
   procedure drawCenterStrings (This : in out DrawStringUtil; graphics_Param : access Graphics_Package.Graphics'Class; stringArray : Unbounded_String_Array_Access; maxWidth : Integer; charHeight : Integer; x : Integer; y : Integer);

end org.allbinary.graphics.draw.DrawStringUtil_Package;


