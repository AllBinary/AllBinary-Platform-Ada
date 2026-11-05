-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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

limited with org.allbinary.game.layer.MultiSelectPaintable_Package;
package org.allbinary.game.layer.MultiSelectPaintable_Package_References is
   type MultiSelectPaintable_Access is access all org.allbinary.game.layer.MultiSelectPaintable_Package.MultiSelectPaintable'Class;
   type MultiSelectPaintable_Access_Array is array (Natural range <>) of MultiSelectPaintable_Access;
   type MultiSelectPaintable_Access_Array_Access is access all MultiSelectPaintable_Access_Array;
   type MultiSelectPaintable_Access_Array_Access_Array is array (Natural range <>) of MultiSelectPaintable_Access_Array_Access;
   type MultiSelectPaintable_Access_Array_Access_Array_Access is access all MultiSelectPaintable_Access_Array_Access_Array;
end org.allbinary.game.layer.MultiSelectPaintable_Package_References;

with org.allbinary.game.layer.MultiSelectPaintable_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.layer.SelectionHudPaintable_Package; use org.allbinary.game.layer.SelectionHudPaintable_Package;

package org.allbinary.game.layer.MultiSelectPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MultiSelectPaintable_Access is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access;
   function "=" (Left, Right : MultiSelectPaintable_Access) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";
   subtype MultiSelectPaintable_Access_Array is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access_Array;
   function "=" (Left, Right : MultiSelectPaintable_Access_Array) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";
   subtype MultiSelectPaintable_Access_Array_Access is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access_Array_Access;
   function "=" (Left, Right : MultiSelectPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";
   subtype MultiSelectPaintable_Access_Array_Access_Array is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : MultiSelectPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";
   subtype MultiSelectPaintable_Access_Array_Access_Array_Access is org.allbinary.game.layer.MultiSelectPaintable_Package_References.MultiSelectPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiSelectPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.MultiSelectPaintable_Package_References."=";

   type MultiSelectPaintable is new SelectionHudPaintable with record
      rootNameList : BasicArrayList_Access;
      totalCharArray : Character_Array_Access;
      rootNamesString : Unbounded_String;
      TOTAL : Unbounded_String;
      MultiSelectPaintable_Field_backgroundColor : Integer;
      totalWidth : Integer;
      textLine2Y : Integer;
   end record;

   procedure Initialize (This : in out MultiSelectPaintable'Class);
   function Create return MultiSelectPaintable_Access;
   procedure updateMeasurement (This : in out MultiSelectPaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure update (This : in out MultiSelectPaintable; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure clear (This : in out MultiSelectPaintable);
   procedure paint (This : in out MultiSelectPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.MultiSelectPaintable_Package;


