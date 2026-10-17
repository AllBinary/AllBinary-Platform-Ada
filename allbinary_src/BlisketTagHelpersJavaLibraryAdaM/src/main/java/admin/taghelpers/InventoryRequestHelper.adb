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


package body admin.taghelpers.InventoryRequestHelper_Package is

   procedure Initialize_Fields (This : in out InventoryRequestHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryRequestHelper'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
      inventoryTag : HelperTag_Access;
      itemView : InventoryItemView_Access;
   begin
      ModifyTable_Package.Initialize (This);
      Initialize_Fields (This);
        inventoryTag := HelperTag_Access (propertiesHashMap.get (AbTagData_Package.PARENT));
        itemView := InventoryItemViewParentTagHelper_Package.getInstance.getInventoryItemView (inventoryTag);
        This.itemInterface := itemView.getItemInterface;
   end Initialize;

   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return InventoryRequestHelper_Access is
      This : constant InventoryRequestHelper_Access := new InventoryRequestHelper;
   begin
      Initialize (This.all, propertiesHashMap, pageContext);
      return This;
   end Create;

   --  throws Exception
   function insert (This : in out InventoryRequestHelper) return Unbounded_String is
      dataMappingInterface : TableMappingInterface_Access;
      values : BasicArrayList_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            dataMappingInterface := TableMappingInterface_Access (This.getItemInterface);
            values := dataMappingInterface.toVector;
            InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.insert (values);
            success := To_Unbounded_String ("Successfully Added Product");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("insert()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add item to Inventory");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("insert()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function delete (This : in out InventoryRequestHelper) return Unbounded_String is
      dataMappingInterface : TableMappingInterface_Access;
      id : Unbounded_String;
      stringBuffer : StringMaker_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            dataMappingInterface := TableMappingInterface_Access (This.getItemInterface);
            id := Unbounded_String (dataMappingInterface.getKey);
            InventoryEntityFactory_Package.getInstance.getInventoryEntityInstance.deleteWhere (This.basicItemData.ID, id);
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Successfully Removed the item with "));
            stringBuffer.append (This.basicItemData.ID);
            stringBuffer.append (To_Unbounded_String ("="));
            stringBuffer.append (id);
            stringBuffer.append (To_Unbounded_String (" from to the Inventory table"));
            success := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, This.tagStrings.DO_START_TAG);
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to remove item with from Inventory");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.tagStrings.DO_START_TAG, e);
            end if;
            return error;
                end;
        end;
   end delete;

   function update (This : in out InventoryRequestHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            This.delete;
            This.insert;
            success := To_Unbounded_String ("Item Successfully Updated");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed To Update Item");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

   function getItemInterface (This : in out InventoryRequestHelper) return ItemInterface_Access is
   begin
        return This.itemInterface;
   end getItemInterface;

   procedure insert (This : in out InventoryRequestHelper) is
      Java_Result : constant Unbounded_String := InventoryRequestHelper'Class (This).insert;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insert;

   procedure delete (This : in out InventoryRequestHelper) is
      Java_Result : constant Unbounded_String := InventoryRequestHelper'Class (This).delete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

   procedure update (This : in out InventoryRequestHelper) is
      Java_Result : constant Unbounded_String := InventoryRequestHelper'Class (This).update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

   procedure getItemInterface (This : in out InventoryRequestHelper) is
      Java_Result : constant ItemInterface_Access := InventoryRequestHelper'Class (This).getItemInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getItemInterface;

end admin.taghelpers.InventoryRequestHelper_Package;


