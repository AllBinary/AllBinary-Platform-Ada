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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.installer.Portion_Package; use org.allbinary.business.installer.Portion_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.XmlOptionItemsHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type XmlOptionItemsHelper is tagged;
   type XmlOptionItemsHelper_Access is access all XmlOptionItemsHelper'Class;
   type XmlOptionItemsHelper_Access_Array is array (Natural range <>) of XmlOptionItemsHelper_Access;
   type XmlOptionItemsHelper_Access_Array_Access is access all XmlOptionItemsHelper_Access_Array;
   type XmlOptionItemsHelper_Access_Array_Access_Array is array (Natural range <>) of XmlOptionItemsHelper_Access_Array_Access;
   type XmlOptionItemsHelper_Access_Array_Access_Array_Access is access all XmlOptionItemsHelper_Access_Array_Access_Array;

   type XmlOptionItemsHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out XmlOptionItemsHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return XmlOptionItemsHelper_Access;
   function create (This : in out XmlOptionItemsHelper) return Unbounded_String;
   function drop (This : in out XmlOptionItemsHelper) return Unbounded_String;
   function restore (This : in out XmlOptionItemsHelper) return Unbounded_String;
   function backup (This : in out XmlOptionItemsHelper) return Unbounded_String;

end admin.taghelpers.XmlOptionItemsHelper_Package;


