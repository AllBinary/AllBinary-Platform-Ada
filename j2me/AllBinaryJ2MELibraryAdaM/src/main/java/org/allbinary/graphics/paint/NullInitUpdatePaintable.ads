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
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;

package org.allbinary.graphics.paint.NullInitUpdatePaintable_Package is


   type NullInitUpdatePaintable is tagged;
   type NullInitUpdatePaintable_Access is access all NullInitUpdatePaintable'Class;
   type NullInitUpdatePaintable_Access_Array is array (Natural range <>) of NullInitUpdatePaintable_Access;
   type NullInitUpdatePaintable_Access_Array_Access is access all NullInitUpdatePaintable_Access_Array;

   type NullInitUpdatePaintable is new InitUpdatePaintable with null record;
   SINGLETON : NullInitUpdatePaintable_Access;

   procedure Initialize (This : in out NullInitUpdatePaintable'Class);
   function Create return NullInitUpdatePaintable_Access;
   function getInstance return InitUpdatePaintable_Access;

end org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;


