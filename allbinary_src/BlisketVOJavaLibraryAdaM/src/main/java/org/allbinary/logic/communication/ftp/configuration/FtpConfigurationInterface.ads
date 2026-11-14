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
limited with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;
package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References is
   type FtpConfigurationInterface_Access is access all org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package.FtpConfigurationInterface'Class;
   type FtpConfigurationInterface_Access_Array is array (Natural range <>) of FtpConfigurationInterface_Access;
   type FtpConfigurationInterface_Access_Array_Access is access all FtpConfigurationInterface_Access_Array;
   type FtpConfigurationInterface_Access_Array_Access_Array is array (Natural range <>) of FtpConfigurationInterface_Access_Array_Access;
   type FtpConfigurationInterface_Access_Array_Access_Array_Access is access all FtpConfigurationInterface_Access_Array_Access_Array;
   type FtpConfigurationInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FtpConfigurationInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : FtpConfigurationInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FtpConfigurationInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FtpConfigurationInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FtpConfigurationInterface_Access_Array_Access is (if Value /= null and then Value.all in FtpConfigurationInterface_Access_Array_Object'Class then FtpConfigurationInterface_Access_Array_Object'Class (Value.all).Value else null);
   type FtpConfigurationInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FtpConfigurationInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FtpConfigurationInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FtpConfigurationInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FtpConfigurationInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FtpConfigurationInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FtpConfigurationInterface_Access_Array_Access_Array_Object'Class then FtpConfigurationInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References;

with org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type FtpConfigurationInterface is interface;
   subtype FtpConfigurationInterface_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access;
   function "=" (Left, Right : FtpConfigurationInterface_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   subtype FtpConfigurationInterface_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array;
   function "=" (Left, Right : FtpConfigurationInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   subtype FtpConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   function Java_Box (Value : FtpConfigurationInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.Java_Box;
   function Java_Unbox_FtpConfigurationInterface_Access_Array (Value : access Java_Object'Class) return FtpConfigurationInterface_Access_Array_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.Java_Unbox_FtpConfigurationInterface_Access_Array;
   subtype FtpConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : FtpConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   subtype FtpConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.FtpConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FtpConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References."=";
   function Java_Box (Value : FtpConfigurationInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.Java_Box;
   function Java_Unbox_FtpConfigurationInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return FtpConfigurationInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package_References.Java_Unbox_FtpConfigurationInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_FtpConfigurationInterface (Value : FtpConfigurationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getServer (This : in out FtpConfigurationInterface) return Unbounded_String is abstract;
   function getPath (This : in out FtpConfigurationInterface) return Unbounded_String is abstract;
   function getUserName (This : in out FtpConfigurationInterface) return Unbounded_String is abstract;
   function getPassword (This : in out FtpConfigurationInterface) return Unbounded_String is abstract;
   procedure setServer (This : in out FtpConfigurationInterface; value : Unbounded_String) is abstract;
   procedure setPath (This : in out FtpConfigurationInterface; value : Unbounded_String) is abstract;
   procedure setUserName (This : in out FtpConfigurationInterface; value : Unbounded_String) is abstract;
   procedure setPassword (This : in out FtpConfigurationInterface; value : Unbounded_String) is abstract;

end org.allbinary.logic.communication.ftp.configuration.FtpConfigurationInterface_Package;


