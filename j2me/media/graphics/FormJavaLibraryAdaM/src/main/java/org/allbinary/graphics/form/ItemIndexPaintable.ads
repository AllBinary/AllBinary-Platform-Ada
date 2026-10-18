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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.ItemIndexPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;

   type ItemIndexPaintable is tagged;
   type ItemIndexPaintable_Access is access all ItemIndexPaintable'Class;
   type ItemIndexPaintable_Access_Array is array (Natural range <>) of ItemIndexPaintable_Access;
   type ItemIndexPaintable_Access_Array_Access is access all ItemIndexPaintable_Access_Array;
   type ItemIndexPaintable_Access_Array_Access_Array is array (Natural range <>) of ItemIndexPaintable_Access_Array_Access;
   type ItemIndexPaintable_Access_Array_Access_Array_Access is access all ItemIndexPaintable_Access_Array_Access_Array;

   type ItemIndexPaintable is new Java_Object with null record;
   instance : ItemIndexPaintable_Access;

   procedure Initialize (This : in out ItemIndexPaintable'Class);
   function Create return ItemIndexPaintable_Access;
   function getInstance return ItemIndexPaintable_Access;
   function paint (This : in out ItemIndexPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure paint (This : in out ItemIndexPaintable; graphics_Param : access Graphics_Package.Graphics'Class; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ItemIndexPaintable_Package;


