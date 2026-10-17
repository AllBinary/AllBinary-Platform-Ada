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


package body org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package is

   procedure Initialize_Fields (This : in out TransformStoreDocument'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformStoreDocument'Class; pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access) is
      storeName : Unbounded_String;
   begin
        TransformHttpRequestDocument_Package.Initialize (This, pageContext, weblisketSession);
        Initialize_Fields (This);
        begin
            storeName := weblisketSession.getStoreName;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Using Session StoreName: ") & storeName, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
            end if;
            This.getBaseNode.appendChild (StoreFrontViewFactory_Package.getInstance (storeName).toXmlNode (This.getDoc));
            This.getBaseNode.appendChild (RequestParams_Package.Create (HttpServletRequest_Access (pageContext.getRequest)).toXmlNode (This.getDoc));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
        end;
   end Initialize;

   function Create (pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access) return TransformStoreDocument_Access is
      This : constant TransformStoreDocument_Access := new TransformStoreDocument;
   begin
      Initialize (This.all, pageContext, weblisketSession);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out TransformStoreDocument'Class; searchRequest : SearchRequest_Access) is
   begin
        TransformHttpRequestDocument_Package.Initialize (This, searchRequest);
        Initialize_Fields (This);
        begin
            This.getBaseNode.appendChild (StoreFrontViewFactory_Package.getInstance (searchRequest.getStoreFront.getName).toXmlNode (This.getDoc));
            This.getBaseNode.appendChild (searchRequest.getParams.getParamsNode (This.getDoc));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
        end;
   end Initialize;

   function Create (searchRequest : SearchRequest_Access) return TransformStoreDocument_Access is
      This : constant TransformStoreDocument_Access := new TransformStoreDocument;
   begin
      Initialize (This.all, searchRequest);
      return This;
   end Create;

end org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package;


