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

limited with org.allbinary.logic.io.file.filter.VisitorFileFilter_Package;
package org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References is
   type VisitorFileFilter_Access is access all org.allbinary.logic.io.file.filter.VisitorFileFilter_Package.VisitorFileFilter'Class;
   type VisitorFileFilter_Access_Array is array (Natural range <>) of VisitorFileFilter_Access;
   type VisitorFileFilter_Access_Array_Access is access all VisitorFileFilter_Access_Array;
   type VisitorFileFilter_Access_Array_Access_Array is array (Natural range <>) of VisitorFileFilter_Access_Array_Access;
   type VisitorFileFilter_Access_Array_Access_Array_Access is access all VisitorFileFilter_Access_Array_Access_Array;
end org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References;

with org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileFilter_Package; use java.io.FileFilter_Package;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.util.visitor.VisitorInterface_Package;
with org.allbinary.logic.util.visitor.VisitorInterface_Package_References;

package org.allbinary.logic.io.file.filter.VisitorFileFilter_Package is

   package File_Package renames Standard.java.io.File_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package VisitorInterface_Package renames Standard.org.allbinary.logic.util.visitor.VisitorInterface_Package;
   package Reference_Types is
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
   subtype VisitorInterface_Access is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access;
   use type VisitorInterface_Access;
   subtype VisitorInterface_Access_Array is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array;
   use type VisitorInterface_Access_Array;
   subtype VisitorInterface_Access_Array_Access is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array_Access;
   use type VisitorInterface_Access_Array_Access;
   subtype VisitorInterface_Access_Array_Access_Array is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array_Access_Array;
   use type VisitorInterface_Access_Array_Access_Array;
   subtype VisitorInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.VisitorInterface_Package_References.VisitorInterface_Access_Array_Access_Array_Access;
   use type VisitorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VisitorFileFilter_Access is org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References.VisitorFileFilter_Access;
   function "=" (Left, Right : VisitorFileFilter_Access) return Boolean renames org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References."=";
   subtype VisitorFileFilter_Access_Array is org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References.VisitorFileFilter_Access_Array;
   function "=" (Left, Right : VisitorFileFilter_Access_Array) return Boolean renames org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References."=";
   subtype VisitorFileFilter_Access_Array_Access is org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References.VisitorFileFilter_Access_Array_Access;
   function "=" (Left, Right : VisitorFileFilter_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References."=";
   subtype VisitorFileFilter_Access_Array_Access_Array is org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References.VisitorFileFilter_Access_Array_Access_Array;
   function "=" (Left, Right : VisitorFileFilter_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References."=";
   subtype VisitorFileFilter_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References.VisitorFileFilter_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VisitorFileFilter_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.filter.VisitorFileFilter_Package_References."=";

   type VisitorFileFilter is new Java_Object with record
      booleanVisitorInterface : VisitorInterface_Access;
   end record;

   procedure Initialize (This : in out VisitorFileFilter'Class; booleanVisitorInterface_Param : access VisitorInterface_Package.VisitorInterface'Class);
   function Create (booleanVisitorInterface_Param : access VisitorInterface_Package.VisitorInterface'Class) return VisitorFileFilter_Access;
   function accept_Id (This : in out VisitorFileFilter; file_Param : access File_Package.File'Class) return Boolean;
   procedure accept_Id (This : in out VisitorFileFilter; file_Param : access File_Package.File'Class);
   function accept_Id (This : in out VisitorFileFilter; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure accept_Id (This : in out VisitorFileFilter; file_Param : access AbFile_Package.AbFile'Class);

end org.allbinary.logic.io.file.filter.VisitorFileFilter_Package;


