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
with org.allbinary.graphics.j2me.MyFrame_Package; use org.allbinary.graphics.j2me.MyFrame_Package;

package org.allbinary.graphics.j2me.StatusFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type StatusFactory is tagged;
   type StatusFactory_Access is access all StatusFactory'Class;
   type StatusFactory_Access_Array is array (Natural range <>) of StatusFactory_Access;
   type StatusFactory_Access_Array_Access is access all StatusFactory_Access_Array;

   type StatusFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      SETSTATUS : Unbounded_String;
      STATUS_LABEL : Unbounded_String;
   end record;
   instance : StatusFactory_Access;

   procedure Initialize (This : in out StatusFactory'Class);
   function Create return StatusFactory_Access;
   function getInstance return StatusFactory_Access;
   procedure setStatusNoLog (This : in out StatusFactory; status : Unbounded_String);
   procedure setStatus_Case (This : in out StatusFactory; status : Unbounded_String);

end org.allbinary.graphics.j2me.StatusFactory_Package;


