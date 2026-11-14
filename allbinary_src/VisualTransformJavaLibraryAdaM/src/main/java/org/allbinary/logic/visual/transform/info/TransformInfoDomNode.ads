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

with AllBinary_Java;
limited with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References is
   type TransformInfoDomNode_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package.TransformInfoDomNode'Class;
   type TransformInfoDomNode_Access_Array is array (Natural range <>) of TransformInfoDomNode_Access;
   type TransformInfoDomNode_Access_Array_Access is access all TransformInfoDomNode_Access_Array;
   type TransformInfoDomNode_Access_Array_Access_Array is array (Natural range <>) of TransformInfoDomNode_Access_Array_Access;
   type TransformInfoDomNode_Access_Array_Access_Array_Access is access all TransformInfoDomNode_Access_Array_Access_Array;
   type TransformInfoDomNode_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoDomNode_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoDomNode_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoDomNode_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoDomNode_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoDomNode_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoDomNode_Access_Array_Object'Class then TransformInfoDomNode_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoDomNode_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoDomNode_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoDomNode_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoDomNode_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoDomNode_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoDomNode_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoDomNode_Access_Array_Access_Array_Object'Class then TransformInfoDomNode_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoDomNode_Access is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access;
   function "=" (Left, Right : TransformInfoDomNode_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References."=";
   subtype TransformInfoDomNode_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access_Array;
   function "=" (Left, Right : TransformInfoDomNode_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References."=";
   subtype TransformInfoDomNode_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access_Array_Access;
   function "=" (Left, Right : TransformInfoDomNode_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References."=";
   function Java_Box (Value : TransformInfoDomNode_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.Java_Box;
   function Java_Unbox_TransformInfoDomNode_Access_Array (Value : access Java_Object'Class) return TransformInfoDomNode_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.Java_Unbox_TransformInfoDomNode_Access_Array;
   subtype TransformInfoDomNode_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoDomNode_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References."=";
   subtype TransformInfoDomNode_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.TransformInfoDomNode_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoDomNode_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References."=";
   function Java_Box (Value : TransformInfoDomNode_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.Java_Box;
   function Java_Unbox_TransformInfoDomNode_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoDomNode_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package_References.Java_Unbox_TransformInfoDomNode_Access_Array_Access_Array;

   type TransformInfoDomNode is new Java_Object with record
      logUtil : LogUtil_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      mappedName : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransformInfoDomNode'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return TransformInfoDomNode_Access;
   procedure Initialize (This : in out TransformInfoDomNode'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoDomNode_Access;
   procedure Initialize (This : in out TransformInfoDomNode'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; mappedName : Unbounded_String);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; mappedName : Unbounded_String) return TransformInfoDomNode_Access;
   procedure Initialize (This : in out TransformInfoDomNode'Class; name : Unbounded_String; mappedName : Unbounded_String);
   function Create (name : Unbounded_String; mappedName : Unbounded_String) return TransformInfoDomNode_Access;
   function getTransformInfoInterface (This : in out TransformInfoDomNode) return TransformInfoInterface_Access;
   function getMappedName (This : in out TransformInfoDomNode) return Unbounded_String;
   function getReplaceKey (This : in out TransformInfoDomNode) return Unbounded_String;

end org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;


