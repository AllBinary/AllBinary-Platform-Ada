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

package org.allbinary.business.installer.InitializerData_Package is


   type InitializerData is tagged;
   type InitializerData_Access is access all InitializerData'Class;
   type InitializerData_Access_Array is array (Natural range <>) of InitializerData_Access;
   type InitializerData_Access_Array_Access is access all InitializerData_Access_Array;
   type InitializerData_Access_Array_Access_Array is array (Natural range <>) of InitializerData_Access_Array_Access;
   type InitializerData_Access_Array_Access_Array_Access is access all InitializerData_Access_Array_Access_Array;

   type InitializerData is new Java_Object with record
      DBUSER : Unbounded_String;
      DBPASSWORD : Unbounded_String;
      ADMINJDBCDRIVER : Unbounded_String;
      ADMINSCHEMA : Unbounded_String;
      ADMINSERVER : Unbounded_String;
      ADMINPORT : Unbounded_String;
      CUSTOMERJDBCDRIVER : Unbounded_String;
      CUSTOMERNAME : Unbounded_String;
      CUSTOMERUSERNAME : Unbounded_String;
      CUSTOMERPASSWORD : Unbounded_String;
      CUSTOMERSCHEMA : Unbounded_String;
      CUSTOMERSERVER : Unbounded_String;
      CUSTOMERPORT : Unbounded_String;
      HISTORYJDBCDRIVER : Unbounded_String;
      HISTORYNAME : Unbounded_String;
      HISTORYUSERNAME : Unbounded_String;
      HISTORYPASSWORD : Unbounded_String;
      HISTORYSCHEMA : Unbounded_String;
      HISTORYSERVER : Unbounded_String;
      HISTORYPORT : Unbounded_String;
      LOGJDBCDRIVER : Unbounded_String;
      LOGNAME : Unbounded_String;
      LOGUSERNAME : Unbounded_String;
      LOGPASSWORD : Unbounded_String;
      LOGSCHEMA : Unbounded_String;
      LOGSERVER : Unbounded_String;
      LOGPORT : Unbounded_String;
      INVENTORYJDBCDRIVER : Unbounded_String;
      INVENTORYNAME : Unbounded_String;
      INVENTORYUSERNAME : Unbounded_String;
      INVENTORYPASSWORD : Unbounded_String;
      INVENTORYSCHEMA : Unbounded_String;
      INVENTORYSERVER : Unbounded_String;
      INVENTORYPORT : Unbounded_String;
      STATICPAGESJDBCDRIVER : Unbounded_String;
      STATICPAGESNAME : Unbounded_String;
      STATICPAGESUSERNAME : Unbounded_String;
      STATICPAGESPASSWORD : Unbounded_String;
      STATICPAGESSCHEMA : Unbounded_String;
      STATICPAGESSERVER : Unbounded_String;
      STATICPAGESPORT : Unbounded_String;
   end record;
   instance : InitializerData_Access;

   procedure Initialize (This : in out InitializerData'Class);
   function Create return InitializerData_Access;
   function getInstance return InitializerData_Access;
   function getJdbcDriverSolutionInfo (This : in out InitializerData) return Unbounded_String;

end org.allbinary.business.installer.InitializerData_Package;


