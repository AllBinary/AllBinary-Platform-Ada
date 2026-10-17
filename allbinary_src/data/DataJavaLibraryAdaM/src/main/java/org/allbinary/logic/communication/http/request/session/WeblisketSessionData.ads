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

package org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package is


   type WeblisketSessionData is tagged;
   type WeblisketSessionData_Access is access all WeblisketSessionData'Class;
   type WeblisketSessionData_Access_Array is array (Natural range <>) of WeblisketSessionData_Access;
   type WeblisketSessionData_Access_Array_Access is access all WeblisketSessionData_Access_Array;

   type WeblisketSessionData is new Java_Object with null record;
   INVALIDATESESSION : Unbounded_String;
   ATTEMPTS : Unbounded_String;
   TIMEOUT : Unbounded_String;
   REMOVABLEUSERNAME : Unbounded_String;
   REMOVABLEPASSWORD : Unbounded_String;
   REMOVABLENEWPASSWORD : Unbounded_String;
   REMOVABLEREENTERNEWPASSWORD : Unbounded_String;
   AUTHENTICATED : Unbounded_String;

   procedure Initialize (This : in out WeblisketSessionData'Class);
   function Create return WeblisketSessionData_Access;

end org.allbinary.logic.communication.http.request.session.WeblisketSessionData_Package;


