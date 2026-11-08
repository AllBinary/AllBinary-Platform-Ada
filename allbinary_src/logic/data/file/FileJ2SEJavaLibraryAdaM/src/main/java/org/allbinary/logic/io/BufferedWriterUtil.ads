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

limited with org.allbinary.logic.io.BufferedWriterUtil_Package;
package org.allbinary.logic.io.BufferedWriterUtil_Package_References is
   type BufferedWriterUtil_Access is access all org.allbinary.logic.io.BufferedWriterUtil_Package.BufferedWriterUtil'Class;
   type BufferedWriterUtil_Access_Array is array (Natural range <>) of BufferedWriterUtil_Access;
   type BufferedWriterUtil_Access_Array_Access is access all BufferedWriterUtil_Access_Array;
   type BufferedWriterUtil_Access_Array_Access_Array is array (Natural range <>) of BufferedWriterUtil_Access_Array_Access;
   type BufferedWriterUtil_Access_Array_Access_Array_Access is access all BufferedWriterUtil_Access_Array_Access_Array;
end org.allbinary.logic.io.BufferedWriterUtil_Package_References;

with org.allbinary.logic.io.BufferedWriterUtil_Package_References;
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
limited with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonLabels_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.logic.io.BufferedWriterUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonLabels_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access;
   use type CommonLabels_Access;
   subtype CommonLabels_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array;
   use type CommonLabels_Access_Array;
   subtype CommonLabels_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access;
   use type CommonLabels_Access_Array_Access;
   subtype CommonLabels_Access_Array_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array;
   use type CommonLabels_Access_Array_Access_Array;
   subtype CommonLabels_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array_Access;
   use type CommonLabels_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BufferedWriterUtil_Access is org.allbinary.logic.io.BufferedWriterUtil_Package_References.BufferedWriterUtil_Access;
   function "=" (Left, Right : BufferedWriterUtil_Access) return Boolean renames org.allbinary.logic.io.BufferedWriterUtil_Package_References."=";
   subtype BufferedWriterUtil_Access_Array is org.allbinary.logic.io.BufferedWriterUtil_Package_References.BufferedWriterUtil_Access_Array;
   function "=" (Left, Right : BufferedWriterUtil_Access_Array) return Boolean renames org.allbinary.logic.io.BufferedWriterUtil_Package_References."=";
   subtype BufferedWriterUtil_Access_Array_Access is org.allbinary.logic.io.BufferedWriterUtil_Package_References.BufferedWriterUtil_Access_Array_Access;
   function "=" (Left, Right : BufferedWriterUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.BufferedWriterUtil_Package_References."=";
   subtype BufferedWriterUtil_Access_Array_Access_Array is org.allbinary.logic.io.BufferedWriterUtil_Package_References.BufferedWriterUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BufferedWriterUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.BufferedWriterUtil_Package_References."=";
   subtype BufferedWriterUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.BufferedWriterUtil_Package_References.BufferedWriterUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BufferedWriterUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.BufferedWriterUtil_Package_References."=";

   type BufferedWriterUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commonLabels : CommonLabels_Access;
      REMOVING_OLD : Unbounded_String;
   end record;
   instance : BufferedWriterUtil_Access;

   procedure Initialize (This : in out BufferedWriterUtil'Class);
   function Create return BufferedWriterUtil_Access;
   function getInstance return BufferedWriterUtil_Access;
   procedure overwrite (This : in out BufferedWriterUtil; path : Unbounded_String; data : Unbounded_String);
   procedure overwrite (This : in out BufferedWriterUtil; abFile_Param : access AbFile_Package.AbFile'Class; data : Unbounded_String);
   procedure write (This : in out BufferedWriterUtil; abFile_Param : access AbFile_Package.AbFile'Class; data : Unbounded_String);

end org.allbinary.logic.io.BufferedWriterUtil_Package;


