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

limited with org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
package org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References is
   type FileJDialogListenerInterface_Access is access all org.allbinary.gui.dialog.FileJDialogListenerInterface_Package.FileJDialogListenerInterface'Class;
   type FileJDialogListenerInterface_Access_Array is array (Natural range <>) of FileJDialogListenerInterface_Access;
   type FileJDialogListenerInterface_Access_Array_Access is access all FileJDialogListenerInterface_Access_Array;
   type FileJDialogListenerInterface_Access_Array_Access_Array is array (Natural range <>) of FileJDialogListenerInterface_Access_Array_Access;
   type FileJDialogListenerInterface_Access_Array_Access_Array_Access is access all FileJDialogListenerInterface_Access_Array_Access_Array;
end org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References;

with org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;

package org.allbinary.gui.dialog.FileJDialogListenerInterface_Package is

   package File_Package renames Standard.java.io.File_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type FileJDialogListenerInterface is interface;
   subtype FileJDialogListenerInterface_Access is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access;
   function "=" (Left, Right : FileJDialogListenerInterface_Access) return Boolean renames org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References."=";
   subtype FileJDialogListenerInterface_Access_Array is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access_Array;
   function "=" (Left, Right : FileJDialogListenerInterface_Access_Array) return Boolean renames org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References."=";
   subtype FileJDialogListenerInterface_Access_Array_Access is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access_Array_Access;
   function "=" (Left, Right : FileJDialogListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References."=";
   subtype FileJDialogListenerInterface_Access_Array_Access_Array is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : FileJDialogListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References."=";
   subtype FileJDialogListenerInterface_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References.FileJDialogListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileJDialogListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.gui.dialog.FileJDialogListenerInterface_Package_References."=";
   function Java_Object_Access_From_FileJDialogListenerInterface (Value : FileJDialogListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onFiles (This : in out FileJDialogListenerInterface; files : File_Access_Array_Access) is abstract;

end org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;


