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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;

package org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type ContextConfigurationInterfaceFactory is tagged;
   type ContextConfigurationInterfaceFactory_Access is access all ContextConfigurationInterfaceFactory'Class;
   type ContextConfigurationInterfaceFactory_Access_Array is array (Natural range <>) of ContextConfigurationInterfaceFactory_Access;
   type ContextConfigurationInterfaceFactory_Access_Array_Access is access all ContextConfigurationInterfaceFactory_Access_Array;
   type ContextConfigurationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationInterfaceFactory_Access_Array_Access;
   type ContextConfigurationInterfaceFactory_Access_Array_Access_Array_Access is access all ContextConfigurationInterfaceFactory_Access_Array_Access_Array;

   type ContextConfigurationInterfaceFactory is new Java_Object with null record;
   instance : ContextConfigurationInterfaceFactory_Access;

   procedure Initialize (This : in out ContextConfigurationInterfaceFactory'Class);
   function Create return ContextConfigurationInterfaceFactory_Access;
   function getInstance return ContextConfigurationInterfaceFactory_Access;
   function getInstance (This : in out ContextConfigurationInterfaceFactory; document_Param : access Document_Package.Document'Class) return ContextConfigurationInterface_Access;
   procedure getInstance (This : in out ContextConfigurationInterfaceFactory; document_Param : access Document_Package.Document'Class);
   function getInstance (This : in out ContextConfigurationInterfaceFactory; contextName : Unbounded_String) return ContextConfigurationInterface_Access;
   procedure getInstance (This : in out ContextConfigurationInterfaceFactory; contextName : Unbounded_String);

end org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;


