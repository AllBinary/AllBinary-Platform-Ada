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

limited with org.allbinary.business.installer.DeleteCloud_Package;
package org.allbinary.business.installer.DeleteCloud_Package_References is
   type DeleteCloud_Access is access all org.allbinary.business.installer.DeleteCloud_Package.DeleteCloud'Class;
   type DeleteCloud_Access_Array is array (Natural range <>) of DeleteCloud_Access;
   type DeleteCloud_Access_Array_Access is access all DeleteCloud_Access_Array;
   type DeleteCloud_Access_Array_Access_Array is array (Natural range <>) of DeleteCloud_Access_Array_Access;
   type DeleteCloud_Access_Array_Access_Array_Access is access all DeleteCloud_Access_Array_Access_Array;
end org.allbinary.business.installer.DeleteCloud_Package_References;

with org.allbinary.business.installer.DeleteCloud_Package_References;
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

package org.allbinary.business.installer.DeleteCloud_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype DeleteCloud_Access is org.allbinary.business.installer.DeleteCloud_Package_References.DeleteCloud_Access;
   function "=" (Left, Right : DeleteCloud_Access) return Boolean renames org.allbinary.business.installer.DeleteCloud_Package_References."=";
   subtype DeleteCloud_Access_Array is org.allbinary.business.installer.DeleteCloud_Package_References.DeleteCloud_Access_Array;
   function "=" (Left, Right : DeleteCloud_Access_Array) return Boolean renames org.allbinary.business.installer.DeleteCloud_Package_References."=";
   subtype DeleteCloud_Access_Array_Access is org.allbinary.business.installer.DeleteCloud_Package_References.DeleteCloud_Access_Array_Access;
   function "=" (Left, Right : DeleteCloud_Access_Array_Access) return Boolean renames org.allbinary.business.installer.DeleteCloud_Package_References."=";
   subtype DeleteCloud_Access_Array_Access_Array is org.allbinary.business.installer.DeleteCloud_Package_References.DeleteCloud_Access_Array_Access_Array;
   function "=" (Left, Right : DeleteCloud_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.DeleteCloud_Package_References."=";
   subtype DeleteCloud_Access_Array_Access_Array_Access is org.allbinary.business.installer.DeleteCloud_Package_References.DeleteCloud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DeleteCloud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.DeleteCloud_Package_References."=";

   type DeleteCloud is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out DeleteCloud'Class);
   function Create return DeleteCloud_Access;
   function delete (This : in out DeleteCloud; prePath : Unbounded_String; current : Integer; total : Integer) return Boolean;
   procedure delete (This : in out DeleteCloud; prePath : Unbounded_String; current : Integer; total : Integer);

end org.allbinary.business.installer.DeleteCloud_Package;


