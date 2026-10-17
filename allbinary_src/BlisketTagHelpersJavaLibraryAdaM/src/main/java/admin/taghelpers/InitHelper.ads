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
with org.allbinary.business.init.InitInfoEntity_Package; use org.allbinary.business.init.InitInfoEntity_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.InitHelper_Package is

   package InitInfoEntity_Package renames org.allbinary.business.init.InitInfoEntity_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;

   type InitHelper is tagged;
   type InitHelper_Access is access all InitHelper'Class;
   type InitHelper_Access_Array is array (Natural range <>) of InitHelper_Access;
   type InitHelper_Access_Array_Access is access all InitHelper_Access_Array;

   type InitHelper is new BasicTable with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out InitHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return InitHelper_Access;
   function drop (This : in out InitHelper) return Unbounded_String;
   procedure drop (This : in out InitHelper);
   function create (This : in out InitHelper) return Unbounded_String;
   procedure create (This : in out InitHelper);
   function view (This : in out InitHelper) return Unbounded_String;
   procedure view (This : in out InitHelper);
   function restore (This : in out InitHelper) return Unbounded_String;
   procedure restore (This : in out InitHelper);
   function backup (This : in out InitHelper) return Unbounded_String;
   procedure backup (This : in out InitHelper);

end admin.taghelpers.InitHelper_Package;


