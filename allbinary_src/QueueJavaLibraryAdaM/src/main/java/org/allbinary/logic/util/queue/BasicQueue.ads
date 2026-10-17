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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.logic.util.queue.BasicQueue_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BasicQueue is tagged;
   type BasicQueue_Access is access all BasicQueue'Class;
   type BasicQueue_Access_Array is array (Natural range <>) of BasicQueue_Access;
   type BasicQueue_Access_Array_Access is access all BasicQueue_Access_Array;

   type BasicQueue is new Java_Object with record
      queueVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BasicQueue'Class);
   function Create return BasicQueue_Access;
   function offer (This : in out BasicQueue; anyType_Param : access Java_Object'Class) return Boolean;
   procedure offer (This : in out BasicQueue; anyType_Param : access Java_Object'Class);
   procedure remove (This : in out BasicQueue; anyType_Param : access Java_Object'Class);
   function removeLast (This : in out BasicQueue) return Java_Object_Access;

end org.allbinary.logic.util.queue.BasicQueue_Package;


