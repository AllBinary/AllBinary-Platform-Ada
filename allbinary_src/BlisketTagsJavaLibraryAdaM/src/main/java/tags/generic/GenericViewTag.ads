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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.InputOutputTypeData_Package; use org.allbinary.logic.io.InputOutputTypeData_Package;
with tags.TransformTag_Package; use tags.TransformTag_Package;

package tags.generic_Id.GenericViewTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package InputOutputTypeData_Package renames Standard.org.allbinary.logic.io.InputOutputTypeData_Package;
   package TransformTag_Package renames Standard.tags.TransformTag_Package;

   type GenericViewTag is tagged;
   type GenericViewTag_Access is access all GenericViewTag'Class;
   type GenericViewTag_Access_Array is array (Natural range <>) of GenericViewTag_Access;
   type GenericViewTag_Access_Array_Access is access all GenericViewTag_Access_Array;

   type GenericViewTag is new TransformTag with record
      logUtil : LogUtil_Access;
      output : Unbounded_String;
      file : Unbounded_String;
   end record;

   procedure Initialize (This : in out GenericViewTag'Class);
   function Create return GenericViewTag_Access;
   procedure setOutput (This : in out GenericViewTag; value : Unbounded_String);
   procedure setFile (This : in out GenericViewTag; value : Unbounded_String);

end tags.generic_Id.GenericViewTag_Package;


