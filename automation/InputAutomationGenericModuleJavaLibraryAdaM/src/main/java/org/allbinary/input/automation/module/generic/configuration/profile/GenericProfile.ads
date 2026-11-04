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

limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References is
   type GenericProfile_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package.GenericProfile'Class;
   type GenericProfile_Access_Array is array (Natural range <>) of GenericProfile_Access;
   type GenericProfile_Access_Array_Access is access all GenericProfile_Access_Array;
   type GenericProfile_Access_Array_Access_Array is array (Natural range <>) of GenericProfile_Access_Array_Access;
   type GenericProfile_Access_Array_Access_Array_Access is access all GenericProfile_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package GenericProfileActions_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype GenericProfileActions_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access;
   use type GenericProfileActions_Access;
   subtype GenericProfileActions_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array;
   use type GenericProfileActions_Access_Array;
   subtype GenericProfileActions_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array_Access;
   use type GenericProfileActions_Access_Array_Access;
   subtype GenericProfileActions_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array_Access_Array;
   use type GenericProfileActions_Access_Array_Access_Array;
   subtype GenericProfileActions_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package_References.GenericProfileActions_Access_Array_Access_Array_Access;
   use type GenericProfileActions_Access_Array_Access_Array_Access;
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
   subtype GenericProfileDataWorkerType_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access;
   use type GenericProfileDataWorkerType_Access;
   subtype GenericProfileDataWorkerType_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access_Array;
   use type GenericProfileDataWorkerType_Access_Array;
   subtype GenericProfileDataWorkerType_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access_Array_Access;
   use type GenericProfileDataWorkerType_Access_Array_Access;
   subtype GenericProfileDataWorkerType_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access_Array_Access_Array;
   use type GenericProfileDataWorkerType_Access_Array_Access_Array;
   subtype GenericProfileDataWorkerType_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access_Array_Access_Array_Access;
   use type GenericProfileDataWorkerType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfile_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access;
   function "=" (Left, Right : GenericProfile_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";
   subtype GenericProfile_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array;
   function "=" (Left, Right : GenericProfile_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";
   subtype GenericProfile_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access;
   function "=" (Left, Right : GenericProfile_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";
   subtype GenericProfile_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfile_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";
   subtype GenericProfile_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfile_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References."=";

   type GenericProfile is new Java_Object with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      vector : BasicArrayList_Access;
      genericProfileActions : GenericProfileActions_Access;
   end record;

   procedure Initialize (This : in out GenericProfile'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return GenericProfile_Access;
   procedure Initialize (This : in out GenericProfile'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return GenericProfile_Access;
   function getGenericProfileDataWorkerTypeVector (This : in out GenericProfile) return BasicArrayList_Access;
   procedure add (This : in out GenericProfile; genericProfileDataWorkerType_Param : access GenericProfileDataWorkerType_Package.GenericProfileDataWorkerType'Class);
   procedure remove (This : in out GenericProfile; genericProfileDataWorkerType_Param : access GenericProfileDataWorkerType_Package.GenericProfileDataWorkerType'Class);
   function toXmlNode (This : in out GenericProfile; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericProfile; document_Param : access Document_Package.Document'Class);
   function getName (This : in out GenericProfile) return Unbounded_String;
   procedure setName (This : in out GenericProfile; name : Unbounded_String);
   function getGenericProfileActions (This : in out GenericProfile) return GenericProfileActions_Access;
   procedure setGenericProfileActions (This : in out GenericProfile; genericProfileActions_Param : access GenericProfileActions_Package.GenericProfileActions'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;


