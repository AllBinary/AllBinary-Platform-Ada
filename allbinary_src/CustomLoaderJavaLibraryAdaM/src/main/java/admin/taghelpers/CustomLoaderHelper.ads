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
with org.allbinary.globals.AppUrlGlobals_Package; use org.allbinary.globals.AppUrlGlobals_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package admin.taghelpers.CustomLoaderHelper_Package is

   package AppUrlGlobals_Package renames Standard.org.allbinary.globals.AppUrlGlobals_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type CustomLoaderHelper is tagged;
   type CustomLoaderHelper_Access is access all CustomLoaderHelper'Class;
   type CustomLoaderHelper_Access_Array is array (Natural range <>) of CustomLoaderHelper_Access;
   type CustomLoaderHelper_Access_Array_Access is access all CustomLoaderHelper_Access_Array;

   type CustomLoaderHelper is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out CustomLoaderHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return CustomLoaderHelper_Access;
   function getWebappPath (This : in out CustomLoaderHelper) return Unbounded_String;
   procedure setWebappPath (This : in out CustomLoaderHelper; path : Unbounded_String);

end admin.taghelpers.CustomLoaderHelper_Package;


