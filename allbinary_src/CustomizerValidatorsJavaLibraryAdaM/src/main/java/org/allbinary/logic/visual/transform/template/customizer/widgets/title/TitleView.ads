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
limited with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package;
package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References is
   type TitleView_Access is access all org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package.TitleView'Class;
   type TitleView_Access_Array is array (Natural range <>) of TitleView_Access;
   type TitleView_Access_Array_Access is access all TitleView_Access_Array;
   type TitleView_Access_Array_Access_Array is array (Natural range <>) of TitleView_Access_Array_Access;
   type TitleView_Access_Array_Access_Array_Access is access all TitleView_Access_Array_Access_Array;
   type TitleView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TitleView_Access_Array_Access;
   end record;
   function Java_Box (Value : TitleView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TitleView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TitleView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TitleView_Access_Array_Access is (if Value /= null and then Value.all in TitleView_Access_Array_Object'Class then TitleView_Access_Array_Object'Class (Value.all).Value else null);
   type TitleView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TitleView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TitleView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TitleView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TitleView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TitleView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TitleView_Access_Array_Access_Array_Object'Class then TitleView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References;

with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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


   subtype TitleView_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References.TitleView_Access;
   function "=" (Left, Right : TitleView_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References."=";
   subtype TitleView_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References.TitleView_Access_Array;
   function "=" (Left, Right : TitleView_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References."=";
   subtype TitleView_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References.TitleView_Access_Array_Access;
   function "=" (Left, Right : TitleView_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References."=";
   function Java_Box (Value : TitleView_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References.Java_Box;
   function Java_Unbox_TitleView_Access_Array (Value : access Java_Object'Class) return TitleView_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References.Java_Unbox_TitleView_Access_Array;
   subtype TitleView_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References.TitleView_Access_Array_Access_Array;
   function "=" (Left, Right : TitleView_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References."=";
   subtype TitleView_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References.TitleView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TitleView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References."=";
   function Java_Box (Value : TitleView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References.Java_Box;
   function Java_Unbox_TitleView_Access_Array_Access_Array (Value : access Java_Object'Class) return TitleView_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package_References.Java_Unbox_TitleView_Access_Array_Access_Array;

   type TitleView is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      title : Unbounded_String;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out TitleView'Class);
   function Create return TitleView_Access;
   procedure Initialize (This : in out TitleView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return TitleView_Access;
   procedure Initialize (This : in out TitleView'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return TitleView_Access;
   function getTitle (This : in out TitleView) return Unbounded_String;
   procedure getFormData (This : in out TitleView; hashMap_Param : access HashMap_Package.HashMap'Class);
   function toHashMap (This : in out TitleView) return HashMap_Access;
   function toXmlNode (This : in out TitleView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out TitleView; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleView_Package;


