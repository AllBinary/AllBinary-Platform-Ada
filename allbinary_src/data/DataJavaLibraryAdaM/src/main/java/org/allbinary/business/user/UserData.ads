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

package org.allbinary.business.user.UserData_Package is


   type UserData is tagged;
   type UserData_Access is access all UserData'Class;
   type UserData_Access_Array is array (Natural range <>) of UserData_Access;
   type UserData_Access_Array_Access is access all UserData_Access_Array;

   type UserData is new Java_Object with null record;
   MAXLEN : Integer;
   NAME : Unbounded_String;
   USERNAME : Unbounded_String;
   PASSWORD : Unbounded_String;
   PREFIXNAME : Unbounded_String;
   FIRSTNAME : Unbounded_String;
   LASTNAME : Unbounded_String;
   MIDDLENAME : Unbounded_String;
   SUFFIXNAME : Unbounded_String;
   COMPANY : Unbounded_String;
   POSITIONATCOMPANY : Unbounded_String;
   MAINEMAIL : Unbounded_String;
   SECONDARYEMAIL : Unbounded_String;
   HOMEPHONE : Unbounded_String;
   CELLPHONE : Unbounded_String;
   WORKPHONE : Unbounded_String;
   OTHERCONTACT : Unbounded_String;
   ELECTRONICDEVICE : Unbounded_String;
   FAX : Unbounded_String;
   SECRET : Unbounded_String;
   PERMISSIONS : Unbounded_String;
   CONFIGURATION : Unbounded_String;

   procedure Initialize (This : in out UserData'Class);
   function Create return UserData_Access;

end org.allbinary.business.user.UserData_Package;


