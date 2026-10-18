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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.globals.ClassLoader_Package; use org.allbinary.globals.ClassLoader_Package;

package org.allbinary.globals.Globals_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type Globals is tagged;
   type Globals_Access is access all Globals'Class;
   type Globals_Access_Array is array (Natural range <>) of Globals_Access;
   type Globals_Access_Array_Access is access all Globals_Access_Array;
   type Globals_Access_Array_Access_Array is array (Natural range <>) of Globals_Access_Array_Access;
   type Globals_Access_Array_Access_Array_Access is access all Globals_Access_Array_Access_Array;

   type Globals is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : Globals_Access;

   procedure Initialize (This : in out Globals'Class);
   function Create return Globals_Access;
   function getInstance return Globals_Access;
   procedure init (This : in out Globals; classLoader_Param : access ClassLoader_Package.ClassLoader'Class; pathString : Unbounded_String);

end org.allbinary.globals.Globals_Package;


