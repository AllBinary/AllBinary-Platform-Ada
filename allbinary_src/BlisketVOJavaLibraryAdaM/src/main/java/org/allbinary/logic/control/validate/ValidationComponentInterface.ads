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
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;

package org.allbinary.logic.control.validate.ValidationComponentInterface_Package is

   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;

   type ValidationComponentInterface is interface and TransformInterface and ValidationInterface;
   type ValidationComponentInterface_Access is access all ValidationComponentInterface'Class;
   type ValidationComponentInterface_Access_Array is array (Natural range <>) of ValidationComponentInterface_Access;
   type ValidationComponentInterface_Access_Array_Access is access all ValidationComponentInterface_Access_Array;

end org.allbinary.logic.control.validate.ValidationComponentInterface_Package;


