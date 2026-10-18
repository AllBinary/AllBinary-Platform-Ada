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

package org.allbinary.logic.util.queue.QueueInterface_Package is


   type QueueInterface is interface;
   type QueueInterface_Access is access all QueueInterface'Class;
   type QueueInterface_Access_Array is array (Natural range <>) of QueueInterface_Access;
   type QueueInterface_Access_Array_Access is access all QueueInterface_Access_Array;
   type QueueInterface_Access_Array_Access_Array is array (Natural range <>) of QueueInterface_Access_Array_Access;
   type QueueInterface_Access_Array_Access_Array_Access is access all QueueInterface_Access_Array_Access_Array;
   function offer (This : in out QueueInterface; anyType_Param : access Java_Object'Class) return Boolean is abstract;
   procedure remove (This : in out QueueInterface; anyType_Param : access Java_Object'Class) is abstract;
   function remove (This : in out QueueInterface) return Java_Object_Access is abstract;

end org.allbinary.logic.util.queue.QueueInterface_Package;


