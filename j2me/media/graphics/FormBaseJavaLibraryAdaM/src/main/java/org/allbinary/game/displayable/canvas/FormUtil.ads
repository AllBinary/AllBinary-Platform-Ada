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
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;

package org.allbinary.game.displayable.canvas.FormUtil_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;

   type FormUtil is tagged;
   type FormUtil_Access is access all FormUtil'Class;
   type FormUtil_Access_Array is array (Natural range <>) of FormUtil_Access;
   type FormUtil_Access_Array_Access is access all FormUtil_Access_Array;
   type FormUtil_Access_Array_Access_Array is array (Natural range <>) of FormUtil_Access_Array_Access;
   type FormUtil_Access_Array_Access_Array_Access is access all FormUtil_Access_Array_Access_Array;

   type FormUtil is new Java_Object with null record;
   instance : FormUtil_Access;

   procedure Initialize (This : in out FormUtil'Class);
   function Create return FormUtil_Access;
   function getInstance return FormUtil_Access;
   function createFormRectangle (This : in out FormUtil) return Rectangle_Access;

end org.allbinary.game.displayable.canvas.FormUtil_Package;


