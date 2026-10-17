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


package body org.allbinary.business.context.modules.storefront.StoreFrontView_Package is

   procedure Initialize_Fields (This : in out StoreFrontView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontView'Class; storeFrontInterface_Param : access StoreFrontInterface'Class) is
      storeFrontInterface : StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (To_Unbounded_String ("Constructing: StoreFrontView for: ") & storeFrontInterface.getName, StoreFrontView_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        end if;
        This.storeFrontInterface := storeFrontInterface;
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface'Class) return StoreFrontView_Access is
      This : constant StoreFrontView_Access := new StoreFrontView;
   begin
      StoreFrontView_Package.Initialize (This.all, storeFrontInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out StoreFrontView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      storeFrontData : StoreFrontData_Access;
      node : Node_Access;
   begin
        hashMap := This.storeFrontInterface.toHashMap;
        storeFrontData := StoreFrontData_Package.getInstance;
        hashMap.put (storeFrontData.CURRENTHOMEHOSTNAME, This.storeFrontInterface.getCurrentHomeHostName);
        hashMap.put (storeFrontData.CURRENTHOMEHOSTNAMEPATH, This.storeFrontInterface.getCurrentHomeHostNamePath);
        hashMap.put (storeFrontData.CURRENTHOSTNAME, This.storeFrontInterface.getCurrentHostName);
        hashMap.put (storeFrontData.CURRENTHOSTNAMEPATH, This.storeFrontInterface.getCurrentHostNamePath);
        hashMap.put (BasketData_Package.NAME, This.storeFrontInterface.getBasketName);
        node := ModDomHelper_Package.createNameValueNodes (document, storeFrontData.NAME, hashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out StoreFrontView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := StoreFrontView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.modules.storefront.StoreFrontView_Package;


