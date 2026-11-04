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

limited with views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
package views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References is
   type CustomizerUtil_Access is access all views.business.context.modules.storefront.customizer.CustomizerUtil_Package.CustomizerUtil'Class;
   type CustomizerUtil_Access_Array is array (Natural range <>) of CustomizerUtil_Access;
   type CustomizerUtil_Access_Array_Access is access all CustomizerUtil_Access_Array;
   type CustomizerUtil_Access_Array_Access_Array is array (Natural range <>) of CustomizerUtil_Access_Array_Access;
   type CustomizerUtil_Access_Array_Access_Array_Access is access all CustomizerUtil_Access_Array_Access_Array;
end views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References;

with views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References;
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
limited with org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package views.business.context.modules.storefront.customizer.CustomizerUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype DomNodeInterface_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access;
   use type DomNodeInterface_Access;
   subtype DomNodeInterface_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array;
   use type DomNodeInterface_Access_Array;
   subtype DomNodeInterface_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access;
   use type DomNodeInterface_Access_Array_Access;
   subtype DomNodeInterface_Access_Array_Access_Array is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array;
   use type DomNodeInterface_Access_Array_Access_Array;
   subtype DomNodeInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.DomNodeInterface_Package_References.DomNodeInterface_Access_Array_Access_Array_Access;
   use type DomNodeInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CustomizerUtil_Access is views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References.CustomizerUtil_Access;
   function "=" (Left, Right : CustomizerUtil_Access) return Boolean renames views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References."=";
   subtype CustomizerUtil_Access_Array is views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References.CustomizerUtil_Access_Array;
   function "=" (Left, Right : CustomizerUtil_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References."=";
   subtype CustomizerUtil_Access_Array_Access is views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References.CustomizerUtil_Access_Array_Access;
   function "=" (Left, Right : CustomizerUtil_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References."=";
   subtype CustomizerUtil_Access_Array_Access_Array is views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References.CustomizerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CustomizerUtil_Access_Array_Access_Array) return Boolean renames views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References."=";
   subtype CustomizerUtil_Access_Array_Access_Array_Access is views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References.CustomizerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomizerUtil_Access_Array_Access_Array_Access) return Boolean renames views.business.context.modules.storefront.customizer.CustomizerUtil_Package_References."=";

   type CustomizerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CustomizerUtil_Access;

   procedure Initialize (This : in out CustomizerUtil'Class);
   function Create return CustomizerUtil_Access;
   function getInstance return CustomizerUtil_Access;
   function getTransformInfoInterfaceToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoInterface_Access;
   procedure getTransformInfoInterfaceToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function getTransformInfoObjectConfigComponentNodesToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicArrayList_Access;
   procedure getTransformInfoObjectConfigComponentNodesToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function getTransformInfoObjectConfigComponentNodes (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicArrayList_Access;
   procedure getTransformInfoObjectConfigComponentNodes (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function getTransformInfoObjectConfigGroupComponentNodes (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicArrayList_Access;
   procedure getTransformInfoObjectConfigGroupComponentNodes (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   procedure insert (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; domNodeInterface_Param : access DomNodeInterface_Package.DomNodeInterface'Class);
   procedure write (This : in out CustomizerUtil; specifiedTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; documentString : Unbounded_String);
   function getViewDataForComponentsInObjectConfig (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return Document_Access;
   procedure getViewDataForComponentsInObjectConfig (This : in out CustomizerUtil; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);

end views.business.context.modules.storefront.customizer.CustomizerUtil_Package;


