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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.user.commerce.inventory.InventoryData_Package; use org.allbinary.business.user.commerce.inventory.InventoryData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;

package body views.generic_Id.inventory.InventoryView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package InventoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.InventoryData_Package;
   package BasicItemView_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemView_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package SearchData_Package renames Standard.org.allbinary.logic.control.search.SearchData_Package;
   procedure Initialize_Fields (This : in out InventoryView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return InventoryView_Access is
      This : constant InventoryView_Access := new InventoryView;
   begin
      InventoryView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out InventoryView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      inventoryEntityInterface : InventoryEntity_Access;
      inventoryNode : Node_Access;
      itemVector : BasicArrayList_Access;
      size : Integer;
      itemInterface : ItemInterface_Access;
      node : Node_Access;
      index : Integer;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Starting"), InventoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
            end if;
            inventoryEntityInterface := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
            inventoryNode := document.createElement (InventoryData_Package.INVENTORY);
            itemVector := inventoryEntityInterface.getItems (StoreFrontFactory_Package.getInstance (InventoryView'Class (This).getTransformInfoInterface.getStoreName));
            inventoryNode.appendChild (ModDomHelper_Package.createNameValueNodes (document, SearchData_Package.TOTAL_NUMBER_ITEMS_ON_THIS_PAGE, itemVector.size.toString));
            size := itemVector.size;
            for index in 0 .. (size) - 1 loop
                itemInterface := ItemInterface_Access (itemVector.get (index));
                if (itemInterface) /= (null) then
                    node := BasicItemView_Package.Create (itemInterface, BasicArrayListD_Package.Create).toXmlNode (document);
                    inventoryNode.appendChild (node);
                else
                    This.logUtil.putF (To_Unbounded_String ("Inventory"), InventoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"));
                end if;
            end loop;
            return inventoryNode;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, InventoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out InventoryView) is
   begin
        InventoryView'Class (This).addDomNodeInterface (DomNodeInterface_Access (InventoryView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   function view (This : in out InventoryView) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            InventoryView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to view Inventory");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, InventoryView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            return error;
                end;
        end;
   end view;

   procedure toXmlNode (This : in out InventoryView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := InventoryView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.inventory.InventoryView_Package;


