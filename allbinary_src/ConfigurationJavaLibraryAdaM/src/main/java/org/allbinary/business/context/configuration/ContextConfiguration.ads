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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;

package org.allbinary.business.context.configuration.ContextConfiguration_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EmailServerConfiguration_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration_Package;
   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ContextConfiguration is tagged;
   type ContextConfiguration_Access is access all ContextConfiguration'Class;
   type ContextConfiguration_Access_Array is array (Natural range <>) of ContextConfiguration_Access;
   type ContextConfiguration_Access_Array_Access is access all ContextConfiguration_Access_Array;

   type ContextConfiguration is new ContextConfigurationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out ContextConfiguration'Class);
   function Create return ContextConfiguration_Access;
   function getEmailServerConfigurationInterface (This : in out ContextConfiguration) return EmailServerConfigurationInterface_Access;
   procedure setEmailServerConfigurationInterface (This : in out ContextConfiguration; emailServerConfigurationInterface : EmailServerConfigurationInterface_Access);

end org.allbinary.business.context.configuration.ContextConfiguration_Package;


