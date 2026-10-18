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
with org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.modules.storefront.customizer.includes.meta.MetaView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package MetasValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.includes.meta.MetasValidation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type MetaView is tagged;
   type MetaView_Access is access all MetaView'Class;
   type MetaView_Access_Array is array (Natural range <>) of MetaView_Access;
   type MetaView_Access_Array_Access is access all MetaView_Access_Array;
   type MetaView_Access_Array_Access_Array is array (Natural range <>) of MetaView_Access_Array_Access;
   type MetaView_Access_Array_Access_Array_Access is access all MetaView_Access_Array_Access_Array;

   type MetaView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      metasValidation : MetasValidation_Access;
   end record;

   procedure Initialize (This : in out MetaView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return MetaView_Access;
   procedure addDomNodeInterfaces (This : in out MetaView);
   function toXmlNode (This : in out MetaView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out MetaView; document_Param : access Document_Package.Document'Class);
   function view (This : in out MetaView) return Unbounded_String;

end views.business.context.modules.storefront.customizer.includes.meta.MetaView_Package;


