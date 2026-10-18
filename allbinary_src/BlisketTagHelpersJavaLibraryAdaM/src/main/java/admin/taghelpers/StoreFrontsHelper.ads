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
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.StoreFrontsHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;

   type StoreFrontsHelper is tagged;
   type StoreFrontsHelper_Access is access all StoreFrontsHelper'Class;
   type StoreFrontsHelper_Access_Array is array (Natural range <>) of StoreFrontsHelper_Access;
   type StoreFrontsHelper_Access_Array_Access is access all StoreFrontsHelper_Access_Array;
   type StoreFrontsHelper_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsHelper_Access_Array_Access;
   type StoreFrontsHelper_Access_Array_Access_Array_Access is access all StoreFrontsHelper_Access_Array_Access_Array;

   type StoreFrontsHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      portion : Portion_Access;
      commonPhoneStrings : CommonPhoneStrings_Access;
   end record;
   CLASS : Unbounded_String;
   TEXT : Unbounded_String;

   procedure Initialize (This : in out StoreFrontsHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreFrontsHelper_Access;
   function drop (This : in out StoreFrontsHelper) return Unbounded_String;
   function create (This : in out StoreFrontsHelper) return Unbounded_String;
   function restore (This : in out StoreFrontsHelper) return Unbounded_String;
   function backup (This : in out StoreFrontsHelper) return Unbounded_String;
   function generateSelect (This : in out StoreFrontsHelper) return Unbounded_String;

end admin.taghelpers.StoreFrontsHelper_Package;


