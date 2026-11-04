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

limited with org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;
package org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References is
   type ContextConfigurationInterfaceFactory_Access is access all org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package.ContextConfigurationInterfaceFactory'Class;
   type ContextConfigurationInterfaceFactory_Access_Array is array (Natural range <>) of ContextConfigurationInterfaceFactory_Access;
   type ContextConfigurationInterfaceFactory_Access_Array_Access is access all ContextConfigurationInterfaceFactory_Access_Array;
   type ContextConfigurationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationInterfaceFactory_Access_Array_Access;
   type ContextConfigurationInterfaceFactory_Access_Array_Access_Array_Access is access all ContextConfigurationInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References;

with org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References;

package org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ContextConfigurationInterfaceFactory_Access is org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References.ContextConfigurationInterfaceFactory_Access;
   function "=" (Left, Right : ContextConfigurationInterfaceFactory_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References."=";
   subtype ContextConfigurationInterfaceFactory_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References.ContextConfigurationInterfaceFactory_Access_Array;
   function "=" (Left, Right : ContextConfigurationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References."=";
   subtype ContextConfigurationInterfaceFactory_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References.ContextConfigurationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References."=";
   subtype ContextConfigurationInterfaceFactory_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References.ContextConfigurationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ContextConfigurationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References."=";
   subtype ContextConfigurationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References.ContextConfigurationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package_References."=";

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


