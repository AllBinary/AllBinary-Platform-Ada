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

limited with org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;
package org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References is
   type AdminEmailInfo_Access is access all org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package.AdminEmailInfo'Class;
   type AdminEmailInfo_Access_Array is array (Natural range <>) of AdminEmailInfo_Access;
   type AdminEmailInfo_Access_Array_Access is access all AdminEmailInfo_Access_Array;
   type AdminEmailInfo_Access_Array_Access_Array is array (Natural range <>) of AdminEmailInfo_Access_Array_Access;
   type AdminEmailInfo_Access_Array_Access_Array_Access is access all AdminEmailInfo_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References;

with org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References;
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
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;

package org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package is

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


   subtype AdminEmailInfo_Access is org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References.AdminEmailInfo_Access;
   function "=" (Left, Right : AdminEmailInfo_Access) return Boolean renames org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References."=";
   subtype AdminEmailInfo_Access_Array is org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References.AdminEmailInfo_Access_Array;
   function "=" (Left, Right : AdminEmailInfo_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References."=";
   subtype AdminEmailInfo_Access_Array_Access is org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References.AdminEmailInfo_Access_Array_Access;
   function "=" (Left, Right : AdminEmailInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References."=";
   subtype AdminEmailInfo_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References.AdminEmailInfo_Access_Array_Access_Array;
   function "=" (Left, Right : AdminEmailInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References."=";
   subtype AdminEmailInfo_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References.AdminEmailInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdminEmailInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package_References."=";

   type AdminEmailInfo is new BasicEmailInfo with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out AdminEmailInfo'Class; subject : Unbounded_String; textBody : Unbounded_String);
   function Create (subject : Unbounded_String; textBody : Unbounded_String) return AdminEmailInfo_Access;
   procedure init (This : in out AdminEmailInfo);

end org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;


