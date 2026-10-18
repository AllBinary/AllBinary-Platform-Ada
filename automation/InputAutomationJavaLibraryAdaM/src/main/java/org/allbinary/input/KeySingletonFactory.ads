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
--  with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.input.KeySingletonFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type KeySingletonFactory is tagged;
   type KeySingletonFactory_Access is access all KeySingletonFactory'Class;
   type KeySingletonFactory_Access_Array is array (Natural range <>) of KeySingletonFactory_Access;
   type KeySingletonFactory_Access_Array_Access is access all KeySingletonFactory_Access_Array;
   type KeySingletonFactory_Access_Array_Access_Array is array (Natural range <>) of KeySingletonFactory_Access_Array_Access;
   type KeySingletonFactory_Access_Array_Access_Array_Access is access all KeySingletonFactory_Access_Array_Access_Array;

   type KeySingletonFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   keyStringHashtable : ABHashtable_Access;
   keyArray : Integer_Array_Access;

   procedure Initialize (This : in out KeySingletonFactory'Class);
   function Create return KeySingletonFactory_Access;
   function getHashtable return ABHashtable_Access;
   function getInstance (index : Integer) return Integer;
   procedure getInstance (index : Integer);
   function getArray return Integer_Array_Access;

end org.allbinary.input.KeySingletonFactory_Package;


