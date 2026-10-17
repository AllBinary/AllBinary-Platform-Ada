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


package body views.generic_Id.inventory.InventoryView_Package is

   procedure Initialize_Fields (This : in out InventoryView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return InventoryView_Access is
      This : constant InventoryView_Access := new InventoryView;
   begin
      InventoryView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out InventoryView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
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
            itemVector := inventoryEntityInterface.getItems (StoreFrontFactory_Package.getInstance (This.getTransformInfoInterface.getStoreName));
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
        This.addDomNodeInterface (DomNodeInterface_Access (InventoryView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   function view (This : in out InventoryView) return Unbounded_String is
      error : Unbounded_String;
   begin
        begin
            This.addDomNodeInterfaces;
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

   procedure toXmlNode (This : in out InventoryView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := InventoryView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.generic_Id.inventory.InventoryView_Package;


