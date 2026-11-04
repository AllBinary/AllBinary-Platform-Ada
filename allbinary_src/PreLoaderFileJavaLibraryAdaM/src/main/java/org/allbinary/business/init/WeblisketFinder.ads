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

limited with org.allbinary.business.init.WeblisketFinder_Package;
package org.allbinary.business.init.WeblisketFinder_Package_References is
   type WeblisketFinder_Access is access all org.allbinary.business.init.WeblisketFinder_Package.WeblisketFinder'Class;
   type WeblisketFinder_Access_Array is array (Natural range <>) of WeblisketFinder_Access;
   type WeblisketFinder_Access_Array_Access is access all WeblisketFinder_Access_Array;
   type WeblisketFinder_Access_Array_Access_Array is array (Natural range <>) of WeblisketFinder_Access_Array_Access;
   type WeblisketFinder_Access_Array_Access_Array_Access is access all WeblisketFinder_Access_Array_Access_Array;
end org.allbinary.business.init.WeblisketFinder_Package_References;

with org.allbinary.business.init.WeblisketFinder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.io.file.directory.SubDirectory_Package;
with org.allbinary.logic.io.file.directory.SubDirectory_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.business.init.WeblisketFinder_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package SubDirectory_Package renames Standard.org.allbinary.logic.io.file.directory.SubDirectory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   subtype SubDirectory_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access;
   use type SubDirectory_Access;
   subtype SubDirectory_Access_Array is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array;
   use type SubDirectory_Access_Array;
   subtype SubDirectory_Access_Array_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access;
   use type SubDirectory_Access_Array_Access;
   subtype SubDirectory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access_Array;
   use type SubDirectory_Access_Array_Access_Array;
   subtype SubDirectory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.SubDirectory_Package_References.SubDirectory_Access_Array_Access_Array_Access;
   use type SubDirectory_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WeblisketFinder_Access is org.allbinary.business.init.WeblisketFinder_Package_References.WeblisketFinder_Access;
   function "=" (Left, Right : WeblisketFinder_Access) return Boolean renames org.allbinary.business.init.WeblisketFinder_Package_References."=";
   subtype WeblisketFinder_Access_Array is org.allbinary.business.init.WeblisketFinder_Package_References.WeblisketFinder_Access_Array;
   function "=" (Left, Right : WeblisketFinder_Access_Array) return Boolean renames org.allbinary.business.init.WeblisketFinder_Package_References."=";
   subtype WeblisketFinder_Access_Array_Access is org.allbinary.business.init.WeblisketFinder_Package_References.WeblisketFinder_Access_Array_Access;
   function "=" (Left, Right : WeblisketFinder_Access_Array_Access) return Boolean renames org.allbinary.business.init.WeblisketFinder_Package_References."=";
   subtype WeblisketFinder_Access_Array_Access_Array is org.allbinary.business.init.WeblisketFinder_Package_References.WeblisketFinder_Access_Array_Access_Array;
   function "=" (Left, Right : WeblisketFinder_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.WeblisketFinder_Package_References."=";
   subtype WeblisketFinder_Access_Array_Access_Array_Access is org.allbinary.business.init.WeblisketFinder_Package_References.WeblisketFinder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeblisketFinder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.WeblisketFinder_Package_References."=";

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
   function findAll (This : in out WeblisketFinder; path : Unbounded_String) return BasicArrayList_Access;
   procedure findAll (This : in out WeblisketFinder; path : Unbounded_String);
   function getInstallationPath (This : in out WeblisketFinder; file_Param : access AbFile_Package.AbFile'Class) return Unbounded_String;
   procedure getInstallationPath (This : in out WeblisketFinder; file_Param : access AbFile_Package.AbFile'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.business.init.WeblisketFinder_Package;


