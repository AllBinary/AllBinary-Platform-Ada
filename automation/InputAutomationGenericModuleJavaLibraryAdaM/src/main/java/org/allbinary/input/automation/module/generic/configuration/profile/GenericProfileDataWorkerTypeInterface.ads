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

limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References is
   type GenericProfileDataWorkerTypeInterface_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package.GenericProfileDataWorkerTypeInterface'Class;
   type GenericProfileDataWorkerTypeInterface_Access_Array is array (Natural range <>) of GenericProfileDataWorkerTypeInterface_Access;
   type GenericProfileDataWorkerTypeInterface_Access_Array_Access is access all GenericProfileDataWorkerTypeInterface_Access_Array;
   type GenericProfileDataWorkerTypeInterface_Access_Array_Access_Array is array (Natural range <>) of GenericProfileDataWorkerTypeInterface_Access_Array_Access;
   type GenericProfileDataWorkerTypeInterface_Access_Array_Access_Array_Access is access all GenericProfileDataWorkerTypeInterface_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References;
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
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GenericProfileDataWorkerTypeInterface is interface;
   subtype GenericProfileDataWorkerTypeInterface_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References.GenericProfileDataWorkerTypeInterface_Access;
   function "=" (Left, Right : GenericProfileDataWorkerTypeInterface_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References."=";
   subtype GenericProfileDataWorkerTypeInterface_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References.GenericProfileDataWorkerTypeInterface_Access_Array;
   function "=" (Left, Right : GenericProfileDataWorkerTypeInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References."=";
   subtype GenericProfileDataWorkerTypeInterface_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References.GenericProfileDataWorkerTypeInterface_Access_Array_Access;
   function "=" (Left, Right : GenericProfileDataWorkerTypeInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References."=";
   subtype GenericProfileDataWorkerTypeInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References.GenericProfileDataWorkerTypeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfileDataWorkerTypeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References."=";
   subtype GenericProfileDataWorkerTypeInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References.GenericProfileDataWorkerTypeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfileDataWorkerTypeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package_References."=";
   function Java_Object_Access_From_GenericProfileDataWorkerTypeInterface (Value : GenericProfileDataWorkerTypeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out GenericProfileDataWorkerTypeInterface) return Unbounded_String is abstract;
   procedure setName (This : in out GenericProfileDataWorkerTypeInterface; name : Unbounded_String) is abstract;
   function toString (This : in out GenericProfileDataWorkerTypeInterface) return Unbounded_String is abstract;
   function toXmlNode (This : in out GenericProfileDataWorkerTypeInterface; document_Param : access Document_Package.Document'Class) return Node_Access is abstract;
   procedure toXmlNode (This : in out GenericProfileDataWorkerTypeInterface; document_Param : access Document_Package.Document'Class) is abstract;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package;


