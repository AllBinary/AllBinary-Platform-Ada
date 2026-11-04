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

limited with org.allbinary.logic.io.SmallDelete_Package;
package org.allbinary.logic.io.SmallDelete_Package_References is
   type SmallDelete_Access is access all org.allbinary.logic.io.SmallDelete_Package.SmallDelete'Class;
   type SmallDelete_Access_Array is array (Natural range <>) of SmallDelete_Access;
   type SmallDelete_Access_Array_Access is access all SmallDelete_Access_Array;
   type SmallDelete_Access_Array_Access_Array is array (Natural range <>) of SmallDelete_Access_Array_Access;
   type SmallDelete_Access_Array_Access_Array_Access is access all SmallDelete_Access_Array_Access_Array;
end org.allbinary.logic.io.SmallDelete_Package_References;

with org.allbinary.logic.io.SmallDelete_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.logic.io.SmallDelete_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype SmallDelete_Access is org.allbinary.logic.io.SmallDelete_Package_References.SmallDelete_Access;
   function "=" (Left, Right : SmallDelete_Access) return Boolean renames org.allbinary.logic.io.SmallDelete_Package_References."=";
   subtype SmallDelete_Access_Array is org.allbinary.logic.io.SmallDelete_Package_References.SmallDelete_Access_Array;
   function "=" (Left, Right : SmallDelete_Access_Array) return Boolean renames org.allbinary.logic.io.SmallDelete_Package_References."=";
   subtype SmallDelete_Access_Array_Access is org.allbinary.logic.io.SmallDelete_Package_References.SmallDelete_Access_Array_Access;
   function "=" (Left, Right : SmallDelete_Access_Array_Access) return Boolean renames org.allbinary.logic.io.SmallDelete_Package_References."=";
   subtype SmallDelete_Access_Array_Access_Array is org.allbinary.logic.io.SmallDelete_Package_References.SmallDelete_Access_Array_Access_Array;
   function "=" (Left, Right : SmallDelete_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.SmallDelete_Package_References."=";
   subtype SmallDelete_Access_Array_Access_Array_Access is org.allbinary.logic.io.SmallDelete_Package_References.SmallDelete_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SmallDelete_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.SmallDelete_Package_References."=";

   type SmallDelete is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      fileName : Unbounded_String;
      string_Id : Unbounded_String;
   end record;

   procedure Initialize (This : in out SmallDelete'Class; fileName : Unbounded_String);
   function Create (fileName : Unbounded_String) return SmallDelete_Access;
   function deleteAtStart (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String) return Boolean;
   procedure deleteAtStart (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String);
   function deleteBetween (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String; newText : Unbounded_String) return Boolean;
   procedure deleteBetween (This : in out SmallDelete; start : Unbounded_String; end_Id : Unbounded_String; newText : Unbounded_String);

end org.allbinary.logic.io.SmallDelete_Package;


