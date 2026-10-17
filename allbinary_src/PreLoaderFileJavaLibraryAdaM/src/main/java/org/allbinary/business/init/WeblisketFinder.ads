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
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.directory.SubDirectory_Package; use org.allbinary.logic.io.file.directory.SubDirectory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.business.init.WeblisketFinder_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package LogConfigTypeFactory_Package renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package SubDirectory_Package renames org.allbinary.logic.io.file.directory.SubDirectory_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type WeblisketFinder is tagged;
   type WeblisketFinder_Access is access all WeblisketFinder'Class;
   type WeblisketFinder_Access_Array is array (Natural range <>) of WeblisketFinder_Access;
   type WeblisketFinder_Access_Array_Access is access all WeblisketFinder_Access_Array;

   type WeblisketFinder is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      subDirectory : SubDirectory_Access;
   end record;
   instance : WeblisketFinder_Access;
   KEY : Unbounded_String;

   procedure Initialize (This : in out WeblisketFinder'Class);
   function Create return WeblisketFinder_Access;
   function getInstance return WeblisketFinder_Access;
   procedure getInstance;
   function findAll (This : in out WeblisketFinder; path : Unbounded_String) return BasicArrayList_Access;
   procedure findAll (This : in out WeblisketFinder; path : Unbounded_String);
   function getInstallationPath (This : in out WeblisketFinder; file : AbFile_Access) return Unbounded_String;
   procedure getInstallationPath (This : in out WeblisketFinder; file : AbFile_Access);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.business.init.WeblisketFinder_Package;


