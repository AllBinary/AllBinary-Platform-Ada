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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package GlobalsValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.includes.globals.GlobalsValidation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type GlobalsView is tagged;
   type GlobalsView_Access is access all GlobalsView'Class;
   type GlobalsView_Access_Array is array (Natural range <>) of GlobalsView_Access;
   type GlobalsView_Access_Array_Access is access all GlobalsView_Access_Array;
   type GlobalsView_Access_Array_Access_Array is array (Natural range <>) of GlobalsView_Access_Array_Access;
   type GlobalsView_Access_Array_Access_Array_Access is access all GlobalsView_Access_Array_Access_Array;

   type GlobalsView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      globalsValidation : GlobalsValidation_Access;
   end record;

   procedure Initialize (This : in out GlobalsView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return GlobalsView_Access;
   procedure addDomNodeInterfaces (This : in out GlobalsView);
   function toXmlNode (This : in out GlobalsView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GlobalsView; document_Param : access Document_Package.Document'Class);
   function view (This : in out GlobalsView) return Unbounded_String;

end views.business.context.modules.storefront.customizer.includes.globals.GlobalsView_Package;


