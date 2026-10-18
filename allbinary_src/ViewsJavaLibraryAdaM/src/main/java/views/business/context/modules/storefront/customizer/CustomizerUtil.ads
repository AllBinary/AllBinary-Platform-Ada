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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package views.business.context.modules.storefront.customizer.CustomizerUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type CustomizerUtil is tagged;
   type CustomizerUtil_Access is access all CustomizerUtil'Class;
   type CustomizerUtil_Access_Array is array (Natural range <>) of CustomizerUtil_Access;
   type CustomizerUtil_Access_Array_Access is access all CustomizerUtil_Access_Array;
   type CustomizerUtil_Access_Array_Access_Array is array (Natural range <>) of CustomizerUtil_Access_Array_Access;
   type CustomizerUtil_Access_Array_Access_Array_Access is access all CustomizerUtil_Access_Array_Access_Array;

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


