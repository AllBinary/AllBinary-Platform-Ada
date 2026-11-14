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

with AllBinary_Java;
limited with org.allbinary.logic.io.DataOutputStreamFactory_Package;
package org.allbinary.logic.io.DataOutputStreamFactory_Package_References is
   type DataOutputStreamFactory_Access is access all org.allbinary.logic.io.DataOutputStreamFactory_Package.DataOutputStreamFactory'Class;
   type DataOutputStreamFactory_Access_Array is array (Natural range <>) of DataOutputStreamFactory_Access;
   type DataOutputStreamFactory_Access_Array_Access is access all DataOutputStreamFactory_Access_Array;
   type DataOutputStreamFactory_Access_Array_Access_Array is array (Natural range <>) of DataOutputStreamFactory_Access_Array_Access;
   type DataOutputStreamFactory_Access_Array_Access_Array_Access is access all DataOutputStreamFactory_Access_Array_Access_Array;
   type DataOutputStreamFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DataOutputStreamFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : DataOutputStreamFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DataOutputStreamFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DataOutputStreamFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DataOutputStreamFactory_Access_Array_Access is (if Value /= null and then Value.all in DataOutputStreamFactory_Access_Array_Object'Class then DataOutputStreamFactory_Access_Array_Object'Class (Value.all).Value else null);
   type DataOutputStreamFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DataOutputStreamFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DataOutputStreamFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DataOutputStreamFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DataOutputStreamFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DataOutputStreamFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DataOutputStreamFactory_Access_Array_Access_Array_Object'Class then DataOutputStreamFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.DataOutputStreamFactory_Package_References;

with org.allbinary.logic.io.DataOutputStreamFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.io.AbDataOutputStream_Package;
with org.allbinary.logic.io.AbDataOutputStream_Package_References;

package org.allbinary.logic.io.DataOutputStreamFactory_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
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
   subtype AbDataOutputStream_Access is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access;
   use type AbDataOutputStream_Access;
   subtype AbDataOutputStream_Access_Array is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array;
   use type AbDataOutputStream_Access_Array;
   subtype AbDataOutputStream_Access_Array_Access is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array_Access;
   use type AbDataOutputStream_Access_Array_Access;
   subtype AbDataOutputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array_Access_Array;
   use type AbDataOutputStream_Access_Array_Access_Array;
   subtype AbDataOutputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array_Access_Array_Access;
   use type AbDataOutputStream_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DataOutputStreamFactory_Access is org.allbinary.logic.io.DataOutputStreamFactory_Package_References.DataOutputStreamFactory_Access;
   function "=" (Left, Right : DataOutputStreamFactory_Access) return Boolean renames org.allbinary.logic.io.DataOutputStreamFactory_Package_References."=";
   subtype DataOutputStreamFactory_Access_Array is org.allbinary.logic.io.DataOutputStreamFactory_Package_References.DataOutputStreamFactory_Access_Array;
   function "=" (Left, Right : DataOutputStreamFactory_Access_Array) return Boolean renames org.allbinary.logic.io.DataOutputStreamFactory_Package_References."=";
   subtype DataOutputStreamFactory_Access_Array_Access is org.allbinary.logic.io.DataOutputStreamFactory_Package_References.DataOutputStreamFactory_Access_Array_Access;
   function "=" (Left, Right : DataOutputStreamFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.DataOutputStreamFactory_Package_References."=";
   function Java_Box (Value : DataOutputStreamFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.DataOutputStreamFactory_Package_References.Java_Box;
   function Java_Unbox_DataOutputStreamFactory_Access_Array (Value : access Java_Object'Class) return DataOutputStreamFactory_Access_Array_Access renames org.allbinary.logic.io.DataOutputStreamFactory_Package_References.Java_Unbox_DataOutputStreamFactory_Access_Array;
   subtype DataOutputStreamFactory_Access_Array_Access_Array is org.allbinary.logic.io.DataOutputStreamFactory_Package_References.DataOutputStreamFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DataOutputStreamFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.DataOutputStreamFactory_Package_References."=";
   subtype DataOutputStreamFactory_Access_Array_Access_Array_Access is org.allbinary.logic.io.DataOutputStreamFactory_Package_References.DataOutputStreamFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DataOutputStreamFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.DataOutputStreamFactory_Package_References."=";
   function Java_Box (Value : DataOutputStreamFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.DataOutputStreamFactory_Package_References.Java_Box;
   function Java_Unbox_DataOutputStreamFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return DataOutputStreamFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.io.DataOutputStreamFactory_Package_References.Java_Unbox_DataOutputStreamFactory_Access_Array_Access_Array;

   type DataOutputStreamFactory is new Java_Object with null record;
   instance : DataOutputStreamFactory_Access;

   procedure Initialize (This : in out DataOutputStreamFactory'Class);
   function Create return DataOutputStreamFactory_Access;
   function getInstance return DataOutputStreamFactory_Access;
   function getInstanceForAbFile (This : in out DataOutputStreamFactory; file_Param : access AbFile_Package.AbFile'Class) return AbDataOutputStream_Access;
   procedure getInstanceForAbFile (This : in out DataOutputStreamFactory; file_Param : access AbFile_Package.AbFile'Class);
   function getInstance (This : in out DataOutputStreamFactory; filePath : Unbounded_String; fileName : Unbounded_String) return AbDataOutputStream_Access;
   procedure getInstance (This : in out DataOutputStreamFactory; filePath : Unbounded_String; fileName : Unbounded_String);

end org.allbinary.logic.io.DataOutputStreamFactory_Package;


