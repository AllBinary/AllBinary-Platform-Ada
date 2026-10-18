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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.visual.transform.StoreTransformer_Package; use org.allbinary.logic.visual.transform.StoreTransformer_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package body views.generic_Id.inventory.InventorySearchProductUtil_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package StoreTransformer_Package renames Standard.org.allbinary.logic.visual.transform.StoreTransformer_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformStoreDocumentFactory_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory_Package;
   package TransformInfoHttpSearch_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   procedure Initialize_Fields (This : in out InventorySearchProductUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.ITEM_NOT_FOUND := To_Unbounded_String ("Item Not Found.");
   end Initialize_Fields;

   procedure Initialize (This : in out InventorySearchProductUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InventorySearchProductUtil_Access is
      This : constant InventorySearchProductUtil_Access := new InventorySearchProductUtil;
   begin
      InventorySearchProductUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InventorySearchProductUtil_Access is
   begin
        return InventorySearchProductUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getProduct (This : in out InventorySearchProductUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class; product : Unbounded_String) return Unbounded_String is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      searchRequest : constant SearchRequest_Access := SearchRequest_Access (searchRequest_Param);
      inventoryEntityInterface : InventoryEntity_Access;
      itemInterface : ItemInterface_Access;
      viewDocumentInterface : TransformDocumentInterface_Access;
      success : Unbounded_String;
      outputStr : Unbounded_String;
   begin
        begin
            inventoryEntityInterface := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
            itemInterface := ItemInterface_Access (inventoryEntityInterface.getItem (product));
            if (itemInterface) /= (null) then
                viewDocumentInterface := TransformDocumentInterface_Access (TransformStoreDocumentFactory_Package.getInstance (searchRequest));
                viewDocumentInterface.getBaseNode.appendChild (BasicItemView_Package.Create (itemInterface, BasicArrayListD_Package.Create).toXmlNode (viewDocumentInterface.getDoc));
                success := XmlDocumentHelper_Package.toString (viewDocumentInterface.getDoc);
                outputStr := StoreTransformer_Package.Create (abeClientInformation, TransformInfoInterface_Access (TransformInfoHttpSearch_Package.Create (searchRequest))).translate (success);
                return outputStr;
            else
                return This.ITEM_NOT_FOUND;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PRODUCTSEARCHLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, InventorySearchProductUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getProduct"), e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Failed to getProduct")));
                end;
        end;
   end getProduct;

   procedure getProduct (This : in out InventorySearchProductUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class; product : Unbounded_String) is
      Java_Result : constant Unbounded_String := InventorySearchProductUtil'Class (This).getProduct (abeClientInformation_Param => abeClientInformation_Param, searchRequest_Param => searchRequest_Param, product => product);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProduct;

begin
   null;
   instance := InventorySearchProductUtil_Package.Create;

end views.generic_Id.inventory.InventorySearchProductUtil_Package;


