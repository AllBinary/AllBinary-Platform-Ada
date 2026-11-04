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


with org.allbinary.logic.io.file.directory.Directory_Package; use org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package body org.allbinary.business.init.InitInfo2_Package is

   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   function "=" (Left, Right : Directory_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   function "=" (Left, Right : Directory_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   function "=" (Left, Right : Directory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Directory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.Directory_Package_References."=";
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   function "=" (Left, Right : AbPath_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   procedure Initialize_Fields (This : in out InitInfo2'Class) is
   begin
      null;
      This.directory := Directory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out InitInfo2'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InitInfo2_Access is
      This : constant InitInfo2_Access := new InitInfo2;
   begin
      InitInfo2_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InitInfo2_Access is
   begin
        return InitInfo2_Access (InitInfo2_Package.instance);
   end getInstance;

   function isTestHtmlPathValid (This : in out InitInfo2; value_Param : access AbPath_Package.AbPath'Class) return Boolean is
      value : constant AbPath_Access := AbPath_Access (value_Param);
   begin
        return This.directory.create (value);
   end isTestHtmlPathValid;

   function isMainPathValid (This : in out InitInfo2; value_Param : access AbPath_Package.AbPath'Class) return Boolean is
      value : constant AbPath_Access := AbPath_Access (value_Param);
   begin
        return This.directory.create (value);
   end isMainPathValid;

   procedure isTestHtmlPathValid (This : in out InitInfo2; value_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Boolean := InitInfo2'Class (This).isTestHtmlPathValid (value_Param => value_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTestHtmlPathValid;

   procedure isMainPathValid (This : in out InitInfo2; value_Param : access AbPath_Package.AbPath'Class) is
      Java_Result : constant Boolean := InitInfo2'Class (This).isMainPathValid (value_Param => value_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMainPathValid;

begin
   null;
   instance := InitInfo2_Package.Create;

end org.allbinary.business.init.InitInfo2_Package;


