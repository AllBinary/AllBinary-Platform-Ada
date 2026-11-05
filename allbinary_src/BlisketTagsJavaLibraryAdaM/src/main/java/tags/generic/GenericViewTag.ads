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

limited with tags.generic_Id.GenericViewTag_Package;
package tags.generic_Id.GenericViewTag_Package_References is
   type GenericViewTag_Access is access all tags.generic_Id.GenericViewTag_Package.GenericViewTag'Class;
   type GenericViewTag_Access_Array is array (Natural range <>) of GenericViewTag_Access;
   type GenericViewTag_Access_Array_Access is access all GenericViewTag_Access_Array;
   type GenericViewTag_Access_Array_Access_Array is array (Natural range <>) of GenericViewTag_Access_Array_Access;
   type GenericViewTag_Access_Array_Access_Array_Access is access all GenericViewTag_Access_Array_Access_Array;
end tags.generic_Id.GenericViewTag_Package_References;

with tags.generic_Id.GenericViewTag_Package_References;
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
with tags.TransformTag_Package; use tags.TransformTag_Package;

package tags.generic_Id.GenericViewTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformTag_Package renames Standard.tags.TransformTag_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype GenericViewTag_Access is tags.generic_Id.GenericViewTag_Package_References.GenericViewTag_Access;
   function "=" (Left, Right : GenericViewTag_Access) return Boolean renames tags.generic_Id.GenericViewTag_Package_References."=";
   subtype GenericViewTag_Access_Array is tags.generic_Id.GenericViewTag_Package_References.GenericViewTag_Access_Array;
   function "=" (Left, Right : GenericViewTag_Access_Array) return Boolean renames tags.generic_Id.GenericViewTag_Package_References."=";
   subtype GenericViewTag_Access_Array_Access is tags.generic_Id.GenericViewTag_Package_References.GenericViewTag_Access_Array_Access;
   function "=" (Left, Right : GenericViewTag_Access_Array_Access) return Boolean renames tags.generic_Id.GenericViewTag_Package_References."=";
   subtype GenericViewTag_Access_Array_Access_Array is tags.generic_Id.GenericViewTag_Package_References.GenericViewTag_Access_Array_Access_Array;
   function "=" (Left, Right : GenericViewTag_Access_Array_Access_Array) return Boolean renames tags.generic_Id.GenericViewTag_Package_References."=";
   subtype GenericViewTag_Access_Array_Access_Array_Access is tags.generic_Id.GenericViewTag_Package_References.GenericViewTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericViewTag_Access_Array_Access_Array_Access) return Boolean renames tags.generic_Id.GenericViewTag_Package_References."=";

   type GenericViewTag is new TransformTag with record
      GenericViewTag_Field_logUtil : LogUtil_Access;
      output : Unbounded_String;
      file : Unbounded_String;
   end record;

   procedure Initialize (This : in out GenericViewTag'Class);
   function Create return GenericViewTag_Access;
   procedure setOutput (This : in out GenericViewTag; value : Unbounded_String);
   procedure setFile (This : in out GenericViewTag; value : Unbounded_String);

end tags.generic_Id.GenericViewTag_Package;


