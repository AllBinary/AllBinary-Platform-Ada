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


package body views.generic_Id.inventory.InventorySearchProductUtil_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return InventorySearchProductUtil_Access is
   begin
        return InventorySearchProductUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getProduct (This : in out InventorySearchProductUtil; abeClientInformation : AbeClientInformationInterface_Access; searchRequest : SearchRequest_Access; product : Unbounded_String) return Unbounded_String is
      inventoryEntityInterface : InventoryEntity_Access;
      itemInterface : ItemInterface_Access;
      viewDocumentInterface : TransformDocumentInterface_Access;
      success : Unbounded_String;
      outputStr : Unbounded_String;
   begin
        begin
            inventoryEntityInterface := InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance;
            itemInterface := inventoryEntityInterface.getItem (product);
            if (itemInterface) /= (null) then
                viewDocumentInterface := TransformStoreDocumentFactory_Package.getInstance (searchRequest);
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
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, To_Unbounded_String ("getProduct"), e);
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Failed to getProduct")));
                end;
        end;
   end getProduct;

   procedure getInstance is
      Java_Result : constant InventorySearchProductUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getProduct (This : in out InventorySearchProductUtil; abeClientInformation : AbeClientInformationInterface_Access; searchRequest : SearchRequest_Access; product : Unbounded_String) is
      Java_Result : constant Unbounded_String := InventorySearchProductUtil'Class (This).getProduct (abeClientInformation, searchRequest, product);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProduct;

begin
   null;
   instance := InventorySearchProductUtil_Package.Create;

end views.generic_Id.inventory.InventorySearchProductUtil_Package;


