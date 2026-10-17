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

package org.allbinary.logic.communication.sql.AbSqlData_Package is


   type AbSqlData is tagged;
   type AbSqlData_Access is access all AbSqlData'Class;
   type AbSqlData_Access_Array is array (Natural range <>) of AbSqlData_Access;
   type AbSqlData_Access_Array_Access is access all AbSqlData_Access_Array;

   type AbSqlData is new Java_Object with null record;
   ANYSINGLECHARACTERMATCH : Unbounded_String;
   ANYMULTICHARACTERMATCH : Unbounded_String;
   MAXNUM : Integer;
   MINSTRING : Integer;
   MAXSTRING : Integer;
   MAXBLOB : Integer;

   procedure Initialize (This : in out AbSqlData'Class);
   function Create return AbSqlData_Access;

end org.allbinary.logic.communication.sql.AbSqlData_Package;


