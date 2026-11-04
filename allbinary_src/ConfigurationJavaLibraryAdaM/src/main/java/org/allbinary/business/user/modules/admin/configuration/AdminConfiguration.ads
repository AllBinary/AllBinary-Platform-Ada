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

limited with org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package;
package org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References is
   type AdminConfiguration_Access is access all org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package.AdminConfiguration'Class;
   type AdminConfiguration_Access_Array is array (Natural range <>) of AdminConfiguration_Access;
   type AdminConfiguration_Access_Array_Access is access all AdminConfiguration_Access_Array;
   type AdminConfiguration_Access_Array_Access_Array is array (Natural range <>) of AdminConfiguration_Access_Array_Access;
   type AdminConfiguration_Access_Array_Access_Array_Access is access all AdminConfiguration_Access_Array_Access_Array;
end org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References;

with org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package; use org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;

package org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package ContextConfigurationInterface_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype ContextConfigurationInterface_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access;
   use type ContextConfigurationInterface_Access;
   subtype ContextConfigurationInterface_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array;
   use type ContextConfigurationInterface_Access_Array;
   subtype ContextConfigurationInterface_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access;
   use type ContextConfigurationInterface_Access_Array_Access;
   subtype ContextConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array;
   use type ContextConfigurationInterface_Access_Array_Access_Array;
   subtype ContextConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array_Access;
   use type ContextConfigurationInterface_Access_Array_Access_Array_Access;
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


   subtype AdminConfiguration_Access is org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References.AdminConfiguration_Access;
   function "=" (Left, Right : AdminConfiguration_Access) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References."=";
   subtype AdminConfiguration_Access_Array is org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References.AdminConfiguration_Access_Array;
   function "=" (Left, Right : AdminConfiguration_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References."=";
   subtype AdminConfiguration_Access_Array_Access is org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References.AdminConfiguration_Access_Array_Access;
   function "=" (Left, Right : AdminConfiguration_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References."=";
   subtype AdminConfiguration_Access_Array_Access_Array is org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References.AdminConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : AdminConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References."=";
   subtype AdminConfiguration_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References.AdminConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdminConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package_References."=";

   type AdminConfiguration is new Java_Object and AdminConfigurationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      contextConfigurationInterface : ContextConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out AdminConfiguration'Class);
   function Create return AdminConfiguration_Access;
   procedure Initialize (This : in out AdminConfiguration'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return AdminConfiguration_Access;
   procedure Initialize (This : in out AdminConfiguration'Class; storeHashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (storeHashMap_Param : access HashMap_Package.HashMap'Class) return AdminConfiguration_Access;
   procedure getFormData (This : in out AdminConfiguration; storeHashMap_Param : access HashMap_Package.HashMap'Class);
   procedure write (This : in out AdminConfiguration);
   function getContextConfigurationInterface (This : in out AdminConfiguration) return ContextConfigurationInterface_Access;
   procedure setContextConfigurationInterface (This : in out AdminConfiguration; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class);

end org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package;


