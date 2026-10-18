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

package org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type PartnerIdentifierFileUtil is tagged;
   type PartnerIdentifierFileUtil_Access is access all PartnerIdentifierFileUtil'Class;
   type PartnerIdentifierFileUtil_Access_Array is array (Natural range <>) of PartnerIdentifierFileUtil_Access;
   type PartnerIdentifierFileUtil_Access_Array_Access is access all PartnerIdentifierFileUtil_Access_Array;
   type PartnerIdentifierFileUtil_Access_Array_Access_Array is array (Natural range <>) of PartnerIdentifierFileUtil_Access_Array_Access;
   type PartnerIdentifierFileUtil_Access_Array_Access_Array_Access is access all PartnerIdentifierFileUtil_Access_Array_Access_Array;

   type PartnerIdentifierFileUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      FILE_NAME : Unbounded_String;
   end record;
   instance : PartnerIdentifierFileUtil_Access;

   procedure Initialize (This : in out PartnerIdentifierFileUtil'Class);
   function Create return PartnerIdentifierFileUtil_Access;
   function getInstance return PartnerIdentifierFileUtil_Access;
   function get (This : in out PartnerIdentifierFileUtil) return Unbounded_String;

end org.allbinary.logic.system.security.licensing.PartnerIdentifierFileUtil_Package;


