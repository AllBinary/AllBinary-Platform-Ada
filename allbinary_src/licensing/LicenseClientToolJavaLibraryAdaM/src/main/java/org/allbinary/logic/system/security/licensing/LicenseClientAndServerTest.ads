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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileReader_Package; use java.io.FileReader_Package;
--  with java.io.LineNumberReader_Package; use java.io.LineNumberReader_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.business.init.LicenseInitInfo_Package; use org.allbinary.business.init.LicenseInitInfo_Package;
with org.allbinary.business.init.LicenseInitInfoUtil_Package; use org.allbinary.business.init.LicenseInitInfoUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package; use org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package;
with org.allbinary.globals.PATH_GLOBALS_Package; use org.allbinary.globals.PATH_GLOBALS_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LicenseInitInfo_Package renames Standard.org.allbinary.business.init.LicenseInitInfo_Package;
   package LicenseInitInfoUtil_Package renames Standard.org.allbinary.business.init.LicenseInitInfoUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package XmlRpcAbeLicenseRetrievalClient_Package renames Standard.org.allbinary.logic.system.security.licensing.client.XmlRpcAbeLicenseRetrievalClient_Package;
   package PATH_GLOBALS_Package renames Standard.org.allbinary.globals.PATH_GLOBALS_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type LicenseClientAndServerTest is tagged;
   type LicenseClientAndServerTest_Access is access all LicenseClientAndServerTest'Class;
   type LicenseClientAndServerTest_Access_Array is array (Natural range <>) of LicenseClientAndServerTest_Access;
   type LicenseClientAndServerTest_Access_Array_Access is access all LicenseClientAndServerTest_Access_Array;

   type LicenseClientAndServerTest is new Java_Object with record
      logUtil : LogUtil_Access;
      vector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out LicenseClientAndServerTest'Class; options : Unbounded_String_Array_Access);
   function Create (options : Unbounded_String_Array_Access) return LicenseClientAndServerTest_Access;
   procedure test (This : in out LicenseClientAndServerTest);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.system.security.licensing.LicenseClientAndServerTest_Package;


