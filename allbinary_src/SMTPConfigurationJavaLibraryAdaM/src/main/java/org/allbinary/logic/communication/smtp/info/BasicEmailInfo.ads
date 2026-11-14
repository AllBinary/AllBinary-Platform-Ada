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
limited with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
package org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References is
   type BasicEmailInfo_Access is access all org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package.BasicEmailInfo'Class;
   type BasicEmailInfo_Access_Array is array (Natural range <>) of BasicEmailInfo_Access;
   type BasicEmailInfo_Access_Array_Access is access all BasicEmailInfo_Access_Array;
   type BasicEmailInfo_Access_Array_Access_Array is array (Natural range <>) of BasicEmailInfo_Access_Array_Access;
   type BasicEmailInfo_Access_Array_Access_Array_Access is access all BasicEmailInfo_Access_Array_Access_Array;
   type BasicEmailInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicEmailInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicEmailInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicEmailInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicEmailInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicEmailInfo_Access_Array_Access is (if Value /= null and then Value.all in BasicEmailInfo_Access_Array_Object'Class then BasicEmailInfo_Access_Array_Object'Class (Value.all).Value else null);
   type BasicEmailInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicEmailInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicEmailInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicEmailInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicEmailInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicEmailInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicEmailInfo_Access_Array_Access_Array_Object'Class then BasicEmailInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References;

with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References;
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
limited with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References;

package org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
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
   subtype EmailServerConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access;
   use type EmailServerConfigurationInterface_Access;
   subtype EmailServerConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array;
   use type EmailServerConfigurationInterface_Access_Array;
   subtype EmailServerConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access;
   use type EmailServerConfigurationInterface_Access_Array_Access;
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array;
   use type EmailServerConfigurationInterface_Access_Array_Access_Array;
   subtype EmailServerConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References.EmailServerConfigurationInterface_Access_Array_Access_Array_Access;
   use type EmailServerConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicEmailInfo_Access is org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References.BasicEmailInfo_Access;
   function "=" (Left, Right : BasicEmailInfo_Access) return Boolean renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References."=";
   subtype BasicEmailInfo_Access_Array is org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References.BasicEmailInfo_Access_Array;
   function "=" (Left, Right : BasicEmailInfo_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References."=";
   subtype BasicEmailInfo_Access_Array_Access is org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References.BasicEmailInfo_Access_Array_Access;
   function "=" (Left, Right : BasicEmailInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References."=";
   function Java_Box (Value : BasicEmailInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References.Java_Box;
   function Java_Unbox_BasicEmailInfo_Access_Array (Value : access Java_Object'Class) return BasicEmailInfo_Access_Array_Access renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References.Java_Unbox_BasicEmailInfo_Access_Array;
   subtype BasicEmailInfo_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References.BasicEmailInfo_Access_Array_Access_Array;
   function "=" (Left, Right : BasicEmailInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References."=";
   subtype BasicEmailInfo_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References.BasicEmailInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicEmailInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References."=";
   function Java_Box (Value : BasicEmailInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References.Java_Box;
   function Java_Unbox_BasicEmailInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicEmailInfo_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package_References.Java_Unbox_BasicEmailInfo_Access_Array_Access_Array;

   type BasicEmailInfo is new Java_Object with record
      logUtil : LogUtil_Access;
      subject : Unbounded_String;
      textBody : Unbounded_String;
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out BasicEmailInfo'Class; subject : Unbounded_String; textBody : Unbounded_String);
   function Create (subject : Unbounded_String; textBody : Unbounded_String) return BasicEmailInfo_Access;
   function getSubject (This : in out BasicEmailInfo) return Unbounded_String;
   function getTextBody (This : in out BasicEmailInfo) return Unbounded_String;
   function getEmailServerConfigurationInterface (This : in out BasicEmailInfo) return EmailServerConfigurationInterface_Access;
   procedure setEmailServerConfigurationInterface (This : in out BasicEmailInfo; emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class);
   function toString (This : in out BasicEmailInfo) return Unbounded_String;
   procedure init (This : in out BasicEmailInfo);

end org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;


