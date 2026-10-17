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
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.ItemIndexDx_Package is

   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;

   type ItemIndexDx is tagged;
   type ItemIndexDx_Access is access all ItemIndexDx'Class;
   type ItemIndexDx_Access_Array is array (Natural range <>) of ItemIndexDx_Access;
   type ItemIndexDx_Access_Array_Access is access all ItemIndexDx_Access_Array;

   type ItemIndexDx is new Java_Object with null record;
   instance : ItemIndexDx_Access;

   procedure Initialize (This : in out ItemIndexDx'Class);
   function Create return ItemIndexDx_Access;
   function getInstance return ItemIndexDx_Access;
   function getDx (This : in out ItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer;
   procedure getDx (This : in out ItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer);

end org.allbinary.graphics.form.ItemIndexDx_Package;


