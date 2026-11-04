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

limited with org.allbinary.business.init.InitInfo2_Package;
package org.allbinary.business.init.InitInfo2_Package_References is
   type InitInfo2_Access is access all org.allbinary.business.init.InitInfo2_Package.InitInfo2'Class;
   type InitInfo2_Access_Array is array (Natural range <>) of InitInfo2_Access;
   type InitInfo2_Access_Array_Access is access all InitInfo2_Access_Array;
   type InitInfo2_Access_Array_Access_Array is array (Natural range <>) of InitInfo2_Access_Array_Access;
   type InitInfo2_Access_Array_Access_Array_Access is access all InitInfo2_Access_Array_Access_Array;
end org.allbinary.business.init.InitInfo2_Package_References;

with org.allbinary.business.init.InitInfo2_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.business.init.InitInfo2_Package is

   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   use type Directory_Access;
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   use type Directory_Access_Array;
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   use type Directory_Access_Array_Access;
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   use type Directory_Access_Array_Access_Array;
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   use type Directory_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InitInfo2_Access is org.allbinary.business.init.InitInfo2_Package_References.InitInfo2_Access;
   function "=" (Left, Right : InitInfo2_Access) return Boolean renames org.allbinary.business.init.InitInfo2_Package_References."=";
   subtype InitInfo2_Access_Array is org.allbinary.business.init.InitInfo2_Package_References.InitInfo2_Access_Array;
   function "=" (Left, Right : InitInfo2_Access_Array) return Boolean renames org.allbinary.business.init.InitInfo2_Package_References."=";
   subtype InitInfo2_Access_Array_Access is org.allbinary.business.init.InitInfo2_Package_References.InitInfo2_Access_Array_Access;
   function "=" (Left, Right : InitInfo2_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitInfo2_Package_References."=";
   subtype InitInfo2_Access_Array_Access_Array is org.allbinary.business.init.InitInfo2_Package_References.InitInfo2_Access_Array_Access_Array;
   function "=" (Left, Right : InitInfo2_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.InitInfo2_Package_References."=";
   subtype InitInfo2_Access_Array_Access_Array_Access is org.allbinary.business.init.InitInfo2_Package_References.InitInfo2_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitInfo2_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitInfo2_Package_References."=";

   type InitInfo2 is new Java_Object with record
      directory : Directory_Access;
   end record;
   instance : InitInfo2_Access;

   procedure Initialize (This : in out InitInfo2'Class);
   function Create return InitInfo2_Access;
   function getInstance return InitInfo2_Access;
   function isTestHtmlPathValid (This : in out InitInfo2; value_Param : access AbPath_Package.AbPath'Class) return Boolean;
   procedure isTestHtmlPathValid (This : in out InitInfo2; value_Param : access AbPath_Package.AbPath'Class);
   function isMainPathValid (This : in out InitInfo2; value_Param : access AbPath_Package.AbPath'Class) return Boolean;
   procedure isMainPathValid (This : in out InitInfo2; value_Param : access AbPath_Package.AbPath'Class);

end org.allbinary.business.init.InitInfo2_Package;


