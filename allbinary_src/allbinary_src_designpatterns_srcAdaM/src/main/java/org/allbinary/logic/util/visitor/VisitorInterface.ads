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

package org.allbinary.logic.util.visitor.VisitorInterface_Package is


   type VisitorInterface is interface;
   type VisitorInterface_Access is access all VisitorInterface'Class;
   type VisitorInterface_Access_Array is array (Natural range <>) of VisitorInterface_Access;
   type VisitorInterface_Access_Array_Access is access all VisitorInterface_Access_Array;
   type VisitorInterface_Access_Array_Access_Array is array (Natural range <>) of VisitorInterface_Access_Array_Access;
   type VisitorInterface_Access_Array_Access_Array_Access is access all VisitorInterface_Access_Array_Access_Array;
   function visit (This : in out VisitorInterface; anyType_Param : access Java_Object'Class) return Java_Object_Access is abstract;

end org.allbinary.logic.util.visitor.VisitorInterface_Package;


