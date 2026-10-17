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
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.logic.communication.sql.AbSqlBasic_Package; use org.allbinary.logic.communication.sql.AbSqlBasic_Package;

package org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package is

   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;

   type AbSqlTablePresentation is tagged;
   type AbSqlTablePresentation_Access is access all AbSqlTablePresentation'Class;
   type AbSqlTablePresentation_Access_Array is array (Natural range <>) of AbSqlTablePresentation_Access;
   type AbSqlTablePresentation_Access_Array_Access is access all AbSqlTablePresentation_Access_Array;

   type AbSqlTablePresentation is new AbSqlBasic with null record;

   procedure Initialize (This : in out AbSqlTablePresentation'Class; databaseConnectionInfoInterface : DbConnectionInfo_Access);
   function Create (databaseConnectionInfoInterface : DbConnectionInfo_Access) return AbSqlTablePresentation_Access;

end org.allbinary.logic.communication.sql.AbSqlTablePresentation_Package;


