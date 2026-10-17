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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView_Package; use org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView_Package;
with org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package; use org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package DynamicObjectData_Package renames org.allbinary.business.DynamicObjectData_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package BasicWeightShippingModuleView_Package renames org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView_Package;
   package NoShippingModuleView_Package renames org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package;
   package ShippingInterface_Package renames org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
   package DomNodeHelper_Package renames org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package CryptFileReader_Package renames org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeFactory_Package renames org.allbinary.logic.system.loader.AbeFactory_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoObjectConfigData_Package renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type ShippingMethodsFactory is tagged;
   type ShippingMethodsFactory_Access is access all ShippingMethodsFactory'Class;
   type ShippingMethodsFactory_Access_Array is array (Natural range <>) of ShippingMethodsFactory_Access;
   type ShippingMethodsFactory_Access_Array_Access is access all ShippingMethodsFactory_Access_Array;

   type ShippingMethodsFactory is new Java_Object with record
      defaultShippingMethodInterface : ShippingInterface_Access;
      document : Document_Access;
      shippingVector : BasicArrayList_Access;
   end record;
   SHIPPINGMETHODSFILEPATHSTRING : Unbounded_String;
   SHIPPINGMETHODSFILENAME : Unbounded_String;

   procedure Initialize (This : in out ShippingMethodsFactory'Class; abeClientInformation : AbeClientInformationInterface_Access; storeFrontInterface : StoreFrontInterface_Access);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; storeFrontInterface : StoreFrontInterface_Access) return ShippingMethodsFactory_Access;
   function getInstance (This : in out ShippingMethodsFactory) return BasicArrayList_Access;
   procedure getInstance (This : in out ShippingMethodsFactory);
   function getDefaultInstance (This : in out ShippingMethodsFactory) return ShippingInterface_Access;
   procedure getDefaultInstance (This : in out ShippingMethodsFactory);

end org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package;


