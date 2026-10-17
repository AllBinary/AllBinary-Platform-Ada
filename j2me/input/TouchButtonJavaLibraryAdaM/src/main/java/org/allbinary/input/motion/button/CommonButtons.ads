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
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;

package org.allbinary.input.motion.button.CommonButtons_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;

   type CommonButtons is tagged;
   type CommonButtons_Access is access all CommonButtons'Class;
   type CommonButtons_Access_Array is array (Natural range <>) of CommonButtons_Access;
   type CommonButtons_Access_Array_Access is access all CommonButtons_Access_Array;

   type CommonButtons is new Java_Object with record
      STANDARD_BUTTON_SIZE : Integer;
      NORMAL_BUTTON : Rectangle_Access;
      LARGE_BUTTON : Rectangle_Access;
   end record;
   instance : CommonButtons_Access;

   procedure Initialize (This : in out CommonButtons'Class);
   function Create return CommonButtons_Access;
   function getInstance return CommonButtons_Access;
   procedure getInstance;

end org.allbinary.input.motion.button.CommonButtons_Package;


