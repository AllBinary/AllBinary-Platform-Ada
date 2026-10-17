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
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package; use org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package;
with org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package; use org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;

package org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package is

   package ContextConfigurationInterface_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
   package AdminConfiguration_Package renames Standard.org.allbinary.business.user.modules.admin.configuration.AdminConfiguration_Package;
   package AdminConfigurationInterface_Package renames Standard.org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AdminEmailInfo is tagged;
   type AdminEmailInfo_Access is access all AdminEmailInfo'Class;
   type AdminEmailInfo_Access_Array is array (Natural range <>) of AdminEmailInfo_Access;
   type AdminEmailInfo_Access_Array_Access is access all AdminEmailInfo_Access_Array;

   type AdminEmailInfo is new BasicEmailInfo with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out AdminEmailInfo'Class; subject : Unbounded_String; textBody : Unbounded_String);
   function Create (subject : Unbounded_String; textBody : Unbounded_String) return AdminEmailInfo_Access;
   procedure init (This : in out AdminEmailInfo);

end org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;


