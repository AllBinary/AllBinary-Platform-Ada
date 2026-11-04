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

limited with org.allbinary.business.context.configuration.ContextConfiguration_Package;
package org.allbinary.business.context.configuration.ContextConfiguration_Package_References is
   type ContextConfiguration_Access is access all org.allbinary.business.context.configuration.ContextConfiguration_Package.ContextConfiguration'Class;
   type ContextConfiguration_Access_Array is array (Natural range <>) of ContextConfiguration_Access;
   type ContextConfiguration_Access_Array_Access is access all ContextConfiguration_Access_Array;
   type ContextConfiguration_Access_Array_Access_Array is array (Natural range <>) of ContextConfiguration_Access_Array_Access;
   type ContextConfiguration_Access_Array_Access_Array_Access is access all ContextConfiguration_Access_Array_Access_Array;
end org.allbinary.business.context.configuration.ContextConfiguration_Package_References;

with org.allbinary.business.context.configuration.ContextConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;

package org.allbinary.business.context.configuration.ContextConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
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


   subtype ContextConfiguration_Access is org.allbinary.business.context.configuration.ContextConfiguration_Package_References.ContextConfiguration_Access;
   function "=" (Left, Right : ContextConfiguration_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfiguration_Package_References."=";
   subtype ContextConfiguration_Access_Array is org.allbinary.business.context.configuration.ContextConfiguration_Package_References.ContextConfiguration_Access_Array;
   function "=" (Left, Right : ContextConfiguration_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfiguration_Package_References."=";
   subtype ContextConfiguration_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfiguration_Package_References.ContextConfiguration_Access_Array_Access;
   function "=" (Left, Right : ContextConfiguration_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfiguration_Package_References."=";
   subtype ContextConfiguration_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfiguration_Package_References.ContextConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : ContextConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfiguration_Package_References."=";
   subtype ContextConfiguration_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfiguration_Package_References.ContextConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ContextConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfiguration_Package_References."=";

   type ContextConfiguration is new Java_Object and ContextConfigurationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out ContextConfiguration'Class);
   function Create return ContextConfiguration_Access;
   procedure Initialize (This : in out ContextConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return ContextConfiguration_Access;
   function getEmailServerConfigurationInterface (This : in out ContextConfiguration) return EmailServerConfigurationInterface_Access;
   procedure setEmailServerConfigurationInterface (This : in out ContextConfiguration; emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class);

end org.allbinary.business.context.configuration.ContextConfiguration_Package;


