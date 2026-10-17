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
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;

package org.allbinary.business.context.configuration.ContextConfigurationInterface_Package is

   package EmailServerConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;

   type ContextConfigurationInterface is interface;
   type ContextConfigurationInterface_Access is access all ContextConfigurationInterface'Class;
   type ContextConfigurationInterface_Access_Array is array (Natural range <>) of ContextConfigurationInterface_Access;
   type ContextConfigurationInterface_Access_Array_Access is access all ContextConfigurationInterface_Access_Array;
   function getEmailServerConfigurationInterface (This : in out ContextConfigurationInterface) return EmailServerConfigurationInterface_Access is abstract;
   procedure setEmailServerConfigurationInterface (This : in out ContextConfigurationInterface; emailServerConfigurationInterface : EmailServerConfigurationInterface_Access) is abstract;

end org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;


