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
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;

package org.allbinary.business.init.db.DbInitInfo_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;

   type DbInitInfo is tagged;
   type DbInitInfo_Access is access all DbInitInfo'Class;
   type DbInitInfo_Access_Array is array (Natural range <>) of DbInitInfo_Access;
   type DbInitInfo_Access_Array_Access is access all DbInitInfo_Access_Array;

   type DbInitInfo is new DbConnectionInfo with null record;

   procedure Initialize (This : in out DbInitInfo'Class; initFileName : Unbounded_String; read : Boolean);
   function Create (initFileName : Unbounded_String; read : Boolean) return DbInitInfo_Access;
   function getUrl (This : in out DbInitInfo) return Unbounded_String;
   procedure getUrl (This : in out DbInitInfo);
   procedure write (This : in out DbInitInfo);
   procedure load (This : in out DbInitInfo);
   procedure setHasRead (This : in out DbInitInfo; value : Boolean);

end org.allbinary.business.init.db.DbInitInfo_Package;


