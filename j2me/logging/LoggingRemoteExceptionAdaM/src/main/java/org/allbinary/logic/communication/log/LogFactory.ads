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
with org.allbinary.logic.communication.log.Log_Package; use org.allbinary.logic.communication.log.Log_Package;

package org.allbinary.logic.communication.log.LogFactory_Package is


   type LogFactory is tagged;
   type LogFactory_Access is access all LogFactory'Class;
   type LogFactory_Access_Array is array (Natural range <>) of LogFactory_Access;
   type LogFactory_Access_Array_Access is access all LogFactory_Access_Array;

   type LogFactory is new Java_Object with null record;

   procedure Initialize (This : in out LogFactory'Class);
   function Create return LogFactory_Access;
   function getInstance (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) return Log_Access;
   procedure getInstance (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class);
   function getInstanceF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String) return Log_Access;
   procedure getInstanceF (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String);

end org.allbinary.logic.communication.log.LogFactory_Package;


