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

package org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package is

   package ContextConfigurationInterface_Package renames Standard.org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;

   type AdminConfigurationInterface is interface;
   type AdminConfigurationInterface_Access is access all AdminConfigurationInterface'Class;
   type AdminConfigurationInterface_Access_Array is array (Natural range <>) of AdminConfigurationInterface_Access;
   type AdminConfigurationInterface_Access_Array_Access is access all AdminConfigurationInterface_Access_Array;
   procedure write (This : in out AdminConfigurationInterface) is abstract;
   function getContextConfigurationInterface (This : in out AdminConfigurationInterface) return ContextConfigurationInterface_Access is abstract;
   procedure setContextConfigurationInterface (This : in out AdminConfigurationInterface; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) is abstract;

end org.allbinary.business.user.modules.admin.configuration.AdminConfigurationInterface_Package;


