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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.installer.Portion_Package; use org.allbinary.business.installer.Portion_Package;
with org.allbinary.data.tables.log.LogTableEntity_Package; use org.allbinary.data.tables.log.LogTableEntity_Package;
with org.allbinary.data.tables.log.LogTableEntityFactory_Package; use org.allbinary.data.tables.log.LogTableEntityFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlTableUtil_Package; use org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.LogHelper_Package is

   package Portion_Package renames org.allbinary.business.installer.Portion_Package;
   package LogTableEntity_Package renames org.allbinary.data.tables.log.LogTableEntity_Package;
   package LogTableEntityFactory_Package renames org.allbinary.data.tables.log.LogTableEntityFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlTableUtil_Package renames org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;

   type LogHelper is tagged;
   type LogHelper_Access is access all LogHelper'Class;
   type LogHelper_Access_Array is array (Natural range <>) of LogHelper_Access;
   type LogHelper_Access_Array_Access is access all LogHelper_Access_Array;

   type LogHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out LogHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return LogHelper_Access;
   function drop (This : in out LogHelper) return Unbounded_String;
   procedure drop (This : in out LogHelper);
   function create (This : in out LogHelper) return Unbounded_String;
   procedure create (This : in out LogHelper);
   function restore (This : in out LogHelper) return Unbounded_String;
   procedure restore (This : in out LogHelper);
   function backup (This : in out LogHelper) return Unbounded_String;
   procedure backup (This : in out LogHelper);

end admin.taghelpers.LogHelper_Package;


