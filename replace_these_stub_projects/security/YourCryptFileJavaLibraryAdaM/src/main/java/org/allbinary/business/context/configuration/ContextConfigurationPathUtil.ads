--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;

   type ContextConfigurationPathUtil is tagged;
   type ContextConfigurationPathUtil_Access is access all ContextConfigurationPathUtil'Class;
   type ContextConfigurationPathUtil_Access_Array is array (Natural range <>) of ContextConfigurationPathUtil_Access;
   type ContextConfigurationPathUtil_Access_Array_Access is access all ContextConfigurationPathUtil_Access_Array;
   type ContextConfigurationPathUtil_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationPathUtil_Access_Array_Access;
   type ContextConfigurationPathUtil_Access_Array_Access_Array_Access is access all ContextConfigurationPathUtil_Access_Array_Access_Array;

   type ContextConfigurationPathUtil is new Java_Object with null record;

   procedure Initialize (This : in out ContextConfigurationPathUtil'Class);
   function Create return ContextConfigurationPathUtil_Access;
   function getAbFile (contextName : Unbounded_String) return AbFile_Access;
   procedure getAbFile (contextName : Unbounded_String);
   function getAbPath (contextName : Unbounded_String) return AbPath_Access;
   procedure getAbPath (contextName : Unbounded_String);
   function getPath return Unbounded_String;
   function getFileName (contextName : Unbounded_String) return Unbounded_String;
   procedure getFileName (contextName : Unbounded_String);

end org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package;


