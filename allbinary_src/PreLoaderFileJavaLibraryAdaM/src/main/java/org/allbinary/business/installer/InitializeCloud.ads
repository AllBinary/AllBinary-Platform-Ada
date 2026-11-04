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

limited with org.allbinary.business.installer.InitializeCloud_Package;
package org.allbinary.business.installer.InitializeCloud_Package_References is
   type InitializeCloud_Access is access all org.allbinary.business.installer.InitializeCloud_Package.InitializeCloud'Class;
   type InitializeCloud_Access_Array is array (Natural range <>) of InitializeCloud_Access;
   type InitializeCloud_Access_Array_Access is access all InitializeCloud_Access_Array;
   type InitializeCloud_Access_Array_Access_Array is array (Natural range <>) of InitializeCloud_Access_Array_Access;
   type InitializeCloud_Access_Array_Access_Array_Access is access all InitializeCloud_Access_Array_Access_Array;
end org.allbinary.business.installer.InitializeCloud_Package_References;

with org.allbinary.business.installer.InitializeCloud_Package_References;
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

package org.allbinary.business.installer.InitializeCloud_Package is

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


   subtype InitializeCloud_Access is org.allbinary.business.installer.InitializeCloud_Package_References.InitializeCloud_Access;
   function "=" (Left, Right : InitializeCloud_Access) return Boolean renames org.allbinary.business.installer.InitializeCloud_Package_References."=";
   subtype InitializeCloud_Access_Array is org.allbinary.business.installer.InitializeCloud_Package_References.InitializeCloud_Access_Array;
   function "=" (Left, Right : InitializeCloud_Access_Array) return Boolean renames org.allbinary.business.installer.InitializeCloud_Package_References."=";
   subtype InitializeCloud_Access_Array_Access is org.allbinary.business.installer.InitializeCloud_Package_References.InitializeCloud_Access_Array_Access;
   function "=" (Left, Right : InitializeCloud_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitializeCloud_Package_References."=";
   subtype InitializeCloud_Access_Array_Access_Array is org.allbinary.business.installer.InitializeCloud_Package_References.InitializeCloud_Access_Array_Access_Array;
   function "=" (Left, Right : InitializeCloud_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.InitializeCloud_Package_References."=";
   subtype InitializeCloud_Access_Array_Access_Array_Access is org.allbinary.business.installer.InitializeCloud_Package_References.InitializeCloud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitializeCloud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitializeCloud_Package_References."=";

   type InitializeCloud is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   CLOUD : Unbounded_String;
   CLOUD_UPDATE : Unbounded_String;

   procedure Initialize (This : in out InitializeCloud'Class);
   function Create return InitializeCloud_Access;
   function initialize (This : in out InitializeCloud; cloud : Unbounded_String; overwriteNewer : Boolean; overwriteAll : Boolean; current : Integer; total : Integer) return Boolean;
   procedure initialize (This : in out InitializeCloud; cloud : Unbounded_String; overwriteNewer : Boolean; overwriteAll : Boolean; current : Integer; total : Integer);

end org.allbinary.business.installer.InitializeCloud_Package;


