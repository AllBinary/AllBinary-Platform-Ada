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

package org.allbinary.logic.communication.log.PreLogUtil_Package is


   type PreLogUtil is tagged;
   type PreLogUtil_Access is access all PreLogUtil'Class;
   type PreLogUtil_Access_Array is array (Natural range <>) of PreLogUtil_Access;
   type PreLogUtil_Access_Array_Access is access all PreLogUtil_Access_Array;
   type PreLogUtil_Access_Array_Access_Array is array (Natural range <>) of PreLogUtil_Access_Array_Access;
   type PreLogUtil_Access_Array_Access_Array_Access is access all PreLogUtil_Access_Array_Access_Array;

   type PreLogUtil is new Java_Object with null record;

   procedure Initialize (This : in out PreLogUtil'Class);
   function Create return PreLogUtil_Access;
   procedure put (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String);
   procedure putOE (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class);
   procedure putSE (specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class);

end org.allbinary.logic.communication.log.PreLogUtil_Package;


