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
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;

package org.allbinary.graphics.form.item.CustomItemUtil_Package is


   type CustomItemUtil is tagged;
   type CustomItemUtil_Access is access all CustomItemUtil'Class;
   type CustomItemUtil_Access_Array is array (Natural range <>) of CustomItemUtil_Access;
   type CustomItemUtil_Access_Array_Access is access all CustomItemUtil_Access_Array;
   type CustomItemUtil_Access_Array_Access_Array is array (Natural range <>) of CustomItemUtil_Access_Array_Access;
   type CustomItemUtil_Access_Array_Access_Array_Access is access all CustomItemUtil_Access_Array_Access_Array;

   type CustomItemUtil is new Java_Object with record
      CUSTOM_ITEM_ARRAY : ABCustomItem_Access_Array_Access;
   end record;
   instance : CustomItemUtil_Access;

   procedure Initialize (This : in out CustomItemUtil'Class);
   function Create return CustomItemUtil_Access;
   function getInstance return CustomItemUtil_Access;

end org.allbinary.graphics.form.item.CustomItemUtil_Package;


